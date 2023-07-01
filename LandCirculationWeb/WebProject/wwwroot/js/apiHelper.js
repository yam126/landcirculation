var MassifGreenHouseVP = function () {
    this.id = "";
    this.landId = "";
    this.landName = "";
    this.cropsName = "";
    this.plantingArea = "0";
    this.jobPopulation = "0";
    this.totalPopulation = "0";
    this.totalOutput = "0";
    this.totaValue = "0";
    this.soilType = "";
    this.wateringType = "";
    this.landProperty = "";
    this.leaseYear = "0";
    this.cropOutput = "0";
    this.lastYearOutput = "0";
    this.currentYearOutput = "0";
    this.cropsSalesPrice = "0";
    this.enterTime = "";
    this.creater = "";
};
var queryPageParameter = {
    where: '',
    pageIndex: "",
    pageSize: "",
    sortField: '',
    sortMethod: ''
};
var queryParam = {
    where: '',
    sortField: '',
    sortMethod: ''
};
//api帮助
var apiHelper = {
    //urlBase: 'http://39.98.165.229:6001/api/land-circulation/v1/api',
    urlBase: 'https://localhost:7094/api',
    //urlBase: 'https://192.168.3.97:17194/api',
    //urlBase: 'https://192.168.1.26:7094/api',
    //urlHost: 'https://192.168.3.97:9228',
    //urlHost: 'https://192.168.1.17:7094',
    //urlHost: 'https://192.168.3.97:17194',
    //注意:urlHostWeb为前端项目的IP地址
    urlHostWeb: 'http://localhost:5110/',
    urlHost: 'https://localhost:7094',
    //urlHost: 'http://39.98.165.229:6001/api/land-circulation/v1',
    //urlHost:'http://8.142.169.233:6001/api/moi/v1/',
    //urlBase: 'https://192.168.3.97:9228/api',
    urlBaseFram: 'http://39.98.165.229:6001/api/farm/v1',
    modulesApiUrl: 'http://39.98.165.229:5001/api/v1/user/modules',
    currentServerUrl: 'http://39.98.165.229:6008',
    response: null,
    token: "",
    level: -1,
    UnionQuery: {
        CompanyType: '',
        RegionalLevel: '',
        EnterpriseNature: ''
    },
    getCookie(cookieName) {
        var cookieString = document.cookie;
        var start = cookieString.indexOf(cookieName + '=');
        // 加上等号的原因是避免在某些 Cookie 的值里有
        // 与 cookieName 一样的字符串。
        if (start == -1) // 找不到
            return null;
        start += cookieName.length + 1;
        var end = cookieString.indexOf(';', start);
        if (end == -1)
            return unescape(cookieString.substring(start));
        return unescape(cookieString.substring(start, end));
    },
    getQueryString: function (queryParam) {
        var queryStr = "";
        for (var paramName in queryParam) {
            if (queryParam[paramName] != "")
                queryStr += paramName + "=" + queryParam[paramName] + "&";
        }
        if (queryStr != "")
            queryStr = queryStr.substring(0, queryStr.length - 1);
        return queryStr;
    },
    getModules: function (callback) {
        console.log("token=" + this.token);
        $.ajax({
            type: "get",
            url: this.modulesApiUrl,
            async: false,
            jsonp: "",
            //data: queryPageParam,
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization",
                "Authorization": 'Bearer ' + this.token
            },
            success: function (response) {
                console.log("initModules");
                console.log(response);
                response.data = response;
                console.log(response);
                callback(response);
            }
        });
    },
    LargeGrainQueryPage: function (queryPageParam, callback) {
        var vurl = this.urlBase + "/large-grain/page?" + this.getQueryString(queryPageParam);
        console.log("LargeGrainQueryPage");
        console.log(vurl);
        console.log(queryPageParam);
        $.ajax({
            type: "get",
            url: vurl,
            async: false,
            jsonp: "",
            //data: queryPageParam,
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization"
            },
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("调用接口出错,原因:\t\r\n" + response.data.msg);
                else
                    callback(response);
            }
        });
    },
    largeGrainStatistics: function (callback) {
        var vurl = this.urlBase + "/large-grain/statistics/year";
        console.log("largeGrainStatistics");
        console.log(vurl);
        $.ajax({
            type: "get",
            url: vurl,
            async: false,
            jsonp: "",
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization"
            },
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("调用接口出错,原因:\t\r\n" + response.data.msg);
                else
                    callback(response);
            }
        });
    },
    villageStatistics: function (Year,Top,PlantArea,callback) {
        var vurl = this.urlBase + "/large-grain/statistics/year/village/{Year}/{PlantArea}/{Top}";
        console.log("largeGrainStatistics");
        console.log(vurl);
        vurl = vurl.replace("{Year}", Year);
        vurl = vurl.replace("{PlantArea}", PlantArea);
        vurl = vurl.replace("{Top}", Top);
        $.ajax({
            type: "get",
            url: vurl,
            async: false,
            jsonp: "",
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization"
            },
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("调用接口出错,原因:\t\r\n" + response.data.msg);
                else
                    callback(response);
            }
        });
    },
    largeGrainDetailStatistics: function (Year,Top,Village, PlantArea, callback)
    {
        var vurl = this.urlBase + "/large-grain/statistics/year/village/detail/{Year}/{Village}/{PlantArea}/{Top}";
        console.log("largeGrainDetailStatistics");
        console.log(vurl);
        vurl = vurl.replace("{Year}", Year);
        vurl = vurl.replace("{PlantArea}", PlantArea);
        vurl = vurl.replace("{Village}", Village);
        vurl = vurl.replace("{Top}", Top);
        $.ajax({
            type: "get",
            url: vurl,
            async: false,
            jsonp: "",
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization"
            },
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("调用接口出错,原因:\t\r\n" + response.data.msg);
                else
                    callback(response);
            }
        });
    },
    getLargeGrainAllYear: function (callback) {
        var vurl = this.urlBase + "/large-grain/allyear";
        console.log("getLargeGrainAllYear");
        console.log(vurl);
        $.ajax({
            type: "get",
            url: vurl,
            async: false,
            jsonp: "",
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Access-Control-Allow-Headers": "Authorization"
            },
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("调用接口出错,原因:\t\r\n" + response.data.msg);
                else
                    callback(response);
            }
        });
    },
    addData: function (apiData, callback) {
        console.log("添加数据");
        console.log(apiData);
        var vurl = this.urlBase + "/large-grain";
        $.ajax({
            type: "POST",
            url: vurl,
            async: false,
            jsonp: "",
            contentType: "application/json",//设置请求参数类型为json字符串
            dataType: "json",
            data: JSON.stringify(apiData),
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("添加失败" + response.data.msg);
                else
                    alert("添加成功");
                callback(response);
            }
        });
    },
    edit: function (dataId, dataParam, callback) {
        var vurl = this.urlBase + "/large-grain/" + dataId;
        $.ajax({
            type: "PUT",
            url: vurl,
            async: false,
            jsonp: "",
            contentType: "application/json",//设置请求参数类型为json字符串
            dataType: "json",
            data: JSON.stringify(dataParam),
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("修改失败" + response.data.msg);
                else
                    alert("修改成功");
                callback(response);
            }
        });
    },
    delete: function (dataId, callback) {
        var vurl = this.urlBase + "/large-grain/" + dataId;
        $.ajax({
            type: "DELETE",
            url: vurl,
            async: false,
            jsonp: "",
            success: function (response) {
                console.log(response);
                response.data = response;
                console.log(response);
                if (response.data.status != 0)
                    alert("删除失败" + response.data.msg);
                else
                    alert("删除成功");
                callback(response);
            }
        });
    },
    importExcel: function (userName, uploadFileControlId, callback) {
        var vurl = this.urlBase + "/large-grain/importExcel";
        console.log(vurl);
        var fileUpload = $("#" + uploadFileControlId).get(0);
        var file = fileUpload.files[0];
        var data = new FormData();
        data.append(file.name, file);
        data.append("userName", userName);
        $.ajax({
            type: "POST",
            url: vurl,
            contentType: false,
            processData: false,
            data: data,
            success: function (response) {
                console.log(response);
                response.data = response;
                callback(response);
            },
            error: function () {
                //utils.showError("上传失败");
            },
            complete: function () {
                // utils.hideMask();
            }
        });
    }
};