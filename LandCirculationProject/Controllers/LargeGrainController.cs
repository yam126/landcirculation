using AutoMapper;
using Common;
using ePioneer.Data.Kernel;
using LandCirculationDataAccess;
using LandCirculationDataAccess.Models;
using LandCirculationWebApi.Models;
using LandCirculationWebApi.Models.Result;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Snowflake.Net;

namespace LandCirculationWebApi.Controllers
{
    /// <summary>
    /// 种粮大户
    /// </summary>
    [Route("api/large-grain")]
    [ApiController]
    public class LargeGrainController : Controller
    {
        #region Fields

        /// <summary>
        /// 数据库操作类
        /// </summary>
        private IMOIRepository m_repository;

        /// <summary>
        /// AutoMapper参数映射类
        /// </summary>
        private IMapper m_mapper;

        /// <summary>
        /// 获取网站路径
        /// </summary>
        private readonly IWebHostEnvironment m_webHostEnvironment;
        #endregion

        #region Constructors

        /// <summary>
        /// 重载构造函数
        /// </summary>
        /// <param name="repository">数据库操作类</param>
        public LargeGrainController(IMOIRepository repository, IMapper _mapper, IWebHostEnvironment webHostEnvironment)
        {
            m_repository = repository;
            m_mapper = _mapper == null ? throw new ArgumentNullException(nameof(_mapper)) : _mapper;
            m_webHostEnvironment = webHostEnvironment;
        }
        #endregion

        #region Get

