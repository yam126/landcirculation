using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess.Models
{
    /// <summary>
    /// 种粮大户统计结果
    /// </summary>
    public class LargeGrainStatisticsResult
    {
        /// <summary>
        /// 种植面积统计
        /// </summary>
        public decimal PlantingAreaStatistics { get; set; }

        /// <summary>
        /// 年份
        /// </summary>
        public int Year { get; set; }
    }
}
