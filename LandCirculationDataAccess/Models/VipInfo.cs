using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess.Models
{
    /// <summary>
    /// 
    /// </summary>
    [Serializable]
    public partial class vipInfo
    {
        /// <summary>
        ///种粮大户编号
        /// </summary>
        public System.Int64? vipInfoId { get; set; }
        /// <summary>
        ///村庄名称
        /// </summary>
        public System.String villageName { get; set; }
        /// <summary>
        ///种粮大户名称
        /// </summary>
        public System.String vipName { get; set; }
        /// <summary>
        ///流转面积
        /// </summary>
        public System.Decimal? circulationArea { get; set; }
        /// <summary>
        ///流转价格
        /// </summary>
        public System.Decimal? circulationPrice { get; set; }
        /// <summary>
        ///地邻
        /// </summary>
        public System.String Neighborhood { get; set; }
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