        /// <summary>
        /// 分页查询
        /// </summary>
        /// <param name="pageIndex">当前页(默认从1开始)</param>
        /// <param name="pageSize">每页记录数(默认每页10条)</param>
        /// <param name="where">查询条件(SQL查询条件,可以为空,为空返回所有数据)</param>
        /// <param name="year">年代编号</param>
        /// <param name="plnatArea">种植面积</param>
        /// <param name="plnatAreaCondition">种植面积条件</param>
        /// <param name="SortField">排序字段(默认创建时间)</param>
        /// <param name="SortMethod">排序方法[DESC|ASC(默认DESC)]</param>
        /// <returns>返回查询结果</returns>
        [HttpGet("page")]
        public async Task<ActionResult<PageResult<LargeGrainParameter>>> GetPage(
            string? where = "",
            int? pageIndex = 1,
            int? pageSize = 10,
            int? year = 0,
            decimal? plnatEndArea = 0,
            decimal? plnatStartArea = 0,
            string plnatAreaStartCondition="",
            string plnatAreaEndCondition = "",
            string sortField = "CreatedTime",
            string sortMethod = "DESC"            
            )
        {
            #region 声明变量

            //总页数
            int pageCount = 0;

            //总记录数
            int totalRecordCount = 0;

            //方法返回错误消息
            string message = string.Empty;

            //错误消息
            string checkMessage = string.Empty;

            //页面返回值
            List<LargeGrain> pageData = null;

            //接口返回值
            List<LargeGrainParameter> pageResultData = new List<LargeGrainParameter>();

            //返回值
            var result = new PageResult<LargeGrainParameter>();
            #endregion

            #region 非空验证
            if (pageIndex == null)
                checkMessage += "当前页、";
            if (pageSize == null)
                checkMessage += "每页记录数、";
            if (!string.IsNullOrEmpty(checkMessage))
            {
                checkMessage = checkMessage.Substring(0, checkMessage.Length - 1);
                result = new PageResult<LargeGrainParameter>()
                {
                    Status = -1,
                    PageCount = 0,
                    RecordCount = 0,
                    Msg = $"非空验证出错，原因[{checkMessage}]",
                    Result = null
                };
                return result;
            }
            #endregion

            #region 有效验证
            if (pageIndex <= 0)
                checkMessage += "当前页不能小于或等于0、";
            if (pageSize <= 0)
                checkMessage += "每页记录数不能小于或等于0、";
            if (!string.IsNullOrEmpty(checkMessage))
            {
                checkMessage = checkMessage.Substring(0, checkMessage.Length - 1);
                result = new PageResult<LargeGrainParameter>()
                {
                    Status = -1,
                    PageCount = 0,
                    RecordCount = 0,
                    Msg = $"有效验证出错，原因[{checkMessage}]",
                    Result = null
                };
                return result;
            }
            #endregion

            #region 查询数据
            if (!string.IsNullOrEmpty(where) && where != "null")
            {
                List<string> sqlWhere = new List<string>();
                sqlWhere.Add($" LargeGrainName like '%{where}%' ");
                sqlWhere.Add($" Village like '%{where}%' ");
                sqlWhere.Add($" IDCard like '%{where}%' ");
                sqlWhere.Add($" ContactMobile like '%{where}%' ");
                sqlWhere.Add($" FamilyFarm like '%{where}%' ");
                sqlWhere.Add($" CoopeRative like '%{where}%' ");
                where = String.Join(" Or ", sqlWhere.ToArray());
            }
            else if (where == "null")
                where = null;
            if (!string.IsNullOrEmpty(plnatAreaStartCondition) && plnatAreaStartCondition != "null" && plnatStartArea != null && plnatStartArea > 0) 
            {
                plnatAreaStartCondition = GetPlnatAreaCondition(plnatStartArea, plnatAreaStartCondition);
                if (!string.IsNullOrEmpty(where) && !string.IsNullOrEmpty(plnatAreaStartCondition))
                    where = $"({where}) and {plnatAreaStartCondition}";
                else
                    where = $" {plnatAreaStartCondition} ";
            }
            if (!string.IsNullOrEmpty(plnatAreaEndCondition) && plnatAreaEndCondition != "null" && plnatEndArea != null && plnatEndArea > 0)
            {
                plnatAreaEndCondition = GetPlnatAreaCondition(plnatEndArea, plnatAreaEndCondition);
                if (!string.IsNullOrEmpty(where) && !string.IsNullOrEmpty(plnatAreaEndCondition))
                    where = $"({where}) and {plnatAreaEndCondition}";
                else
                    where = $" {plnatAreaEndCondition} ";
            }
            if (year != null && year > 0) 
            {
                if (!string.IsNullOrEmpty(where))
                    where += $" and Backup01='{year}' ";
                else
                    where = $" Backup01='{year}' ";
            }
            pageData = m_repository.QueryLargeGrain(
                where == null ? string.Empty : where,
                sortField,
                sortMethod,
                pageSize.GetValueOrDefault(),
                pageIndex.GetValueOrDefault(),
                out totalRecordCount,
                out message
            );
            if (pageData == null || pageData.Count <= 0)
            {
                if (!string.IsNullOrEmpty(message))
                {
                    result = new PageResult<LargeGrainParameter>()
                    {
                        Status = -1,
                        PageCount = 0,
                        RecordCount = 0,
                        Msg = $"查询数据出错，原因[{message}]",
                        Result = null
                    };
                    return result;
                }
            }
            #endregion

            #region 计算总页数
            if (totalRecordCount % pageSize == 0)
                pageCount = Convert.ToInt32(totalRecordCount / pageSize);
            else
                pageCount = Convert.ToInt32(totalRecordCount / pageSize) + 1;
            #endregion

            pageData.ForEach(pageDataItem => {
                var resultDataItem = m_mapper.Map<LargeGrainParameter>(pageDataItem);
                resultDataItem.CreatedTime = pageDataItem.CreatedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss");
                resultDataItem.ModifedTime= pageDataItem.ModifedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss");
                pageResultData.Add(resultDataItem);
            });
            result = new PageResult<LargeGrainParameter>()
            {
                Status = 0,
                PageCount = pageCount,
                RecordCount = totalRecordCount,
                Msg = string.Empty,
                Result = pageResultData.ToArray()
            };
            return result;
        }

        /// <summary>
        /// 年份统计
        /// </summary>
        /// <returns></returns>
        [HttpGet("statistics/year")]
        public async Task<ListResult<LargeGrainStatisticsResult>> largeGrainStatistics() 
        {
            #region 声明变量

            //错误消息
            string message = string.Empty;

            //统计结果
            List<LargeGrainStatisticsResult> statisticsResults = new List<LargeGrainStatisticsResult>();

            //返回值
            ListResult<LargeGrainStatisticsResult> result = null;
            #endregion

            statisticsResults = m_repository.largeGrainStatistics(out message);
            if (statisticsResults == null || statisticsResults.Count <= 0) 
            {
                result = new ListResult<LargeGrainStatisticsResult>() 
                {
                    Status = -1,
                    Msg = $"统计数据读取出错,原因[{message}]",
                    Result = null
                };
                return result;
            }

            result = new ListResult<LargeGrainStatisticsResult>()
            {
                Status = 0,
                Msg = string.Empty,
                Result = statisticsResults
            };
            return result;
        }

