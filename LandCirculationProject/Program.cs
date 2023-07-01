using IdentityModel.AspNetCore.OAuth2Introspection;
using LandCirculationDataAccess;
using Microsoft.OpenApi.Models;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

//��ȡ��վ�����ļ�
IConfiguration configuration = new ConfigurationBuilder()
                            .AddJsonFile("appsettings.json")
                            .Build();
// Add services to the container.
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();


string MOIConnStr = configuration["ConnectionStrings:MOIConnStr"];

//���������ַ���
builder.Services.AddDbContext(options => options.AddMtrlSqlServer(configuration["ConnectionStrings:MOIConnStr"]));

//����AutoMapper
builder.Services.AddAutoMapper(typeof(Program).Assembly);

#region ����IdentityServer
builder.Services.AddAuthentication(configuration["Ids4:Scheme"])
  .AddIdentityServerAuthentication(options =>
  {
      options.RequireHttpsMetadata = false;
      options.Authority = $"http://{configuration["Ids4:IP"]}:{configuration["Ids4:Port"]}";  //IdentityServer��Ȩ·��
      options.ApiName = configuration["Ids4:ApiName"];
      options.TokenRetriever = new Func<HttpRequest, string>(req =>
      {
          var fromHeader = TokenRetrieval.FromAuthorizationHeader();
          var fromQuery = TokenRetrieval.FromQueryString();
          return fromHeader(req) ?? fromQuery(req);
      });
  });
#endregion

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

#region ���ÿ���
builder.Services.AddCors(cors =>
{
    cors.AddPolicy("Cors", policy =>
    {
        policy.WithOrigins("*", "*");
        policy.WithMethods("GET", "POST", "HEAD", "PUT", "DELETE", "OPTIONS");
        policy.AllowAnyHeader()
              .AllowAnyOrigin()
              .AllowAnyMethod();
    });
});
#endregion

#region ����SwaggerApi�ĵ�
builder.Services.AddSwaggerGen(options =>
{
    #region ����IdentityServer
    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Description = "���¿�����JWT���ɵ�TOKEN,��ʽΪBearer ��TOKEN��",
        Name = "Authorization",
        In = ParameterLocation.Header,
        Type = SecuritySchemeType.ApiKey,
        BearerFormat = "JWT",
        Scheme = "Bearer"
    });
    options.AddSecurityRequirement(new OpenApiSecurityRequirement{
        { new OpenApiSecurityScheme{
            Reference=new OpenApiReference{
                Type=ReferenceType.SecurityScheme,
                Id="Bearer"
            }
        }, new string[]{ } }
    });
    #endregion

    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "������ת�ӿ��ĵ�v1",
        Description = "������ת�ӿ��ĵ�v1"
    });
});
#endregion

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//ע��֧������gb2312����
Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);

app.UseHttpsRedirection();

app.UseCors("Cors");
app.UseSwagger(c =>
{
    //Change the path of the end point , should also update UI middle ware for this change                
    c.RouteTemplate = "api-doc/moi/{documentName}/swagger.json";
});
//�����м�������swagger-ui��ָ��Swagger JSON�ս��
app.UseSwaggerUI(c =>
{
    c.SwaggerEndpoint("/api-doc/moi/v1/swagger.json", "MapOfIndustryWebApi v1");
    //c.RoutePrefix = "swagger";  //Ĭ��
    c.RoutePrefix = "api-doc/moi";
});

app.UseAuthorization();

app.MapControllers();

app.Run();
