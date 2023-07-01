using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess.Models
{
    /// <summary>
    /// 种粮大户详细信息
    /// </summary>
    public class largeGrainDetailStatisticsResult
    {
        /// <summary>
        /// 种植面积统计
        /// </summary>
        public decimal PlantingAreaStatistics { get; set; }

        /// <summary>
        /// 身份证号
        /// </summary>
        public string IDCard { get; set; }

        /// <summary>
        /// 百分比
        /// </summary>
        public string PlantAreaPercentage { get; set; }

        /// <summary>
        /// 种粮大户型姓名
        /// </summary>
        public string LargeGrainName { get; set; }
    }
}
