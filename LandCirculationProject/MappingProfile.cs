using AutoMapper;
using Common;
using LandCirculationDataAccess.Models;
using LandCirculationWebApi.Models;

namespace LandCirculationWebApi
{

    public class MappingProfile : Profile
    {
        /// <summary>
        /// 构造函数(用于添加需要映射的类对应关系)
        /// </summary>
        public MappingProfile() 
        {
            #region 种粮大户参数转换
            CreateMap<LargeGrainParameter, LargeGrain>()
                .ForMember(target => target.RecordId, map => map.MapFrom(source => string.IsNullOrEmpty(source.RecordId) ? 0 : Convert.ToInt64(source.RecordId)))
                .ForMember(target => target.LargeGrainName, map => map.MapFrom(source => string.IsNullOrEmpty(source.LargeGrainName) ? string.Empty : Convert.ToString(source.LargeGrainName).Trim()))
                .ForMember(target => target.Village, map => map.MapFrom(source => string.IsNullOrEmpty(source.Village) ? string.Empty : Convert.ToString(source.Village).Trim()))
                .ForMember(target => target.IDCard, map => map.MapFrom(source => string.IsNullOrEmpty(source.IDCard) ? string.Empty : Convert.ToString(source.IDCard).Trim()))
                .ForMember(target => target.ContactMobile, map => map.MapFrom(source => string.IsNullOrEmpty(source.ContactMobile) ? string.Empty : Convert.ToString(source.ContactMobile).Trim()))
                .ForMember(target => target.PlantingArea, map => map.MapFrom(source => Utils.StrToDecimal(source.PlantingArea, 0.00M)))
                .ForMember(target => target.FamilyFarm, map => map.MapFrom(source => string.IsNullOrEmpty(source.FamilyFarm) ? string.Empty : Convert.ToString(source.FamilyFarm).Trim()))
                .ForMember(target => target.CoopeRative, map => map.MapFrom(source => string.IsNullOrEmpty(source.CoopeRative) ? string.Empty : Convert.ToString(source.CoopeRative).Trim()))
                .ForMember(target => target.Backup01, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup01) ? string.Empty : Convert.ToString(source.Backup01).Trim()))
                .ForMember(target => target.Backup02, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup02) ? string.Empty : Convert.ToString(source.Backup02).Trim()))
                .ForMember(target => target.Backup03, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup03) ? string.Empty : Convert.ToString(source.Backup03).Trim()))
                .ForMember(target => target.Created, map => map.MapFrom(source => string.IsNullOrEmpty(source.Created) ? string.Empty : Convert.ToString(source.Created).Trim()))
                .ForMember(target => target.CreatedTime, map => map.MapFrom(source => Utils.StrToDateTime(source.CreatedTime)))
                .ForMember(target => target.Modifer, map => map.MapFrom(source => string.IsNullOrEmpty(source.Modifer) ? string.Empty : Convert.ToString(source.Modifer).Trim()))
                .ForMember(target => target.ModifedTime, map => map.MapFrom(source => Utils.StrToDateTime(source.ModifedTime)))
                .ReverseMap();
            #endregion
        }

        public static MapperConfiguration CreateAutoMap() 
        {
            return new MapperConfiguration(cfg=>cfg.CreateMap<LargeGrainParameter, LargeGrain>()
                .ForMember(target => target.RecordId, map => map.MapFrom(source => string.IsNullOrEmpty(source.RecordId) ? 0 : Convert.ToInt64(source.RecordId)))
                .ForMember(target => target.LargeGrainName, map => map.MapFrom(source => string.IsNullOrEmpty(source.LargeGrainName) ? string.Empty : Convert.ToString(source.LargeGrainName).Trim()))
                .ForMember(target => target.Village, map => map.MapFrom(source => string.IsNullOrEmpty(source.Village) ? string.Empty : Convert.ToString(source.Village).Trim()))
                .ForMember(target => target.IDCard, map => map.MapFrom(source => string.IsNullOrEmpty(source.IDCard) ? string.Empty : Convert.ToString(source.IDCard).Trim()))
                .ForMember(target => target.ContactMobile, map => map.MapFrom(source => string.IsNullOrEmpty(source.ContactMobile) ? string.Empty : Convert.ToString(source.ContactMobile).Trim()))
                .ForMember(target => target.PlantingArea, map => map.MapFrom(source => Utils.StrToDecimal(source.PlantingArea, 0.00M)))
                .ForMember(target => target.FamilyFarm, map => map.MapFrom(source => string.IsNullOrEmpty(source.FamilyFarm) ? string.Empty : Convert.ToString(source.FamilyFarm).Trim()))
                .ForMember(target => target.CoopeRative, map => map.MapFrom(source => string.IsNullOrEmpty(source.CoopeRative) ? string.Empty : Convert.ToString(source.CoopeRative).Trim()))
                .ForMember(target => target.Backup01, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup01) ? string.Empty : Convert.ToString(source.Backup01).Trim()))
                .ForMember(target => target.Backup02, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup02) ? string.Empty : Convert.ToString(source.Backup02).Trim()))
                .ForMember(target => target.Backup03, map => map.MapFrom(source => string.IsNullOrEmpty(source.Backup03) ? string.Empty : Convert.ToString(source.Backup03).Trim()))
                .ForMember(target => target.Created, map => map.MapFrom(source => string.IsNullOrEmpty(source.Created) ? string.Empty : Convert.ToString(source.Created).Trim()))
                .ForMember(target => target.CreatedTime, map => map.MapFrom(source => Utils.StrToDateTime(source.CreatedTime)))
                .ForMember(target => target.Modifer, map => map.MapFrom(source => string.IsNullOrEmpty(source.Modifer) ? string.Empty : Convert.ToString(source.Modifer).Trim()))
                .ForMember(target => target.ModifedTime, map => map.MapFrom(source => Utils.StrToDateTime(source.ModifedTime)))
                .ReverseMap());
        }
    }
}