        /// <summary>
        /// 村庄年份统计
        /// </summary>
        /// <param name="Year">年份统计</param>
        /// <returns>返回值</returns>
        [HttpGet("statistics/year/village/{Year}/{PlantArea}/{Top}")]
        public async Task<ListResult<VillageStatisticsResult>> villageStatistics(int Year,int Top,int PlantArea)
        {
            #region 声明变量

            //错误消息
            string message = string.Empty;

            //统计结果
            List<VillageStatisticsResult> statisticsResults = new List<VillageStatisticsResult>();

            //返回值
            ListResult<VillageStatisticsResult> result = null;
            #endregion

            statisticsResults = m_repository.villageStatistics(Year,Top,PlantArea,out message);
            if (statisticsResults == null || statisticsResults.Count <= 0)
            {
                if (!string.IsNullOrEmpty(message))
                {
                    result = new ListResult<VillageStatisticsResult>()
                    {
                        Status = -1,
                        Msg = $"统计数据读取出错,原因[{message}]",
                        Result = null
                    };
                }
                else
                {
                    result = new ListResult<VillageStatisticsResult>()
                    {
                        Status = 0,
                        Msg = string.Empty,
                        Result = null
                    };
                }
                return result;
            }

            result = new ListResult<VillageStatisticsResult>()
            {
                Status = 0,
                Msg = string.Empty,
                Result = statisticsResults
            };
            return result;
        }

        /// <summary>
        /// 种粮大户详细统计信息
        /// </summary>
        /// <param name="Year">年份</param>
        /// <param name="Village">村庄</param>
        /// <returns>返回值</returns>
        [HttpGet("statistics/year/village/detail/{Year}/{Village}/{PlantArea}/{Top}")]
        public async Task<ListResult<VillageStatisticsResult>> largeGrainDetailStatistics(int Year,int Top,string Village,int PlantArea) 
        {
            #region 声明变量

            //错误消息
            string message = string.Empty;

            //统计结果
            List<VillageStatisticsResult> statisticsResults = new List<VillageStatisticsResult>();

            //返回值
            ListResult<VillageStatisticsResult> result = null;
            #endregion

            statisticsResults = m_repository.largeGrainDetailStatistics(Year,Top,PlantArea,Village,out message);
            if (statisticsResults == null || statisticsResults.Count <= 0)
            {
                if (!string.IsNullOrEmpty(message))
                {
                    result = new ListResult<VillageStatisticsResult>()
                    {
                        Status = -1,
                        Msg = $"统计数据读取出错,原因[{message}]",
                        Result = null
                    };
                }
                else
                {
                    result = new ListResult<VillageStatisticsResult>()
                    {
                        Status = 0,
                        Msg = string.Empty,
                        Result = null
                    };
                }
                return result;
            }

            result = new ListResult<VillageStatisticsResult>()
            {
                Status = 0,
                Msg = string.Empty,
                Result = statisticsResults
            };
            return result;
        }

        /// <summary>
        /// 获得所有年份
        /// </summary>
        /// <returns></returns>
        [HttpGet("allyear")]
        public async Task<ListResult<string>> getLargeGrainAllYear() 
        {
            string message = string.Empty;
            List<string> allYear=new List<string>();
            ListResult<string> result = null;
            allYear = m_repository.getLargeGrainAllYear(out message);

            if (allYear == null || allYear.Count <= 0)
            {
                result = new ListResult<string>()
                {
                    Status = -1,
                    Msg = $"统计数据读取出错,原因[{message}]",
                    Result = null
                };
                return result;
            }

            result = new ListResult<string>() 
            {
                Status= 0,
                Msg= string.Empty,
                Result=allYear
            };
            return result;
        }
        #endregion

        #region Post

        /// <summary>
        /// 添加数据
        /// </summary>
        /// <param name="parameter">添加参数</param>
        /// <returns>返回结果</returns>        
        [HttpPost]
        public async Task<ActionResult<Result>> AddData([FromBody] LargeGrainParameter parameter)
        {
            return await SaveData("Add", parameter, null);
        }

