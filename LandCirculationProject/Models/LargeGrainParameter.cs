using Npoi.Mapper.Attributes;

namespace LandCirculationWebApi.Models
{
    /// <summary>
    /// 种粮大户信息表
    /// </summary>
    [Serializable]
    public partial class LargeGrainParameter
    {
        /// <summary>
        ///编号
        /// </summary>
        public System.String RecordId { get; set; }
        
        /// <summary>
        ///种粮大户姓名
        /// </summary>
        [Column("种粮大户姓名")]
        public System.String LargeGrainName { get; set; }

        /// <summary>
        ///所属村子
        /// </summary>
        [Column("所属村子")]
        public System.String Village { get; set; }

        /// <summary>
        ///身份证
        /// </summary>
        [Column("身份证号")]
        public System.String IDCard { get; set; }

        /// <summary>
        ///联系电话
        /// </summary>
        [Column("联系电话")]
        public System.String ContactMobile { get; set; }

        /// <summary>
        ///种植面积
        /// </summary>
        [Column("种植面积")]
        public System.String PlantingArea { get; set; }

        /// <summary>
        ///家庭农场
        /// </summary>
        [Column("家庭农场")]
        public System.String FamilyFarm { get; set; }

        /// <summary>
        ///合作社
        /// </summary>
        [Column("合作社")]
        public System.String CoopeRative { get; set; }

        /// <summary>
        ///备用字段01
        /// </summary>
        [Column("年份")]
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
        public System.String CreatedTime { get; set; }

        /// <summary>
        ///修改人
        /// </summary>
        public System.String Modifer { get; set; }

        /// <summary>
        ///修改时间
        /// </summary>
        public System.String ModifedTime { get; set; }
    }
}
