using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess.Models
{
    /// <summary>
    /// 种粮大户信息表
    /// </summary>
    [Serializable]
    public partial class LargeGrain
    {
        /// <summary>
        ///编号
        /// </summary>
        public System.Int64? RecordId { get; set; }
        /// <summary>
        ///种粮大户姓名
        /// </summary>
        public System.String LargeGrainName { get; set; }
        /// <summary>
        ///所属村子
        /// </summary>
        public System.String Village { get; set; }
        /// <summary>
        ///身份证
        /// </summary>
        public System.String IDCard { get; set; }
        /// <summary>
        ///联系电话
        /// </summary>
        public System.String ContactMobile { get; set; }
        /// <summary>
        ///种植面积
        /// </summary>
        public System.Decimal? PlantingArea { get; set; }
        /// <summary>
        ///家庭农场
        /// </summary>
        public System.String FamilyFarm { get; set; }
        /// <summary>
        ///合作社
        /// </summary>
        public System.String CoopeRative { get; set; }
        /// <summary>
        ///备用字段01
        /// </summary>
        public System.String Backup01 { get; set; }
        /// <summary>
        ///备用字段02
        /// </summary>
        public System.String Backup02 { get; set; }
        /// <summary>
        ///备用字段03
        /// </summary>
        public System.String Backup03 { get; set; }
        /// <summary>
        ///创建人
        /// </summary>
        public System.String Created { get; set; }
        /// <summary>
        ///创建时间
        /// </summary>
        public System.DateTime? CreatedTime { get; set; }
        /// <summary>
        ///修改人
        /// </summary>
        public System.String Modifer { get; set; }
        /// <summary>
        ///修改时间
        /// </summary>
        public System.DateTime? ModifedTime { get; set; }
    }
}