        /// <summary>
        /// 导入Excel文件
        /// </summary>
        /// <param name="formFile">上传的Excel文件</param>
        /// <returns></returns>
        [HttpPost("importExcel")]
        public async Task<ActionResult<Result>> ImportExcel([FromForm] IFormCollection formData)
        {
            #region 声明变量

            //文件
            IFormFile formFile = null;

            //excel文件
            Npoi.Mapper.Mapper excelMap = null;

            //上传Excel文件
            string uploadFilePath = "uploadExcelFiles";

            //上传文件保存的物理路径
            string realUploadFilePath = string.Empty;

            //文件扩展名
            string fileExtension = "";

            //保存的文件名
            string SaveFileName = "";

            //网站根目录
            string wwwrootPath = "";

            //错误消息
            string message = string.Empty;

            //用户名
            string userName = string.Empty;

            //文件扩展名限制
            string[] limitFileExtension = { "xls", "xlsx" };

            //文件大小MB
            int limitMaxFileSize = 300;

            //返回值
            Result itemResult = null;

            //返回值
            Result result = null;

            IdWorker snowId = new IdWorker(1, 1);
            #endregion

            formFile = (formData == null || formData.Files == null || formData.Files.Count == 0) ? null : formData.Files[0];
            userName = formData["userName"];

            #region 参数验证
            if (formFile == null)
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = "没有上传文件不能导入"
                };
                return result;
            }
            #endregion

