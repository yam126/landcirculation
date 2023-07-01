using AutoMapper;
using Common;
using LandCirculationDataAccess;
using LandCirculationDataAccess.Models;
using LandCirculationWebApi.Models;
using Microsoft.AspNetCore.Mvc;

namespace LandCirculationWebApi.Controllers
{
    [Route("/large-grain/[action]")]
    public class LargeGrainExcelController : Controller
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
        #endregion

        #region Constructors

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="repository">数据库操作类</param>
        /// <param name="_mapper">AutoMapper参数映射类</param>
        /// <exception cref="ArgumentNullException"></exception>
        public LargeGrainExcelController(IMOIRepository repository, IMapper _mapper)
        {
            m_repository = repository;
            m_mapper = _mapper == null ? throw new ArgumentNullException(nameof(_mapper)) : _mapper;
        }
        #endregion

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="selectedIDStr">选择要导出的编号</param>
        /// <param name="where">查询条件</param>
        /// <returns></returns>
        [HttpPost]
        [HttpGet]
        public IActionResult ExportExcel(
            string selectedIDStr, 
            string where,
            string year = "",
            string plnatArea = "",
            decimal? plnatEndArea = 0,
            decimal? plnatStartArea = 0,
            string plnatAreaStartCondition = "",
            string plnatAreaEndCondition = ""
            ) 
        {
            #region 声明变量

            //ID字符串
            string IDStr = string.Empty;

            //查询条件
            string SqlWhere = string.Empty;

            //查询条件集合
            List<string> whereList = new List<string>();

            //错误消息
            string message = string.Empty;

            //输出文件类型
            string ContentType = "application/vnd.ms-excel";

            //Stream流
            MemoryStream stream = null;

            //excel文件
            Npoi.Mapper.Mapper excelMap = new Npoi.Mapper.Mapper();

            //公司编号信息
            List<LargeGrain> largeGrains = null;

            //导出数据
            List<LargeGrainParameter> exportData = new List<LargeGrainParameter>();
            #endregion

            #region 处理ID字符串查询条件
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
            if (year != null && Utils.StrToInt(year,-1) > 0)
            {
                if (!string.IsNullOrEmpty(where))
                    where += $" and Backup01='{year}' ";
                else
                    where = $" Backup01='{year}' ";
            }
            if (!string.IsNullOrEmpty(selectedIDStr) && selectedIDStr != "null")
            {
                IDStr = "'" + selectedIDStr.Replace("-", "','") + "'";
                if (!string.IsNullOrEmpty(where))
                    where += $" and RecordId in ({IDStr}) ";
                else
                    where = $" RecordId in ({IDStr}) ";
            }
            #endregion

            #region 查询数据
            largeGrains = m_repository.QueryLargeGrain(where, out message);
            if (largeGrains == null || largeGrains.Count <= 0)
            {
                Response.ContentType = "text/html";
                if (!string.IsNullOrEmpty(message))
                    return Content($"公司数据读取出错，原因[{message}]");
                else
                    return Content(string.Empty);
            }
            #endregion

            #region 转换数据
            largeGrains.ForEach(largeGrainInfo => {
                LargeGrainParameter itemData = m_mapper.Map<LargeGrain, LargeGrainParameter>(largeGrainInfo);
                exportData.Add(itemData);
            });
            #endregion

            #region 输出Excel
            Response.ContentType = ContentType;
            stream = new MemoryStream();
            excelMap.Put<LargeGrainParameter>(exportData, "sheet1", false);
            excelMap.Save(stream);
            #endregion

            return File(stream.ToArray(), ContentType);
        }

        /// <summary>
        /// 获得种植面积条件
        /// </summary>
        /// <param name="plnatArea">种植面积</param>
        /// <param name="plnatAreaCondition">条件</param>
        /// <returns></returns>
        private string GetPlnatAreaCondition(decimal? plnatArea, string plnatAreaCondition)
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
    }
}
