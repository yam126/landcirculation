using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandCirculationDataAccess.Models
{
    public class VipInfoLand
    {
        public Int64 RecordId { get; set; }
        public Int64 VipInfoId { get; set; }
        public string? LngAndLat { get; set; }
        public decimal LandArea { get; set; }
        public string? Created { get; set; }
        public string? CreatedTime { get; set; }
        public string? Modified { get; set; }
        public string? ModifiedTime { get; set; }
        public Int32 CompanyId { get; set; }
    }
    public class AddVipInfoLand
    {
        public Int64 RecordId { get; set; }
        public Int64 VipInfoId { get; set; }
        public string? LngAndLat { get; set; }
        public decimal LandArea { get; set; }
        public string? Created { get; set; }
        public Int32 CompanyId { get; set; }
    }
    public class UpdateVipInfoLand
    {
        public Int64 RecordId { get; set; }
        public Int64 VipInfoId { get; set; }
        public string? LngAndLat { get; set; }
        public decimal LandArea { get; set; }
        public string? Modified { get; set; }
    }
}