            #region 文件验证
            fileExtension = Path.GetExtension(formFile.FileName);
            if (!limitFileExtension.Any(item => item == fileExtension.Replace(".", "").ToLower()))
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = "上传的文件不是Excel文件"
                };
                return result;
            }
            if (formFile.Length > 1024 * 1024 * limitMaxFileSize)
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = $"上传的文件不能超过{limitMaxFileSize}MB"
                };
                return result;
            }
            #endregion

            #region 保存文件
            try
            {
                wwwrootPath = m_webHostEnvironment.ContentRootPath;
                realUploadFilePath = @$"{wwwrootPath}\{uploadFilePath}\";
                if (!Directory.Exists(realUploadFilePath))
                    Directory.CreateDirectory(realUploadFilePath);
                SaveFileName = $"{new IdWorker(1, 1).NextId()}{fileExtension}";
                using (var fileStream = new FileStream($@"{realUploadFilePath}\{SaveFileName}", FileMode.Create))
                {
                    await formFile.CopyToAsync(fileStream);
                }
            }
            catch (Exception ex)
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = $"文件保存出错，原因[{ex.Message}]"
                };
                return result;
            }
            #endregion

            #region 导入文件
            excelMap = new Npoi.Mapper.Mapper($@"{realUploadFilePath}\{SaveFileName}");
            var excelData = excelMap.Take<LargeGrainParameter>("sheet1");
            foreach (var item in excelData)
            {
                item.Value.Created = userName;
                item.Value.Modifer = userName;
                item.Value.CreatedTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                itemResult = await SaveData("Add", item.Value, snowId);
                if (itemResult.Status != 0)
                    message += $"第{item.RowNumber}行导入出错,原因[{itemResult.Msg}]\r\n";
            }
            if (!string.IsNullOrEmpty(message))
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = message
                };
                return result;
            }
            #endregion

            result = new Result()
            {
                Status = 0,
                Msg = string.Empty
            };
            return result;
        }
        #endregion

        #region Put

        /// <summary>
        /// 修改数据
        /// </summary>
        /// <param name="parameter"></param>
        /// <returns></returns>
        [HttpPut("{RecordId}")]
        public async Task<ActionResult<Result>> ModifyData(string RecordId, [FromBody] LargeGrainParameter parameter)
        {
            parameter.RecordId = RecordId;
            return await SaveData("Edit", parameter, null);
        }
        #endregion

        #region Delete

        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="IDStr">数据编号字符串ID的形式[123-456-678]</param>
        /// <returns>是否成功消息</returns>
        [EnableCors("Cors")]
        [HttpDelete("{IDStr}")]
        public async Task<Result> DeleteData(string IDStr)
        {
            #region 声明变量

            //错误消息
            string message = string.Empty;

            //数据库返回消息
            Message dbMessage = null;

            //返回值
            Result result = null;
            #endregion

            if (string.IsNullOrEmpty(IDStr))
            {
                result = new Result()
                {
                    Msg = "参数为空不能删除",
                    Status = -1
                };
            }

            try
            {
                IDStr = "'" + IDStr.Replace("-", "','") + "'";
                dbMessage = await m_repository.DeleteLargeGrain(IDStr);
            }
            catch (Exception ex)
            {
                result = new Result()
                {
                    Msg = $"删除农作物信息报错，原因[{ex.Message}]",
                    Status = -1
                };
                return result;
            }

            result = new Result()
            {
                Msg = string.Empty,
                Status = 0
            };
            return result;
        }
        #endregion

        #region Private

        /// <summary>
        /// 获得种植面积条件
        /// </summary>
        /// <param name="plnatArea">种植面积</param>
        /// <param name="plnatAreaCondition">条件</param>
        /// <returns></returns>
        private string GetPlnatAreaCondition(decimal? plnatArea,string plnatAreaCondition) 
        {
            string result = string.Empty;
            if (!string.IsNullOrEmpty(plnatAreaCondition) && plnatAreaCondition != "null" && plnatArea != null && plnatArea > 0)
            {
                switch (plnatAreaCondition)
                {
                    case "大于":
                        plnatAreaCondition = ">";
                        break;
                    case "等于":
                        plnatAreaCondition = "=";
                        break;
                    case "小于":
                        plnatAreaCondition = "<";
                        break;
                    case "大于等于":
                        plnatAreaCondition = ">=";
                        break;
                    case "小于等于":
                        plnatAreaCondition = "<=";
                        break;
                    case "不等于":
                        plnatAreaCondition = "<>";
                        break;
                    default:
                        plnatAreaCondition = string.Empty;
                        break;
                }
                result = $" PlantingArea{plnatAreaCondition}{plnatArea} ";
            }
            return result;
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="SaveMethod">[Add|Edit]</param>
        /// <param name="parameter">参数</param>
        /// <returns>返回结果</returns>
        private async Task<Result> SaveData(string SaveMethod, LargeGrainParameter parameter, IdWorker snowId) 
        {
            #region 声明和初始化

            //数据库返回值
            Message dbResult = null;

            //返回值
            Result result = null;

            //查询条件
            string SqlWhere = string.Empty;

            //错误消息
            string message = string.Empty;

            //验证消息
            string checkMessage = string.Empty;

            //种粮大户信息表
            LargeGrain saveData =new LargeGrain();
            #endregion

            if (snowId == null)
                snowId = new IdWorker(1, 1);

            #region 非空验证
            if(parameter == null)
            {
                if (parameter == null)
                {
                    result = new Result()
                    {
                        Status = -1,
                        Msg = "参数不能为空"
                    };
                }
                return result;
            }
            if (string.IsNullOrEmpty(SaveMethod))
                checkMessage += "保存方式、";
            if (string.IsNullOrEmpty(parameter.LargeGrainName))
                checkMessage += "种粮大户姓名、";
            if (string.IsNullOrEmpty(parameter.IDCard))
                checkMessage += "身份证、";
            if (!string.IsNullOrEmpty(checkMessage))
            {
                checkMessage = checkMessage.Substring(0, checkMessage.Length - 1);
                result = new Result()
                {
                    Status = -1,
                    Msg = $"非空验证出错，原因[{checkMessage}]不能为空"
                };
                return result;
            }
            #endregion

            #region 保存数据
            if (SaveMethod == "Add")
            {
                saveData = m_mapper.Map<LargeGrain>(parameter);
                saveData.RecordId = snowId.NextId();
                saveData.CreatedTime = DateTime.Now;
                saveData.ModifedTime = DateTime.Now;
                dbResult = await m_repository.InsertLargeGrain(saveData);
            }
            else if (SaveMethod == "Edit")
            {
                saveData = m_mapper.Map<LargeGrain>(parameter);
                saveData.CreatedTime = saveData.CreatedTime;
                saveData.ModifedTime = DateTime.Now;
                SqlWhere = $" RecordId='{saveData.RecordId}' ";
                dbResult = await m_repository.UpdateLargeGrain(new List<LargeGrain>() { saveData }, SqlWhere);
            }
            if (dbResult != null && !dbResult.Successful)
            {
                result = new Result()
                {
                    Status = -1,
                    Msg = $"保存失败，原因[{dbResult.Content}]"
                };
                return result;
            }
            #endregion

            result = new Result()
            {
                Status = 0,
                Msg = string.Empty
            };

            return result;
        }
        #endregion
    }
}
