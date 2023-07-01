using AutoMapper;
using Common;
using ePioneer.Data.Kernel;
using LandCirculationDataAccess;
using LandCirculationDataAccess.Models;
using LandCirculationWebApi.Models;
using LandCirculationWebApi.Models.Result;
using Microsoft.AspNetCore.Mvc;
using Snowflake.Net;
using System.Data;

namespace LandCirculationWebApi.Controllers
{
    [Route("vip-infos")]
    [ApiController]
    public class VipInfoController : ControllerBase
    {
        #region Fields

        /// <summary>
        /// AutoMapper参数映射类
        /// </summary>
        private IMapper m_mapper;

        /// <summary>
        /// 获取网站路径
        /// </summary>
        private readonly IWebHostEnvironment m_webHostEnvironment;

        private readonly IMOIRepository m_repository;

        #endregion

        #region Constructors

        public VipInfoController(IMOIRepository repository, IMapper _mapper, IWebHostEnvironment webHostEnvironment)
        {
            m_repository = repository;
            m_mapper = _mapper == null ? throw new ArgumentNullException(nameof(_mapper)) : _mapper;
            m_webHostEnvironment = webHostEnvironment;
        }

        #endregion

        #region Methods

        #region Get
        /// <summary>
        /// 跟据Id获取种植大户的地块
        /// </summary>
        /// <param name="id">种植大户id</param>
        /// <returns>种植大户</returns>
        [HttpGet("{id}/lands")]
        //[Authorize]
        public async Task<ActionResult<ArrayResult<VipInfoLand>>> GetLandById(Int64 id)
        {
            ArrayResult<VipInfoLand> result = new ArrayResult<VipInfoLand>();
            DataSet ds = await m_repository.ExecuteDataSetAsync($"SELECT * FROM VipInfoLand WITH(NOLOCK) WHERE VipInfoId = {id} ORDER BY RecordId DESC");

            if (ds != null && ds.Tables.Count > 0)
            {
                DataRowCollection rows = ds.Tables[0].Rows;
                VipInfoLand[] array = new VipInfoLand[rows.Count];
                Int32 i = 0;
                foreach (DataRow row in rows)
                {
                    array[i++] = new VipInfoLand
                    {
                        RecordId = Convert.ToInt64(row["RecordId"]),
                        VipInfoId = Convert.ToInt64(row["VipInfoId"]),
                        LngAndLat = row["LngAndLat"].ToString(),
                        LandArea = Convert.ToDecimal(row["LandArea"]),
                        Created = row["Created"].ToString(),
                        CreatedTime = row["CreatedTime"].ToString(),
                        Modified = row["Modifer"].ToString(),
                        ModifiedTime = row["ModifedTime"].ToString()
                    };
                }

                result.Result = array;
                result.Status = 0;
            }
            else
            {
                result.Status = 3;
                result.Msg = "读取数据库表失败";
            }

            return result;
        }

        /// <summary>
        /// 获取全部种植大户的地块
        /// </summary>
        /// <param name="where"> where</param>
        /// <returns>种植大户</returns>
        [HttpGet("vipInfo")]
        //[Authorize]
        public async Task<ActionResult<ArrayResult<VipInfoParameter>>> GetVipInfo(string? vipInfoId)
        {
            ArrayResult<VipInfoParameter> result = new ArrayResult<VipInfoParameter>();
            List<VipInfoParameter> resultData = new List<VipInfoParameter>();
            List<vipInfo> resultDb = new List<vipInfo>();
            string message = string.Empty;
            string where = string.Empty;
            if (!string.IsNullOrEmpty(vipInfoId))
                where = $" vipInfoId='{vipInfoId}' ";
            resultDb = m_repository.QueryVipInfo(where, out message);
            if (resultDb == null || resultDb.Count == 0) 
            {
                if (!string.IsNullOrEmpty(message)) 
                {
                    result = new ArrayResult<VipInfoParameter>() 
                    {
                        Status=-1,
                        Msg=$"读取种粮大户信息出错,原因[{message}]",
                        Result=null
                    };
                    return result;
                }
            }
            resultDb.ForEach(vipInfoItem => {
                VipInfoParameter resultItem = m_mapper.Map<VipInfoParameter>(vipInfoItem);
                resultData.Add(resultItem);
            });
            result = new ArrayResult<VipInfoParameter>()
            {
                Status = 0,
                Msg = string.Empty,
                Result = resultData.ToArray()
            };
            return result;
        }

        #endregion

        #region Post
        /// <summary>
        /// 添加种植大户
        /// </summary>
        /// <param name="VipInfo"></param>
        /// <returns></returns>
        [HttpPost]
        //[Authorize]
        public async Task<ActionResult<Result>> Add([FromBody] VipInfoParameter vipInfo)
        {
            return await SaveData("Add", vipInfo, null);
        }

