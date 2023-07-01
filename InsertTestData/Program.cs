// See https://aka.ms/new-console-template for more information
using AutoMapper;
using Common;
using LandCirculationDataAccess;
using LandCirculationDataAccess.Models;
using LandCirculationWebApi;
using LandCirculationWebApi.Models;
using Microsoft.Extensions.Configuration;
using System.Text;
using System.Text.Encodings;
using Newtonsoft.Json;
using System.Data;

//添加Excel测试数据
static void InsertExcelTestData(string MOIConnStr) 
{
    string ExcelFilePath = @"E:\workproject\LandCirculation\土地流转汇总（10.10修改）.xlsx";
    Npoi.Mapper.Mapper excelMap = null;
    Snowflake.Net.IdWorker snowId = new Snowflake.Net.IdWorker(1, 1);
    try
    {
        excelMap = new Npoi.Mapper.Mapper(ExcelFilePath);
        var excelData = excelMap.Take<LargeGrainParameter>("sheet1");
        var config = MappingProfile.CreateAutoMap();
        var mapper=new Mapper(config);
        var dbHelper = new MOIRepository(MOIConnStr);
        List<LargeGrain> insertData = new List<LargeGrain>();
        foreach (var excelItem in excelData.ToList()) 
        {
            excelItem.Value.RecordId = snowId.NextId().ToString();
            excelItem.Value.Created = "syszny";
            excelItem.Value.CreatedTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            excelItem.Value.Modifer = "syszny";
            excelItem.Value.ModifedTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            var dbItem = mapper.Map<LargeGrain>(excelItem.Value);
            insertData.Add(dbItem);
        }
        var ReturnMessage = dbHelper.InsertLargeGrain(insertData);
        if (ReturnMessage.Result.Successful)
            Console.WriteLine("添加成功");
        else
            Console.WriteLine($"添加失败,原因[{ReturnMessage.Result.Content}]");
    }
    catch (Exception ex) 
    {
        Console.WriteLine(ex.Message);
    }

}

static void ReadLandJson() 
{
    string ExcelFilePath = @"E:\workproject\LandCirculation\德平镇V1.xls";
    string message = string.Empty;
    DataSet dataSet = NPOIExcelHelper.ExcelToDataTable(ExcelFilePath, true, out message);
    DataTable table = dataSet.Tables[0];
    string jsonContent = string.Empty;
    foreach (DataRow row in table.Rows)
    {
        string jsonObject = "{\"landName\":\"{landName}\",\"Longlat\":{Longlat}}";
        jsonObject = jsonObject.Replace("{landName}", Convert.ToString(row[0]));
        jsonObject = jsonObject.Replace("{Longlat}", Convert.ToString(row[1]));
        jsonContent += jsonObject + ",";
    }
    jsonContent= jsonContent.Substring(0, jsonContent.Length - 1);
    string jsonText=$"[{jsonContent}]";
    Console.WriteLine(jsonText);
    Console.ReadLine();
}

static void Main() 
{
    IConfiguration configuration = new ConfigurationBuilder()
                        .AddJsonFile("appsettings.json")
                        .Build();
    //string MOIConnStr = configuration["ConnectionStrings:MOIConnStr"];
    //string MOIConnStr = "Data Source=DESKTOP-55GUG4F\\SQLSERVER2017;Initial Catalog=cropsTrace;User ID=sa;Password=yamsql126;Encrypt=True;TrustServerCertificate=True";
    string MOIConnStr = "Data Source=DESKTOP-NH96BIF\\MSSQL2017;Initial Catalog=LandCirculationDatabase;User ID=sa;Password=abc123456;Encrypt=True;TrustServerCertificate=True";
    //InsertShowFieldsTestData(MOIConnStr);
    //InsertPumpHouseInfo(MOIConnStr);
    //Console.WriteLine(MOIConnStr);
    //InsertExcelTestData(MOIConnStr);
    ReadLandJson();
    //InsertGrowthInfoTestData(MOIConnStr);
    Console.ReadLine();
}

Main();