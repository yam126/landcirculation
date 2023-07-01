using ePioneer.Data.Kernel;
using LandCirculationDataAccess.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess
{
    public interface IMOIRepository
    {
        #region Common
        public Task<PagerSet> GetPagerSetAsync(String tableName, Int32 pageIndex, Int32 pageSize, String where, String oderBy, String[] fields);

        public Task<PagerSet> GetPagerSetAsync(String tableName, Int32 pageIndex, Int32 pageSize, String where, String orderBy);

        public Task<DataSet> ExecuteDataSetAsync(String commandText);

        public DataSet ExecuteDataSet(String commandText);

        public Task<Int32> ExecuteNonQueryAsync(String commandText);

        public Int32 ExecuteNonQuery(String commandText);

        public Int32 ExecuteNonQuery(CommandType commandType, String commandText, params DbParameter[] commandParameters);
        #endregion

        #region LargeGrain 增删改查

        #region 增加数据

        /// <summary>
        /// 单条增加
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="message">消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertLargeGrain(LargeGrain model);

        /// <summary>
        /// 批量添加
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="message">错误消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertLargeGrain(List<LargeGrain> lists);
        #endregion

        #region 修改方法

        /// <summary>
        /// 单条修改
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateLargeGrain(LargeGrain model, string SqlWhere, out string message);

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateLargeGrain(List<LargeGrain> lists, string SqlWhere);
        #endregion

        #region 查询方法

        /// <summary>
        /// 查询单表方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<LargeGrain> QueryLargeGrain(string SqlWhere, out string message);

        /// <summary>
        /// 分页查询方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="SortField">排序字段名</param>
        /// <param name="SortMethod">排序方法[ASC|DESC]</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="CurPage">当前页</param>
        /// <param name="PageCount">总页数</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<LargeGrain> QueryLargeGrain(string SqlWhere, string SortField, string SortMethod, int PageSize, int CurPage, out int PageCount, out string message);

        /// <summary>
        /// 种粮大户统计(柱状图数据)
        /// </summary>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<LargeGrainStatisticsResult> largeGrainStatistics(out string message);

        /// <summary>
        /// 村庄统计
        /// </summary>
        /// <param name="Year">年份</param>
        /// <param name="Top">取前几个</param>
        /// <param name="PlantArea">种植面积</param>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<VillageStatisticsResult> villageStatistics(int Year,int Top,int PlantArea, out string message);

        /// <summary>
        /// 种粮大户详细统计
        /// </summary>
        /// <param name="Year">年份</param>
        /// <param name="Top">取前几个</param>
        /// <param name="PlantArea">种植面积</param>
        /// <param name="Village">村庄</param>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<VillageStatisticsResult> largeGrainDetailStatistics(int Year,int Top,int PlantArea, string Village, out string message);

        /// <summary>
        /// 获得数据的年份
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        public List<string> getLargeGrainAllYear(out string message);
        #endregion

        #region 删除方法
        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="IDStr">编号字符串</param>
        /// <returns>返回消息</returns>
        public Task<Message> DeleteLargeGrain(string IDStr);
        #endregion

        #endregion

        #region VipInfo 增删改查

        #region 增加数据

        /// <summary>
        /// 单条增加
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="message">消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertVipInfo(vipInfo model);

        /// <summary>
        /// 批量添加
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="message">错误消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertVipInfo(List<vipInfo> lists);
        #endregion

        #region 修改方法

        /// <summary>
        /// 单条修改
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateVipInfo(vipInfo model, string SqlWhere, out string message);

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateVipInfo(List<vipInfo> lists, string SqlWhere);
        #endregion

        #region 查询方法

        /// <summary>
        /// 查询单表方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<vipInfo> QueryVipInfo(string SqlWhere, out string message);

        /// <summary>
        /// 分页查询方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="SortField">排序字段名</param>
        /// <param name="SortMethod">排序方法[ASC|DESC]</param>
        /// <param name="PageSize">每页记录数</param>
        /// <param name="CurPage">当前页</param>
        /// <param name="PageCount">总页数</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<LargeGrain> QueryVipInfo(string SqlWhere, string SortField, string SortMethod, int PageSize, int CurPage, out int PageCount, out string message);
        #endregion

        #region 删除方法
        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="IDStr">编号字符串</param>
        /// <returns>返回消息</returns>
        public Task<Message> DeleteVipInfo(string IDStr);
        #endregion

        #endregion

        #region VipInfoLand 地块

        Task<Message> AddVipInfoLand(AddVipInfoLand vipInfo);

        Task<Message> UpdateVipInfoLand(UpdateVipInfoLand vipInfo);

        Task<Message> DeleteVipInfoLand(Int64 id);

        #endregion
    }
}
