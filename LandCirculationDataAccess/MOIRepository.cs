using Common;
using ePioneer.Data.Kernel;
using LandCirculationDataAccess.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess
{
    public class MOIRepository : BaseDataProvider, IMOIRepository
    {
        #region Fields

        /// <summary>
        /// 连接字符串
        /// </summary>
        private static string m_connectionString;

        /// <summary>
        /// 数据库帮助类
        /// </summary>
        private static DbHelper m_dbHelper = null;
        #endregion

        #region 构造函数

        /// <summary>
        /// 构造函数
        /// </summary>
        public MOIRepository() : base(MOIRepository.m_connectionString)
        {
            CreateDBHelper();
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="connectionString">连接字符串</param>
        public MOIRepository(String connectionString) : base(connectionString)
        {
            if (Database != null)
                m_dbHelper = Database;
        }
        #endregion

        #region Common

        /// <summary>
        /// 分页查询
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="pageIndex">当前页</param>
        /// <param name="pageSize">每页记录数</param>
        /// <param name="where">查询条件</param>
        /// <param name="oderBy">排序字符串</param>
        /// <param name="fields">字段列表</param>
        /// <returns>返回值</returns>
        public Task<PagerSet> GetPagerSetAsync(String tableName, Int32 pageIndex, Int32 pageSize, String where, String oderBy, String[] fields)
        {
            return GetPagerSet2Async(new PagerParameters(tableName, "ORDER BY " + oderBy, "WHERE " + where, pageIndex, pageSize, fields)
            {
                CacherSize = 2
            });
        }

        /// <summary>
        /// 分页方法重载
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="pageIndex">当前页</param>
        /// <param name="pageSize">每页记录数</param>
        /// <param name="where">查询条件</param>
        /// <param name="oderBy">排序字符串</param>
        /// <returns>返回值</returns>
        public Task<PagerSet> GetPagerSetAsync(String tableName, Int32 pageIndex, Int32 pageSize, String where, String orderBy)
        {
            return GetPagerSet2Async(new PagerParameters(tableName, "ORDER BY " + orderBy, "WHERE " + where, pageIndex, pageSize));
        }

        /// <summary>
        /// 异步查询方法(有返回结果)
        /// </summary>
        /// <param name="commandText">SQL字符串</param>
        /// <returns>查询结果</returns>
        public Task<DataSet> ExecuteDataSetAsync(String commandText)
        {
            return m_dbHelper.ExecuteDataSetAsync(CommandType.Text, commandText);
        }

        /// <summary>
        /// 查询方法(有返回结果)
        /// </summary>
        /// <param name="commandText">SQL字符串</param>
        /// <returns>查询结果</returns>
        public DataSet ExecuteDataSet(String commandText)
        {
            return m_dbHelper.ExecuteDataSet(CommandType.Text, commandText);
        }

        /// <summary>
        /// 带参数查询方法(有返回结果)
        /// </summary>
        /// <param name="commandText">SQL字符串</param>
        /// <param name="commandType">SQL语句类型</param>
        /// <param name="sqlparms">参数集合</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public DataSet ExecuteDataSet(string commandText, CommandType commandType, DbParameter[] sqlparms, out string message)
        {
            DataSet result = null;
            message = string.Empty;
            try
            {
                result = m_dbHelper.ExecuteDataSet(commandType, commandText, sqlparms);
            }
            catch (Exception exp)
            {
                message = exp.Message;
            }
            return result;
        }

        /// <summary>
        /// 异步查询方法(增删改语句)
        /// </summary>
        /// <param name="commandText">SQL字符串</param>
        /// <returns>查询结果</returns>
        public Task<Int32> ExecuteNonQueryAsync(String commandText)
        {
            return m_dbHelper.ExecuteNonQueryAsync(commandText);
        }

        /// <summary>
        /// 查询方法(增删改查语句)
        /// </summary>
        /// <param name="commandText">SQL字符串</param>
        /// <returns>查询结果</returns>
        public Int32 ExecuteNonQuery(String commandText)
        {
            return m_dbHelper.ExecuteNonQuery(commandText);
        }

        public Int32 ExecuteNonQuery(CommandType commandType, String commandText, params DbParameter[] commandParameters)
        {
            return m_dbHelper.ExecuteNonQuery(commandType, commandText, commandParameters);
        }
        #endregion

        #region LargeGrain 基础方法

        /// <summary>
        /// 读取数据行到model
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="dr">数据行</param>
        private void ReadDataRow(ref LargeGrain model, DataRow dr)
        {
            //编号
            model.RecordId = Convert.IsDBNull(dr["RecordId"]) ? 0 : Convert.ToInt64(dr["RecordId"]);

            //种粮大户姓名
            model.LargeGrainName = Convert.IsDBNull(dr["LargeGrainName"]) ? string.Empty : Convert.ToString(dr["LargeGrainName"]).Trim();

            //所属村子
            model.Village = Convert.IsDBNull(dr["Village"]) ? string.Empty : Convert.ToString(dr["Village"]).Trim();

            //身份证
            model.IDCard = Convert.IsDBNull(dr["IDCard"]) ? string.Empty : Convert.ToString(dr["IDCard"]).Trim();

            //联系电话
            model.ContactMobile = Convert.IsDBNull(dr["ContactMobile"]) ? string.Empty : Convert.ToString(dr["ContactMobile"]).Trim();

            //种植面积
            model.PlantingArea = Convert.IsDBNull(dr["PlantingArea"]) ? 0 : Convert.ToDecimal(dr["PlantingArea"]);

            //家庭农场
            model.FamilyFarm = Convert.IsDBNull(dr["FamilyFarm"]) ? string.Empty : Convert.ToString(dr["FamilyFarm"]).Trim();

            //合作社
            model.CoopeRative = Convert.IsDBNull(dr["CoopeRative"]) ? string.Empty : Convert.ToString(dr["CoopeRative"]).Trim();

            //备用字段01
            model.Backup01 = Convert.IsDBNull(dr["Backup01"]) ? string.Empty : Convert.ToString(dr["Backup01"]).Trim();

            //备用字段02
            model.Backup02 = Convert.IsDBNull(dr["Backup02"]) ? string.Empty : Convert.ToString(dr["Backup02"]).Trim();

            //备用字段03
            model.Backup03 = Convert.IsDBNull(dr["Backup03"]) ? string.Empty : Convert.ToString(dr["Backup03"]).Trim();

            //创建人
            model.Created = Convert.IsDBNull(dr["Created"]) ? string.Empty : Convert.ToString(dr["Created"]).Trim();

            //创建时间
            model.CreatedTime = Convert.IsDBNull(dr["CreatedTime"]) ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(dr["CreatedTime"]);

            //修改人
            model.Modifer = Convert.IsDBNull(dr["Modifer"]) ? string.Empty : Convert.ToString(dr["Modifer"]).Trim();

            //修改时间
            model.ModifedTime = Convert.IsDBNull(dr["ModifedTime"]) ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(dr["ModifedTime"]);
        }

        ///<summary>
        ///检查是否空值
        ///</summary>
        private void CheckEmpty(ref List<LargeGrain> lists)
        {
            for (int i = 0; i < lists.Count; i++)
            {
                //编号
                lists[i].RecordId = lists[i].RecordId == null ? Convert.ToInt64(0) : Convert.ToInt64(lists[i].RecordId);
                //种粮大户姓名
                lists[i].LargeGrainName = string.IsNullOrEmpty(lists[i].LargeGrainName) ? string.Empty : Convert.ToString(lists[i].LargeGrainName).Trim();
                //所属村子
                lists[i].Village = string.IsNullOrEmpty(lists[i].Village) ? string.Empty : Convert.ToString(lists[i].Village).Trim();
                //身份证
                lists[i].IDCard = string.IsNullOrEmpty(lists[i].IDCard) ? string.Empty : Convert.ToString(lists[i].IDCard).Trim();
                //联系电话
                lists[i].ContactMobile = string.IsNullOrEmpty(lists[i].ContactMobile) ? string.Empty : Convert.ToString(lists[i].ContactMobile).Trim();
                //种植面积
                lists[i].PlantingArea = lists[i].PlantingArea == null ? Convert.ToDecimal(0) : Convert.ToDecimal(lists[i].PlantingArea);
                //家庭农场
                lists[i].FamilyFarm = string.IsNullOrEmpty(lists[i].FamilyFarm) ? string.Empty : Convert.ToString(lists[i].FamilyFarm).Trim();
                //合作社
                lists[i].CoopeRative = string.IsNullOrEmpty(lists[i].CoopeRative) ? string.Empty : Convert.ToString(lists[i].CoopeRative).Trim();
                //备用字段01
                lists[i].Backup01 = string.IsNullOrEmpty(lists[i].Backup01) ? string.Empty : Convert.ToString(lists[i].Backup01).Trim();
                //备用字段02
                lists[i].Backup02 = string.IsNullOrEmpty(lists[i].Backup02) ? string.Empty : Convert.ToString(lists[i].Backup02).Trim();
                //备用字段03
                lists[i].Backup03 = string.IsNullOrEmpty(lists[i].Backup03) ? string.Empty : Convert.ToString(lists[i].Backup03).Trim();
                //创建人
                lists[i].Created = string.IsNullOrEmpty(lists[i].Created) ? string.Empty : Convert.ToString(lists[i].Created).Trim();
                //创建时间
                lists[i].CreatedTime = lists[i].CreatedTime == null ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(lists[i].CreatedTime.GetValueOrDefault());
                //修改人
                lists[i].Modifer = string.IsNullOrEmpty(lists[i].Modifer) ? string.Empty : Convert.ToString(lists[i].Modifer).Trim();
                //修改时间
                lists[i].ModifedTime = lists[i].ModifedTime == null ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(lists[i].ModifedTime.GetValueOrDefault());
            }
        }

        ///<summary>
        ///检查是否超过长度
        ///</summary>
        ///<param name="lists">数据集</param>
        ///<param name="message">错误消息</param>
        private void CheckMaxLength(ref List<LargeGrain> lists, out string message)
        {
            #region 声明变量

            //错误消息
            message = string.Empty;

            //超过的长度
            int OutLength = 0;
            #endregion

            #region 循环验证长度
            for (int i = 0; i < lists.Count; i++)
            {
                if (!string.IsNullOrEmpty(lists[i].LargeGrainName))
                {
                    if (lists[i].LargeGrainName.Length > 50)
                    {
                        OutLength = lists[i].LargeGrainName.Length - 50;
                        message += "字段名[LargeGrainName]描述[种粮大户姓名]超长、字段最长[50]实际" + lists[i].LargeGrainName.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Village))
                {
                    if (lists[i].Village.Length > 50)
                    {
                        OutLength = lists[i].Village.Length - 50;
                        message += "字段名[Village]描述[所属村子]超长、字段最长[50]实际" + lists[i].Village.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].IDCard))
                {
                    if (lists[i].IDCard.Length > 50)
                    {
                        OutLength = lists[i].IDCard.Length - 50;
                        message += "字段名[IDCard]描述[身份证]超长、字段最长[50]实际" + lists[i].IDCard.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].ContactMobile))
                {
                    if (lists[i].ContactMobile.Length > 50)
                    {
                        OutLength = lists[i].ContactMobile.Length - 50;
                        message += "字段名[ContactMobile]描述[联系电话]超长、字段最长[50]实际" + lists[i].ContactMobile.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].FamilyFarm))
                {
                    if (lists[i].FamilyFarm.Length > 50)
                    {
                        OutLength = lists[i].FamilyFarm.Length - 50;
                        message += "字段名[FamilyFarm]描述[家庭农场]超长、字段最长[50]实际" + lists[i].FamilyFarm.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].CoopeRative))
                {
                    if (lists[i].CoopeRative.Length > 50)
                    {
                        OutLength = lists[i].CoopeRative.Length - 50;
                        message += "字段名[CoopeRative]描述[合作社]超长、字段最长[50]实际" + lists[i].CoopeRative.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Backup01))
                {
                    if (lists[i].Backup01.Length > 170)
                    {
                        OutLength = lists[i].Backup01.Length - 170;
                        message += "字段名[Backup01]描述[备用字段01]超长、字段最长[170]实际" + lists[i].Backup01.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Backup02))
                {
                    if (lists[i].Backup02.Length > 170)
                    {
                        OutLength = lists[i].Backup02.Length - 170;
                        message += "字段名[Backup02]描述[备用字段02]超长、字段最长[170]实际" + lists[i].Backup02.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Backup03))
                {
                    if (lists[i].Backup03.Length > 170)
                    {
                        OutLength = lists[i].Backup03.Length - 170;
                        message += "字段名[Backup03]描述[备用字段03]超长、字段最长[170]实际" + lists[i].Backup03.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Created))
                {
                    if (lists[i].Created.Length > 50)
                    {
                        OutLength = lists[i].Created.Length - 50;
                        message += "字段名[Created]描述[创建人]超长、字段最长[50]实际" + lists[i].Created.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Modifer))
                {
                    if (lists[i].Modifer.Length > 50)
                    {
                        OutLength = lists[i].Modifer.Length - 50;
                        message += "字段名[Modifer]描述[修改人]超长、字段最长[50]实际" + lists[i].Modifer.Length + "超过长度" + OutLength + ",";
                    }
                }
            }
            #endregion

            if (!string.IsNullOrEmpty(message)) message = message.Substring(0, message.Length - 1);
        }

        ///<summary>
        ///赋值数据行
        ///</summary>
        ///<param name="model">GSK货品移动表C21A</param>
        private DbParameter[] SetSqlParameter(LargeGrain model)
        {
            #region 赋值Sql参数
            DbParameter[] result = new DbParameter[]
            {
                    //编号
                     Database.MakeInParam("RecordId",model.RecordId),
                    //种粮大户姓名
                     Database.MakeInParam("LargeGrainName",model.LargeGrainName),
                    //所属村子
                     Database.MakeInParam("Village",model.Village),
                    //身份证
                     Database.MakeInParam("IDCard",model.IDCard),
                    //联系电话
                     Database.MakeInParam("ContactMobile",model.ContactMobile),
                    //种植面积
                     Database.MakeInParam("PlantingArea",model.PlantingArea),
                    //家庭农场
                     Database.MakeInParam("FamilyFarm",model.FamilyFarm),
                    //合作社
                     Database.MakeInParam("CoopeRative",model.CoopeRative),
                    //备用字段01
                     Database.MakeInParam("Backup01",model.Backup01),
                    //备用字段02
                     Database.MakeInParam("Backup02",model.Backup02),
                    //备用字段03
                     Database.MakeInParam("Backup03",model.Backup03),
                    //创建人
                     Database.MakeInParam("Created",model.Created),
                    //创建时间
                     Database.MakeInParam("CreatedTime",model.CreatedTime),
                    //修改人
                     Database.MakeInParam("Modifer",model.Modifer),
                    //修改时间
                     Database.MakeInParam("ModifedTime",model.ModifedTime),
            };
            #endregion

            return result;
        }

        ///<summary>
        ///生成插入Sql语句
        ///</summary>
        ///<param name="lists">数据List</param>
        ///<returns>插入Sql语句字符串数组</returns>
        private List<string> MarkInsertSql(List<LargeGrain> lists)
        {
            List<string> result = new List<string>();
            foreach (LargeGrain model in lists)
            {
                #region 拼写Sql语句
                string Sql = "insert into LargeGrain(";
                Sql += "RecordId,";
                Sql += "LargeGrainName,";
                Sql += "Village,";
                Sql += "IDCard,";
                Sql += "ContactMobile,";
                Sql += "PlantingArea,";
                Sql += "FamilyFarm,";
                Sql += "CoopeRative,";
                Sql += "Backup01,";
                Sql += "Backup02,";
                Sql += "Backup03,";
                Sql += "Created,";
                Sql += "CreatedTime,";
                Sql += "Modifer,";
                Sql += "ModifedTime";
                Sql += ") values(";
                Sql += "'" + FilteSQLStr(model.RecordId) + "',";
                Sql += "'" + FilteSQLStr(model.LargeGrainName) + "',";
                Sql += "'" + FilteSQLStr(model.Village) + "',";
                Sql += "'" + FilteSQLStr(model.IDCard) + "',";
                Sql += "'" + FilteSQLStr(model.ContactMobile) + "',";
                Sql += "'" + FilteSQLStr(model.PlantingArea) + "',";
                Sql += "'" + FilteSQLStr(model.FamilyFarm) + "',";
                Sql += "'" + FilteSQLStr(model.CoopeRative) + "',";
                Sql += "'" + FilteSQLStr(model.Backup01) + "',";
                Sql += "'" + FilteSQLStr(model.Backup02) + "',";
                Sql += "'" + FilteSQLStr(model.Backup03) + "',";
                Sql += "'" + FilteSQLStr(model.Created) + "',";
                Sql += "CAST('" + model.CreatedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME),";
                Sql += "'" + FilteSQLStr(model.Modifer) + "',";
                Sql += "CAST('" + model.ModifedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME)";
                Sql += ")";
                #endregion
                result.Add(Sql);
            }
            return result;
        }

        ///<summary>
        ///生成更新Sql语句
        ///</summary>
        ///<param name="lists">数据List</param>
        ///<param name="SqlWhere">更新条件</param>
        ///<returns>更新Sql语句字符串数组</returns>
        private List<string> MarkUpdateSql(List<LargeGrain> lists, string SqlWhere)
        {
            List<string> result = new List<string>();
            foreach (LargeGrain model in lists)
            {
                #region 拼写Sql语句
                string Sql = "update LargeGrain set ";
                Sql += "RecordId='" + FilteSQLStr(model.RecordId) + "',";
                Sql += "LargeGrainName='" + FilteSQLStr(model.LargeGrainName) + "',";
                Sql += "Village='" + FilteSQLStr(model.Village) + "',";
                Sql += "IDCard='" + FilteSQLStr(model.IDCard) + "',";
                Sql += "ContactMobile='" + FilteSQLStr(model.ContactMobile) + "',";
                Sql += "PlantingArea='" + FilteSQLStr(model.PlantingArea) + "',";
                Sql += "FamilyFarm='" + FilteSQLStr(model.FamilyFarm) + "',";
                Sql += "CoopeRative='" + FilteSQLStr(model.CoopeRative) + "',";
                Sql += "Backup01='" + FilteSQLStr(model.Backup01) + "',";
                Sql += "Backup02='" + FilteSQLStr(model.Backup02) + "',";
                Sql += "Backup03='" + FilteSQLStr(model.Backup03) + "',";
                Sql += "Created='" + FilteSQLStr(model.Created) + "',";
                Sql += "CreatedTime=CAST('" + model.CreatedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME),";
                Sql += "Modifer='" + FilteSQLStr(model.Modifer) + "',";
                Sql += "ModifedTime=CAST('" + model.ModifedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME)";
                if (!string.IsNullOrEmpty(SqlWhere))
                    Sql += " Where " + SqlWhere;
                #endregion
                result.Add(Sql);
            }
            return result;
        }

        /// <summary>
        /// 过滤不安全的字符串
        /// </summary>
        /// <param name="Str">要过滤的值</param>
        /// <returns>返回结果</returns>
        private static string FilteSQLStr(object str)
        {
            if (str == null)
                return string.Empty;
            if (IsNumeric(str))
                return Convert.ToString(str);
            string Str = Convert.ToString(str);
            if (!string.IsNullOrEmpty(Str))
            {
                Str = Str.Replace("'", "");
                Str = Str.Replace("\"", "");
                Str = Str.Replace("&", "&amp");
                Str = Str.Replace("<", "&lt");
                Str = Str.Replace(">", "&gt");

                Str = Str.Replace("delete", "");
                Str = Str.Replace("update", "");
                Str = Str.Replace("insert", "");
            }
            return Str;
        }

        /// <summary>
        /// 判断object是否数字
        /// </summary>
        /// <param name="AObject">要判断的Object</param>
        /// <returns>是否数字</returns>       
        private static bool IsNumeric(object AObject)
        {
            return AObject is sbyte || AObject is byte ||
                AObject is short || AObject is ushort ||
                AObject is int || AObject is uint ||
                AObject is long || AObject is ulong ||
                AObject is double || AObject is char ||
                AObject is decimal || AObject is float ||
                AObject is double;
        }
        #endregion

        #region LargeGrain 增删改查

        #region 增加数据

        /// <summary>
        /// 单条增加
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="message">消息</param>
        /// <returns>添加条数</returns>
        public async Task<Message> InsertLargeGrain(LargeGrain model)
        {
            #region 声明和初始化

            //错误消息
            string message = string.Empty;

            //返回值
            Message result = null;

            //存储过程参数
            List<DbParameter> parameters = null;
            #endregion

            if (model != null)
            {
                try
                {
                    parameters = SetSqlParameter(model).ToList();
                    result = await MessageHelper.GetMessageAsync(m_dbHelper, "Create_LargeGrain", parameters);
                }
                catch (Exception ex)
                {
                    result = new Message(false, ex.Message);
                }
            }
            else
            {
                result = new Message(false, "参数为空不能添加");
            }
            if (result == null)
                result = new Message(true, string.Empty);
            return result;
        }


        /// <summary>
        /// 批量添加
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="message">错误消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertLargeGrain(List<LargeGrain> lists)
        {
            int DbState = -1;
            Task<Message> result = null;
            if (lists == null)
                return new Task<Message>(() => new Message(false, "参数为空不能添加"));
            CheckEmpty(ref lists);
            List<string> sqls = this.MarkInsertSql(lists);
            try
            {
                DbState = ExecuteNonQuery(string.Join(';', sqls.ToArray()));
            }
            catch (Exception ex)
            {
                result = new Task<Message>(() => new Message(false, ex.Message));
            }
            if (result == null)
            {
                result = new Task<Message>(() => new Message(true, string.Empty));
            }
            return result;
        }
        #endregion

        #region 修改方法

        /// <summary>
        /// 单条修改
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateLargeGrain(LargeGrain model, string SqlWhere, out string message)
        {
            message = string.Empty;
            List<DbParameter> sqlparms = this.SetSqlParameter(model).ToList<DbParameter>();
            sqlparms.Add(Database.MakeInParam("SqlWhere", SqlWhere));
            Task<Message> result = null;
            int DbState = -1;
            try
            {
                DbState = ExecuteNonQuery(CommandType.StoredProcedure, "Update_LargeGrain", sqlparms.ToArray());
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Task<Message>(() => new Message(false, ex.Message));
            }
            if (result == null)
            {
                result = new Task<Message>(() => new Message(true, string.Empty));
            }
            return result;
        }

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>修改条数</returns>
        public async Task<Message> UpdateLargeGrain(List<LargeGrain> lists, string SqlWhere)
        {
            Message result = null;
            int DbState = -1;
            string message = string.Empty;
            CheckEmpty(ref lists);
            List<string> sqls = this.MarkUpdateSql(lists, SqlWhere);
            try
            {
                DbState = ExecuteNonQuery(CommandType.Text, string.Join(';', sqls.ToArray()));
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Message(false, ex.Message);
            }
            if (result == null)
            {
                result = new Message(true, string.Empty);
            }
            return result;
        }
        #endregion

        #region 查询方法

        /// <summary>
        /// 查询单表方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<LargeGrain> QueryLargeGrain(string SqlWhere, out string message)
        {
            message = string.Empty;
            List<LargeGrain> result = new List<LargeGrain>();
            DataTable dt = null;
            DataSet ds = null;
            DbParameter[] sqlparms = new DbParameter[] {
                 m_dbHelper.MakeInParam("SqlWhere",SqlWhere)
            };
            if (string.IsNullOrEmpty(SqlWhere))
            {
                sqlparms = new DbParameter[] {
                    m_dbHelper.MakeInParam("SqlWhere",null)
                };
            }
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.StoredProcedure, "Query_LargeGrain", sqlparms);
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            #region 非空检查
            if (ds == null)
                return result;
            if (ds.Tables == null || ds.Tables.Count == 0)
                return result;
            dt = ds.Tables[0];
            if (dt == null)
                return result;
            if (dt.Rows.Count == 0)
                return result;
            #endregion
            foreach (DataRow dr in dt.Rows)
            {
                LargeGrain model = new LargeGrain();
                this.ReadDataRow(ref model, dr);
                result.Add(model);
            }
            return result;
        }

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
        public List<LargeGrain> QueryLargeGrain(string SqlWhere, string SortField, string SortMethod, int PageSize, int CurPage, out int PageCount, out string message)
        {
            message = string.Empty;
            PageCount = 0;
            DataTable dt = null;
            DataSet ds = null;
            List<LargeGrain> result = new List<LargeGrain>();
            if (string.IsNullOrEmpty(SqlWhere))
                SqlWhere = null;
            DbParameter[] sqlparm = new DbParameter[] {
                m_dbHelper.MakeInParam("StartRow",((CurPage - 1) * PageSize + 1)),
                m_dbHelper.MakeInParam("EndRow",(CurPage * PageSize)),
                m_dbHelper.MakeOutParam("TotalNumber",typeof(System.Int32)),
                m_dbHelper.MakeInParam("SortMethod",SortMethod),
                m_dbHelper.MakeInParam("SortField",SortField),
                m_dbHelper.MakeInParam("SqlWhere",SqlWhere)
            };
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.StoredProcedure, "Query_LargeGrain_Page", sqlparm);
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            #region 非空检查
            if (ds == null)
                return result;
            if (ds.Tables == null || ds.Tables.Count == 0)
                return result;
            dt = ds.Tables[0];
            if (dt == null)
                return result;
            if (dt.Rows.Count == 0)
                return result;
            #endregion
            PageCount = Convert.ToInt32(sqlparm[2].Value);
            foreach (DataRow dr in dt.Rows)
            {
                LargeGrain model = new LargeGrain();
                this.ReadDataRow(ref model, dr);
                result.Add(model);
            }
            return result;
        }
        
        /// <summary>
        /// 种粮大户统计(柱状图数据)
        /// </summary>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<LargeGrainStatisticsResult> largeGrainStatistics(out string message) 
        {
            List<LargeGrainStatisticsResult> result = new List<LargeGrainStatisticsResult>();
            message=string.Empty;
            DataTable dt = null;
            DataSet ds = null;
            decimal PlantingArea = 0.00M;
            int Year = 0;
            string sql = "select sum(PlantingArea),Backup01 from LargeGrain group by Backup01";
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.Text, sql, null);
                #region 非空检查
                if (ds == null)
                    return result;
                if (ds.Tables == null || ds.Tables.Count == 0)
                    return result;
                dt = ds.Tables[0];
                if (dt == null)
                    return result;
                if (dt.Rows.Count == 0)
                    return result;
                #endregion
                foreach (DataRow dr in dt.Rows) 
                {
                    PlantingArea = Utils.StrToDecimal(Convert.ToString(dr[0]));
                    Year = Utils.StrToInt(Convert.ToString(dr[1]),-1);
                    result.Add(new LargeGrainStatisticsResult() 
                    {
                         PlantingAreaStatistics = PlantingArea,
                         Year = Year
                    });
                }
            }
            catch (Exception ex) 
            {
                message= ex.Message;
            }
            return result;
        }

        /// <summary>
        /// 村庄统计
        /// </summary>
        /// <param name="Year">年份</param>
        /// <param name="Top">限制取几条</param>
        /// <param name="PlantArea">种植面积</param>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<VillageStatisticsResult> villageStatistics(int Year,int Top,int PlantArea, out string message) 
        {
            List<VillageStatisticsResult> result = new List<VillageStatisticsResult>();
            message = string.Empty;
            DataTable dt = null;
            DataSet ds = null;
            decimal totalPlantArea = 0.00M;
            decimal PlantingArea = 0.00M;
            string Village = string.Empty;
            string where = string.Empty;
            List<string> SqlWhere = new List<string>();
            string sql = $@"select [Top] * from(select 
                               sum(PlantingArea) StatisticsResult,
                               Village 
                           from LargeGrain [year] group by Village) as lg 
                           [where] 
                           ";
            try
            {
                if (PlantArea > 0)
                {
                    switch (PlantArea) 
                    {
                        case 100:
                            SqlWhere.Add($" lg.StatisticsResult<100 ");
                            break;
                        case 200:
                            SqlWhere.Add($" lg.StatisticsResult>100 and lg.StatisticsResult<200 ");
                            break;
                        case 300:
                            SqlWhere.Add($" lg.StatisticsResult>200 and lg.StatisticsResult<300 ");
                            break;
                        case 400:
                            SqlWhere.Add($" lg.StatisticsResult>300 and lg.StatisticsResult<400 ");
                            break;
                        case 500:
                            SqlWhere.Add($" lg.StatisticsResult>400 and lg.StatisticsResult<500 ");
                            break;
                        case 600:
                            SqlWhere.Add($" lg.StatisticsResult>600 ");
                            break;
                    }
                    
                }
                if (Year > 0)
                    sql = sql.Replace("[year]", $" where Backup01='{Year}'");
                else
                    sql = sql.Replace("[year]", "");
                if (Top > 0)
                    sql = sql.Replace("[Top]", $" Top {Top} ");
                else
                    sql = sql.Replace("[Top]", "");
                if (SqlWhere.Count > 0)
                    where = " where "+string.Join(" and ", SqlWhere.ToArray());
                sql = sql.Replace("[where]", where);
                ds = m_dbHelper.ExecuteDataSet(CommandType.Text, sql, null);
                #region 非空检查
                if (ds == null)
                    return result;
                if (ds.Tables == null || ds.Tables.Count == 0)
                    return result;
                dt = ds.Tables[0];
                if (dt == null)
                    return result;
                if (dt.Rows.Count == 0)
                    return result;
                #endregion
                foreach (DataRow dr in dt.Rows)
                {
                    PlantingArea = Utils.StrToDecimal(Convert.ToString(dr[0]));
                    Village = Convert.ToString(Utils.GetDataRow(dr, "Village"));
                    totalPlantArea += PlantingArea;
                    result.Add(new VillageStatisticsResult()
                    {
                        PlantingAreaStatistics = PlantingArea,
                        Village = string.IsNullOrEmpty(Village) ? string.Empty : Village.Trim()
                    });
                }
                if (result.Count > 0)
                {
                    result = result.OrderByDescending(item => item.PlantingAreaStatistics).ToList();
                    Percentage(ref result, totalPlantArea);
                }
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return result;
        }

        /// <summary>
        /// 种粮大户详细统计
        /// </summary>
        /// <param name="Year">年份</param>
        /// <param name="Top">取前几个</param>
        /// <param name="PlantArea">种植面积</param>
        /// <param name="Village">村庄</param>
        /// <param name="message">错误消息</param>
        /// <returns>统计结果</returns>
        public List<VillageStatisticsResult> largeGrainDetailStatistics(int Year,int Top,int PlantArea, string Village, out string message) 
        {
            List<VillageStatisticsResult> result = new List<VillageStatisticsResult>();
            message = string.Empty;
            DataTable dt = null;
            DataSet ds = null;
            decimal totalPlantArea = 0;
            decimal PlantingArea = 0.00M;
            string LargeGrainName = string.Empty;
            string IDCard = string.Empty;
            List<string> SqlWhere = new List<string>();
            string where = string.Empty;
            string sql = $@"select [Top] * from(select sum(lg.PlantingArea) StatisticsResult,
                                   lg.LargeGrainName,
                                   lg.IDCard
                            from LargeGrain lg [year] [Village]                          
                            group by lg.LargeGrainName,lg.IDCard) as lg 
                            [where]
                            order by StatisticsResult desc";
            if (Year > 0)
                sql = sql.Replace("[year]", $" where lg.Backup01='{Year}'");
            else
                sql = sql.Replace("[year]", "");
            if (Top > 0)
                sql = sql.Replace("[Top]", $" Top {Top} ");
            else
                sql = sql.Replace("[Top]", "");
            if (!string.IsNullOrEmpty(Village)&& Year > 0)
                sql=sql.Replace("[Village]",$" and Trim(lg.Village) like '%{Village}%'");
            else if (!string.IsNullOrEmpty(Village) && Year <=0)
                sql = sql.Replace("[Village]", $" where Trim(lg.Village) like '%{Village}%'");
            else if (string.IsNullOrEmpty(Village) && Year<=0)
                sql = sql.Replace("[Village]", "");
            if (PlantArea > 0)
            {
                switch (PlantArea)
                {
                    case 100:
                        SqlWhere.Add($" lg.StatisticsResult<100 ");
                        break;
                    case 200:
                        SqlWhere.Add($" lg.StatisticsResult>100 and lg.StatisticsResult<200 ");
                        break;
                    case 300:
                        SqlWhere.Add($" lg.StatisticsResult>200 and lg.StatisticsResult<300 ");
                        break;
                    case 400:
                        SqlWhere.Add($" lg.StatisticsResult>300 and lg.StatisticsResult<400 ");
                        break;
                    case 500:
                        SqlWhere.Add($" lg.StatisticsResult>400 and lg.StatisticsResult<500 ");
                        break;
                    case 600:
                        SqlWhere.Add($" lg.StatisticsResult>600 ");
                        break;
                }
            }
            if(SqlWhere.Count > 0)
                where = " where "+string.Join(" and ",SqlWhere.ToArray());
            sql = sql.Replace("[where]",where);
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.Text, sql, null);
                #region 非空检查
                if (ds == null)
                    return result;
                if (ds.Tables == null || ds.Tables.Count == 0)
                    return result;
                dt = ds.Tables[0];
                if (dt == null)
                    return result;
                if (dt.Rows.Count == 0)
                    return result;
                #endregion
                foreach (DataRow dr in dt.Rows)
                {
                    PlantingArea = Utils.StrToDecimal(Convert.ToString(dr[0]));
                    LargeGrainName = Convert.ToString(dr[1]);
                    IDCard = Convert.ToString(dr[2]);
                    totalPlantArea += PlantingArea;
                    result.Add(new VillageStatisticsResult()
                    {
                        PlantingAreaStatistics = PlantingArea,
                        IDCard = IDCard,
                        Village = LargeGrainName
                    });
                }
                if (result.Count > 0) 
                {
                    result = result.OrderByDescending(item => item.PlantingAreaStatistics).ToList();
                    Percentage(ref result, totalPlantArea);
                }
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return result;
        }

        /// <summary>
        /// 获得数据的年份
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        public List<string> getLargeGrainAllYear(out string message) 
        {
            List<string> result = new List<string>();
            message = string.Empty;
            string sql = "select Backup01 from LargeGrain group by Backup01 order by Backup01 desc";
            DataTable dt = null;
            DataSet ds = null;
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.Text, sql, null);
                #region 非空检查
                if (ds == null)
                    return result;
                if (ds.Tables == null || ds.Tables.Count == 0)
                    return result;
                dt = ds.Tables[0];
                if (dt == null)
                    return result;
                if (dt.Rows.Count == 0)
                    return result;
                #endregion
                foreach (DataRow dr in dt.Rows)
                {
                    if(!Convert.IsDBNull(dr[0]))
                       result.Add(Convert.ToString(dr[0]));
                }
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return result;
        }
        #endregion

        #region 删除方法

        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="IDStr">编号字符串</param>
        /// <returns>返回消息</returns>
        public async Task<Message> DeleteLargeGrain(string IDStr)
        {
            #region 声明和初始化

            //错误消息
            string message = string.Empty;

            //返回值
            Message result = null;

            //SQL语句
            string sql = string.Empty;

            //数据库状态
            int DbState = -1;
            #endregion

            //初始化SQL语句
            sql = $" delete from LargeGrain where RecordId in ({IDStr}) ";

            #region 执行SQL语句
            try
            {
                DbState = ExecuteNonQuery(CommandType.Text, sql);
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Message(false, ex.Message);
            }
            #endregion

            if (result == null)
                result = new Message(true, string.Empty);

            return result;
        }
        #endregion

        #endregion

        #region vipInfo 增删改查

        #region 增加数据

        /// <summary>
        /// 单条增加
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="message">消息</param>
        /// <returns>添加条数</returns>
        public async Task<Message> InsertVipInfo(vipInfo model)
        {
            #region 声明和初始化

            //错误消息
            string message = string.Empty;

            //返回值
            Message result = null;

            //存储过程参数
            List<DbParameter> parameters = null;
            #endregion

            if (model != null)
            {
                try
                {
                    parameters = SetSqlParameter(model).ToList();
                    result = await MessageHelper.GetMessageAsync(m_dbHelper, "Create_vipInfo", parameters);
                }
                catch (Exception ex)
                {
                    result = new Message(false, ex.Message);
                }
            }
            else
            {
                result = new Message(false, "参数为空不能添加");
            }
            if (result == null)
                result = new Message(true, string.Empty);
            return result;
        }


        /// <summary>
        /// 批量添加
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="message">错误消息</param>
        /// <returns>添加条数</returns>
        public Task<Message> InsertVipInfo(List<vipInfo> lists)
        {
            int DbState = -1;
            Task<Message> result = null;
            if (lists == null)
                return new Task<Message>(() => new Message(false, "参数为空不能添加"));
            CheckEmpty(ref lists);
            List<string> sqls = this.MarkInsertSql(lists);
            try
            {
                DbState = ExecuteNonQuery(string.Join(';', sqls.ToArray()));
            }
            catch (Exception ex)
            {
                result = new Task<Message>(() => new Message(false, ex.Message));
            }
            if (result == null)
            {
                result = new Task<Message>(() => new Message(true, string.Empty));
            }
            return result;
        }
        #endregion

        #region 修改方法

        /// <summary>
        /// 单条修改
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">消息</param>
        /// <returns>修改条数</returns>
        public Task<Message> UpdateVipInfo(vipInfo model, string SqlWhere, out string message)
        {
            message = string.Empty;
            List<DbParameter> sqlparms = this.SetSqlParameter(model).ToList<DbParameter>();
            sqlparms.Add(Database.MakeInParam("SqlWhere", SqlWhere));
            Task<Message> result = null;
            int DbState = -1;
            try
            {
                DbState = ExecuteNonQuery(CommandType.StoredProcedure, "Update_vipInfo", sqlparms.ToArray());
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Task<Message>(() => new Message(false, ex.Message));
            }
            if (result == null)
            {
                result = new Task<Message>(() => new Message(true, string.Empty));
            }
            return result;
        }

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="lists">批量数据</param>
        /// <param name="SqlWhere">更新条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>修改条数</returns>
        public async Task<Message> UpdateVipInfo(List<vipInfo> lists, string SqlWhere)
        {
            Message result = null;
            int DbState = -1;
            string message = string.Empty;
            CheckEmpty(ref lists);
            List<string> sqls = this.MarkUpdateSql(lists, SqlWhere);
            try
            {
                DbState = ExecuteNonQuery(CommandType.Text, string.Join(';', sqls.ToArray()));
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Message(false, ex.Message);
            }
            if (result == null)
            {
                result = new Message(true, string.Empty);
            }
            return result;
        }
        #endregion

        #region 查询方法

        /// <summary>
        /// 查询单表方法
        /// </summary>
        /// <param name="SqlWhere">查询条件</param>
        /// <param name="message">错误消息</param>
        /// <returns>查询结果</returns>
        public List<vipInfo> QueryVipInfo(string SqlWhere, out string message)
        {
            message = string.Empty;
            List<vipInfo> result = new List<vipInfo>();
            DataTable dt = null;
            DataSet ds = null;
            DbParameter[] sqlparms = new DbParameter[] {
                 m_dbHelper.MakeInParam("SqlWhere",SqlWhere)
            };
            if (string.IsNullOrEmpty(SqlWhere))
            {
                sqlparms = new DbParameter[] {
                    m_dbHelper.MakeInParam("SqlWhere",null)
                };
            }
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.StoredProcedure, "Query_vipInfo", sqlparms);
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            #region 非空检查
            if (ds == null)
                return result;
            if (ds.Tables == null || ds.Tables.Count == 0)
                return result;
            dt = ds.Tables[0];
            if (dt == null)
                return result;
            if (dt.Rows.Count == 0)
                return result;
            #endregion
            foreach (DataRow dr in dt.Rows)
            {
                vipInfo model = new vipInfo();
                this.ReadDataRow(ref model, dr);
                result.Add(model);
            }
            return result;
        }

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
        public List<LargeGrain> QueryVipInfo(string SqlWhere, string SortField, string SortMethod, int PageSize, int CurPage, out int PageCount, out string message)
        {
            message = string.Empty;
            PageCount = 0;
            DataTable dt = null;
            DataSet ds = null;
            List<LargeGrain> result = new List<LargeGrain>();
            if (string.IsNullOrEmpty(SqlWhere))
                SqlWhere = null;
            DbParameter[] sqlparm = new DbParameter[] {
                m_dbHelper.MakeInParam("StartRow",((CurPage - 1) * PageSize + 1)),
                m_dbHelper.MakeInParam("EndRow",(CurPage * PageSize)),
                m_dbHelper.MakeOutParam("TotalNumber",typeof(System.Int32)),
                m_dbHelper.MakeInParam("SortMethod",SortMethod),
                m_dbHelper.MakeInParam("SortField",SortField),
                m_dbHelper.MakeInParam("SqlWhere",SqlWhere)
            };
            try
            {
                ds = m_dbHelper.ExecuteDataSet(CommandType.StoredProcedure, "Query_vipInfo_Page", sqlparm);
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            #region 非空检查
            if (ds == null)
                return result;
            if (ds.Tables == null || ds.Tables.Count == 0)
                return result;
            dt = ds.Tables[0];
            if (dt == null)
                return result;
            if (dt.Rows.Count == 0)
                return result;
            #endregion
            PageCount = Convert.ToInt32(sqlparm[2].Value);
            foreach (DataRow dr in dt.Rows)
            {
                LargeGrain model = new LargeGrain();
                this.ReadDataRow(ref model, dr);
                result.Add(model);
            }
            return result;
        }
        #endregion

        #region 删除方法

        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="IDStr">编号字符串</param>
        /// <returns>返回消息</returns>
        public async Task<Message> DeleteVipInfo(string IDStr)
        {
            #region 声明和初始化

            //错误消息
            string message = string.Empty;

            //返回值
            Message result = null;

            //SQL语句
            string sql = string.Empty;

            //数据库状态
            int DbState = -1;
            #endregion

            //初始化SQL语句
            sql = $" delete from vipInfo where vipInfoId in ({IDStr}) ";

            #region 执行SQL语句
            try
            {
                DbState = ExecuteNonQuery(CommandType.Text, sql);
            }
            catch (Exception ex)
            {
                message = ex.Message;
                result = new Message(false, ex.Message);
            }
            #endregion

            if (result == null)
                result = new Message(true, string.Empty);

            return result;
        }
        #endregion

        #endregion

        #region vipInfo 基础方法

        #region 基础方法

        /// <summary>
        /// 读取数据行到model
        /// </summary>
        /// <param name="model">model</param>
        /// <param name="dr">数据行</param>
        private void ReadDataRow(ref vipInfo model, DataRow dr)
        {
            //种粮大户编号
            model.vipInfoId = Convert.IsDBNull(dr["vipInfoId"]) ? 0 : Convert.ToInt64(dr["vipInfoId"]);
            //村庄名称
            model.villageName = Convert.IsDBNull(dr["villageName"]) ? string.Empty : Convert.ToString(dr["villageName"]).Trim();
            //种粮大户名称
            model.vipName = Convert.IsDBNull(dr["vipName"]) ? string.Empty : Convert.ToString(dr["vipName"]).Trim();
            //流转面积
            model.circulationArea = Convert.IsDBNull(dr["circulationArea"]) ? 0 : Convert.ToDecimal(dr["circulationArea"]);
            //流转价格
            model.circulationPrice = Convert.IsDBNull(dr["circulationPrice"]) ? 0 : Convert.ToDecimal(dr["circulationPrice"]);
            //地邻
            model.Neighborhood = Convert.IsDBNull(dr["Neighborhood"]) ? string.Empty : Convert.ToString(dr["Neighborhood"]).Trim();
            //创建人
            model.Created = Convert.IsDBNull(dr["Created"]) ? string.Empty : Convert.ToString(dr["Created"]).Trim();
            //创建时间
            model.CreatedTime = Convert.IsDBNull(dr["CreatedTime"]) ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(dr["CreatedTime"]);
            //修改人
            model.Modifer = Convert.IsDBNull(dr["Modifer"]) ? string.Empty : Convert.ToString(dr["Modifer"]).Trim();
            //修改时间
            model.ModifedTime = Convert.IsDBNull(dr["ModifedTime"]) ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(dr["ModifedTime"]);
        }

        ///<summary>
        ///检查是否空值
        ///</summary>
        private void CheckEmpty(ref List<vipInfo> lists)
        {
            for (int i = 0; i < lists.Count; i++)
            {
                //种粮大户编号
                lists[i].vipInfoId = lists[i].vipInfoId == null ? Convert.ToInt64(0) : Convert.ToInt64(lists[i].vipInfoId);
                //村庄名称
                lists[i].villageName = string.IsNullOrEmpty(lists[i].villageName) ? string.Empty : Convert.ToString(lists[i].villageName).Trim();
                //种粮大户名称
                lists[i].vipName = string.IsNullOrEmpty(lists[i].vipName) ? string.Empty : Convert.ToString(lists[i].vipName).Trim();
                //流转面积
                lists[i].circulationArea = lists[i].circulationArea == null ? Convert.ToDecimal(0) : Convert.ToDecimal(lists[i].circulationArea);
                //流转价格
                lists[i].circulationPrice = lists[i].circulationPrice == null ? Convert.ToDecimal(0) : Convert.ToDecimal(lists[i].circulationPrice);
                //地邻
                lists[i].Neighborhood = string.IsNullOrEmpty(lists[i].Neighborhood) ? string.Empty : Convert.ToString(lists[i].Neighborhood).Trim();
                //创建人
                lists[i].Created = string.IsNullOrEmpty(lists[i].Created) ? string.Empty : Convert.ToString(lists[i].Created).Trim();
                //创建时间
                lists[i].CreatedTime = lists[i].CreatedTime == null ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(lists[i].CreatedTime.GetValueOrDefault());
                //修改人
                lists[i].Modifer = string.IsNullOrEmpty(lists[i].Modifer) ? string.Empty : Convert.ToString(lists[i].Modifer).Trim();
                //修改时间
                lists[i].ModifedTime = lists[i].ModifedTime == null ? (DateTime)SqlDateTime.MinValue : Convert.ToDateTime(lists[i].ModifedTime.GetValueOrDefault());
            }
        }

        ///<summary>
        ///检查是否超过长度
        ///</summary>
        ///<param name="lists">数据集</param>
        ///<param name="message">错误消息</param>
        private void CheckMaxLength(ref List<vipInfo> lists, out string message)
        {
            #region 声明变量

            //错误消息
            message = string.Empty;

            //超过的长度
            int OutLength = 0;
            #endregion

            #region 循环验证长度
            for (int i = 0; i < lists.Count; i++)
            {
                if (!string.IsNullOrEmpty(lists[i].villageName))
                {
                    if (lists[i].villageName.Length > 170)
                    {
                        OutLength = lists[i].villageName.Length - 170;
                        message += "字段名[villageName]描述[村庄名称]超长、字段最长[170]实际" + lists[i].villageName.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].vipName))
                {
                    if (lists[i].vipName.Length > 80)
                    {
                        OutLength = lists[i].vipName.Length - 80;
                        message += "字段名[vipName]描述[种粮大户名称]超长、字段最长[80]实际" + lists[i].vipName.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Neighborhood))
                {
                    if (lists[i].Neighborhood.Length > 50)
                    {
                        OutLength = lists[i].Neighborhood.Length - 50;
                        message += "字段名[Neighborhood]描述[地邻]超长、字段最长[50]实际" + lists[i].Neighborhood.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Created))
                {
                    if (lists[i].Created.Length > 50)
                    {
                        OutLength = lists[i].Created.Length - 50;
                        message += "字段名[Created]描述[创建人]超长、字段最长[50]实际" + lists[i].Created.Length + "超过长度" + OutLength + ",";
                    }
                }
                if (!string.IsNullOrEmpty(lists[i].Modifer))
                {
                    if (lists[i].Modifer.Length > 50)
                    {
                        OutLength = lists[i].Modifer.Length - 50;
                        message += "字段名[Modifer]描述[修改人]超长、字段最长[50]实际" + lists[i].Modifer.Length + "超过长度" + OutLength + ",";
                    }
                }
            }
            #endregion

            if (!string.IsNullOrEmpty(message)) message = message.Substring(0, message.Length - 1);
        }

        ///<summary>
        ///赋值数据行
        ///</summary>
        ///<param name="model">数据行model</param>
        public DbParameter[] SetSqlParameter(vipInfo model)
        {
            #region 赋值Sql参数
            DbParameter[] result = new DbParameter[]
            {
                    //种粮大户编号
                     Database.MakeInParam("vipInfoId",model.vipInfoId),
     
                    //村庄名称
                     Database.MakeInParam("villageName",string.IsNullOrEmpty(model.villageName)?string.Empty:FilteSQLStr(Convert.ToString(model.villageName))),
                    
                     //种粮大户名称
                     Database.MakeInParam("vipName",string.IsNullOrEmpty(model.vipName)?string.Empty:FilteSQLStr(Convert.ToString(model.vipName))),
                    
                     //流转面积
                     Database.MakeInParam("circulationArea",model.circulationArea==0?0:Convert.ToDecimal(model.circulationArea)),
                    
                     //流转价格
                     Database.MakeInParam("circulationPrice",model.circulationPrice==0?0:Convert.ToDecimal(model.circulationPrice)),
                    
                     //地邻
                     Database.MakeInParam("Neighborhood",string.IsNullOrEmpty(model.Neighborhood)?string.Empty:FilteSQLStr(Convert.ToString(model.Neighborhood))),
                                                  
                    //创建人
                     Database.MakeInParam("Created",model.Created),
                    //创建时间
                     Database.MakeInParam("CreatedTime",model.CreatedTime),
                    //修改人
                     Database.MakeInParam("Modifer",model.Modifer),
                    //修改时间
                     Database.MakeInParam("ModifedTime",model.ModifedTime)
            };
            #endregion

            return result;
        }

        ///<summary>
        ///生成插入Sql语句
        ///</summary>
        ///<param name="lists">数据List</param>
        ///<returns>插入Sql语句字符串数组</returns>
        private List<string> MarkInsertSql(List<vipInfo> lists)
        {
            List<string> result = new List<string>();
            foreach (vipInfo model in lists)
            {
                #region 拼写Sql语句
                string Sql = "insert into vipInfo(";
                Sql += "vipInfoId,";
                Sql += "villageName,";
                Sql += "vipName,";
                Sql += "circulationArea,";
                Sql += "circulationPrice,";
                Sql += "Neighborhood,";
                Sql += "Created,";
                Sql += "CreatedTime,";
                Sql += "Modifer,";
                Sql += "ModifedTime";
                Sql += ") values(";
                Sql += "'" + FilteSQLStr(model.vipInfoId) + "',";
                Sql += "'" + FilteSQLStr(model.villageName) + "',";
                Sql += "'" + FilteSQLStr(model.vipName) + "',";
                Sql += "'" + FilteSQLStr(model.circulationArea) + "',";
                Sql += "'" + FilteSQLStr(model.circulationPrice) + "',";
                Sql += "'" + FilteSQLStr(model.Neighborhood) + "',";
                Sql += "'" + FilteSQLStr(model.Created) + "',";
                Sql += "CAST('" + model.CreatedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME),";
                Sql += "'" + FilteSQLStr(model.Modifer) + "',";
                Sql += "CAST('" + model.ModifedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME)";
                Sql += ")";
                #endregion
                result.Add(Sql);
            }
            return result;
        }

        ///<summary>
        ///生成更新Sql语句
        ///</summary>
        ///<param name="lists">数据List</param>
        ///<param name="SqlWhere">更新条件</param>
        ///<returns>更新Sql语句字符串数组</returns>
        private List<string> MarkUpdateSql(List<vipInfo> lists, string SqlWhere)
        {
            List<string> result = new List<string>();
            foreach (vipInfo model in lists)
            {
                #region 拼写Sql语句
                string Sql = "update vipInfo set ";
                Sql += "vipInfoId='" + FilteSQLStr(model.vipInfoId) + "',";
                Sql += "villageName='" + FilteSQLStr(model.villageName) + "',";
                Sql += "vipName='" + FilteSQLStr(model.vipName) + "',";
                Sql += "circulationArea='" + FilteSQLStr(model.circulationArea) + "',";
                Sql += "circulationPrice='" + FilteSQLStr(model.circulationPrice) + "',";
                Sql += "Neighborhood='" + FilteSQLStr(model.Neighborhood) + "',";
                Sql += "Created='" + FilteSQLStr(model.Created) + "',";
                Sql += "CreatedTime=CAST('" + model.CreatedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME),";
                Sql += "Modifer='" + FilteSQLStr(model.Modifer) + "',";
                Sql += "ModifedTime=CAST('" + model.ModifedTime.GetValueOrDefault().ToString("yyyy-MM-dd HH:mm:ss") + "' AS DATETIME)";
                if (!string.IsNullOrEmpty(SqlWhere))
                    Sql += " Where " + SqlWhere;
                #endregion
                result.Add(Sql);
            }
            return result;
        }
        #endregion
        #endregion

        #region VipInfoLand 地块

        public Task<Message> UpdateVipInfoLand(UpdateVipInfoLand vipInfo)
        {
            return MessageHelper.GetMessageAsync(Database, "UpdateVipInfoLand", new List<DbParameter>
            {
                Database.MakeInParam("Id",                  vipInfo.RecordId),
                Database.MakeInParam("VipInfoId",             vipInfo.VipInfoId ),
                Database.MakeInParam("LngAndLat",            vipInfo.LngAndLat),
                Database.MakeInParam("LandArea",             vipInfo.LandArea),
                Database.MakeInParam("Modified",             vipInfo.Modified),
                Database.MakeOutParam("strErrorDescribe",       typeof(String), 127)
            });
        }

        public Task<Message> AddVipInfoLand(AddVipInfoLand vipInfo)
        {
            return MessageHelper.GetMessageAsync(Database, "AddVipInfoLand", new List<DbParameter>
            {
                Database.MakeInParam("recordId", vipInfo.RecordId),
                Database.MakeInParam("VipInfoId",vipInfo.VipInfoId),
                Database.MakeInParam("LngAndLat",vipInfo.LngAndLat),
                Database.MakeInParam("LandArea",vipInfo.LandArea),
                Database.MakeInParam("Created",              vipInfo.Created),
                Database.MakeInParam("CompanyId",            vipInfo.CompanyId),
                Database.MakeOutParam("strErrorDescribe",    typeof(String), 127)
            });
        }

        public Task<Message> DeleteVipInfoLand(Int64 id)
        {
            return MessageHelper.GetMessageAsync(Database, "DeleteVipInfoLand", new List<DbParameter>
            {
                Database.MakeInParam("Id", id),
                Database.MakeOutParam("strErrorDescribe", typeof(String), 127)
            });
        }

        #endregion

        #region Private

        private void Percentage(ref List<VillageStatisticsResult> villages,decimal totalPlantArea) 
        {
            for(var i = 0; i < villages.Count; i++) { 
                var item = villages[i];
                decimal PlantAreaPercentage = (item.PlantingAreaStatistics / totalPlantArea) * 100;
                if (PlantAreaPercentage < 100)
                {
                    if (PlantAreaPercentage * 10 < 100)
                        item.PlantAreaPercentage = (PlantAreaPercentage * 10).ToString("0.00");
                    else
                        //item.PlantAreaPercentage = PlantAreaPercentage.ToString("0.00");
                        item.PlantAreaPercentage = "100";
                }
                else if(i==0)
                    //item.PlantAreaPercentage = PlantAreaPercentage.ToString("0.00");
                    item.PlantAreaPercentage = "100";
                if (i != 0 && Convert.ToDecimal(item.PlantAreaPercentage) >= Convert.ToDecimal(villages[i - 1].PlantAreaPercentage)) 
                {
                    if (Utils.StrToDecimal(villages[i - 1].PlantAreaPercentage) > 0)
                        item.PlantAreaPercentage = (Convert.ToDecimal(villages[i - 1].PlantAreaPercentage) - 10).ToString("0.00");
                    else
                        item.PlantAreaPercentage = "0.00";
                }
                villages[i] = item;
            };
        }

        private void CreateDBHelper()
        {
            IConfiguration configuration = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json")
                .Build();
            m_connectionString = configuration["ConnectionStrings:MOIConnStr"];
            m_dbHelper = new DbHelper(m_connectionString);
        }
        #endregion
    }
}