        /// <summary>
        /// 添加种植大户的地块
        /// </summary>
        /// <param name="VipInfo"></param>
        /// <returns></returns>
        [HttpPost("lands")]
        //[Authorize]
        public async Task<ActionResult<Result>> AddLand([FromBody] AddVipInfoLand vipInfo)
        {
            Result result = new Result();
            vipInfo.RecordId=new IdWorker(1,1).NextId();
            Message msg = await m_repository.AddVipInfoLand(vipInfo);
            if (msg.Successful)
            {
                result.Status = 0;

            }
            else
            {
                result.Status = 2;
                result.Msg = msg.Content;
            }

            return result;
        }

        #endregion

        #region Put
        /// <summary>
        /// 修改种植大户
        /// </summary>
        /// <param name="VipInfo"></param>
        /// <returns></returns>
        [HttpPut]
        //[Authorize]
        public async Task<ActionResult<Result>> UpdateVipInfo(string vipInfoId, [FromBody] VipInfoParameter vipInfo)
        {
            vipInfo.vipInfoId = vipInfoId;
            return await SaveData("Edit", vipInfo, null);
        }

        /// <summary>
        /// 修改种植大户
        /// </summary>
        /// <param name="VipInfo"></param>
        /// <returns></returns>
        [HttpPut("lands")]
        //[Authorize]
        public async Task<ActionResult<Result>> UpdateVipInfoLand([FromBody] UpdateVipInfoLand vipInfo)
        {
            Result result = new Result();
            Message msg = await m_repository.UpdateVipInfoLand(vipInfo);
            if (msg.Successful)
            {
                result.Status = 0;

            }
            else
            {
                result.Status = 2;
                result.Msg = msg.Content;
            }

            return result;
        }
        #endregion

        #region Delete

        /// <summary>
        /// 删除种植大户
        /// </summary>
        /// <param name="id">种植大户id</param>
        /// <returns></returns>
        [HttpDelete("{IDStr}")]
        //[Authorize]
        public async Task<ActionResult<Result>> Delete(string IDStr)
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
                dbMessage = await m_repository.DeleteVipInfo(IDStr);
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

        /// <summary>
        /// 删除种植大户的地块
        /// </summary>
        /// <param name="id">种植大户地块的id</param>
        /// <returns></returns>
        [HttpDelete("{id}/lands")]
        //[Authorize]
        public async Task<ActionResult<Result>> DeleteLand(Int64 id)
        {

            Result result = new Result();
            Message msg = await m_repository.DeleteVipInfoLand(id);
            if (msg.Successful)
            {

                result.Status = 0;
            }
            else
            {
                result.Status = 2;
                result.Msg = msg.Content;
            }

            return result;
        }

        #endregion

        #endregion

        #region Private
        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="SaveMethod">[Add|Edit]</param>
        /// <param name="parameter">参数</param>
        /// <returns>返回结果</returns>
        private async Task<Result> SaveData(string SaveMethod, VipInfoParameter parameter, IdWorker snowId)
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
            vipInfo saveData = new vipInfo();
            #endregion

            if (snowId == null)
                snowId = new IdWorker(1, 1);

            #region 非空验证
            if (parameter == null)
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
            if (string.IsNullOrEmpty(parameter.vipName))
                checkMessage += "种粮大户名称、";
            if (string.IsNullOrEmpty(parameter.circulationPrice))
                checkMessage += "流转价格不能为空、";
            if (!Utils.IsDecimal(parameter.circulationPrice))
                checkMessage += "流转价格非数字";
            if (string.IsNullOrEmpty(parameter.circulationArea))
                checkMessage += "流转面积不能为空、";
            if (!Utils.IsDecimal(parameter.circulationArea))
                checkMessage += "流转面积非数字";
            if (string.IsNullOrEmpty(parameter.Neighborhood))
                checkMessage += "地邻不能为空、";
            if (SaveMethod=="Edit"&&string.IsNullOrEmpty(parameter.vipInfoId))
                checkMessage += "种粮大户编号不能为空、";
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
                saveData = m_mapper.Map<vipInfo>(parameter);
                saveData.vipInfoId = snowId.NextId();
                saveData.CreatedTime = DateTime.Now;
                saveData.ModifedTime = DateTime.Now;
                dbResult = await m_repository.InsertVipInfo(saveData);
            }
            else if (SaveMethod == "Edit")
            {
                saveData = m_mapper.Map<vipInfo>(parameter);
                saveData.CreatedTime = saveData.CreatedTime;
                saveData.ModifedTime = DateTime.Now;
                SqlWhere = $" vipInfoId='{saveData.vipInfoId}' ";
                dbResult = await m_repository.UpdateVipInfo(new List<vipInfo>() { saveData }, SqlWhere);
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
