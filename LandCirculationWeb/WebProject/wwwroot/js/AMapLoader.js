window._AMapSecurityConfig = {
    securityJsCode: 'acca991ccaf8f2bb97df91a7bf547a24', //高德Api密钥
};
var map;
var amap;
var maker_event;
var equipMarkers = [];
var currentZoom = 15;
var center = [116.96055432, 37.46295938];
var rootDistrictName = "德平镇";
var globalCurrentLandName = "德平镇";
var districtNameDatas = new Array();//下级行政区列表
var polygons = new Array();//高德地块儿点位
var district = null;
var markers = [];
var markerIcons = [];
var videoMarkers = [];
var plantMarkers = [];
var videoMarkerIcons = [];
var markerIcon = ["http://192.168.3.82:5000/images/icon/corn_small.png", "http://192.168.3.82:5000/images/icon/soybean_small.png", "http://192.168.3.82:5000/images/icon/wheat_small.png"];
var crops = ["玉米", "大豆", "小麦"];
var GlobalBoundaries = [];
function initAllChildDistrict(htmlElementId,callback) {
    AMapLoader.load({
        //"key": "af03b4b1406996840b39d11d81850677",              // 申请好的Web端开发者Key，首次调用 load 时必填
        "key":"da39d38780a8c0a513263f99efcf09b2",
        "version": "2.0",   // 指定要加载的 JSAPI 的版本，缺省时默认为 1.4.15
        //"version":"1.4.15",
        "plugins": [
            "AMap.Autocomplete",
            "AMap.PlaceSearch",
            "AMap.Scale",
            "AMap.OverView",
            "AMap.ToolBar",
            "AMap.MapType",
            "AMap.PolyEditor",
            "AMap.CircleEditor",
            "AMap.DistrictSearch",
            "AMap.Geocoder"
        ],           // 需要使用的的插件列表，如比例尺'AMap.Scale'等
        "AMapUI": {             // 是否加载 AMapUI，缺省不加载
            "version": '1.1',   // AMapUI 版本
            "plugins": ['overlay/SimpleMarker'],       // 需要加载的 AMapUI ui插件
        },
        "Loca": {                // 是否加载 Loca， 缺省不加载
            "version": '2.0'  // Loca 版本
            //"version": "1.4.15",
        },
    }).then((AMap) => {
        map = new AMap.Map(htmlElementId);
        var opts = {
            level: "biz_area",
            extensions: "all",
            showbiz: true,
            subdistrict: 4,
            zooms: [12, 17],
            expandZoomRange:true
            //center: center,
            //zoom: currentZoom
        };
        district = new AMap.DistrictSearch(opts);
        //map.setMapStyle("amap://styles/blue");
        //map.setMapStyle("amap://styles/c69ae72c37385893c93d4f3706392c55");
        //map.setMapStyle("amap://styles/e1fbe8bae05554823e7ea64792b907b9");
        map.setMapStyle("amap://styles/c69ae72c37385893c93d4f3706392c55");
        amap = AMap;
        console.log("amap://styles/e1fbe8bae05554823e7ea64792b907b9");
        if (globalCurrentLandName != rootDistrictName)
            map.setZoom(currentZoom);
        AMap.Event.addListener(map, 'zoomchange', function (e) {
            console.log("zoomchange");
            console.log(e);
            console.log(map.getZoom());
            currentZoom = map.getZoom();
            //if (currentZoom >=15)
            //    map.setZoom(15,true,0);
            //else if (currentZoom <=12.61)
            //    map.setZoom(12.61, true, 0);
            
            //if (currentZoom > 13)
            //    $(".AMapLabel").show();
            //else
            //    $(".AMapLabel").hide();
        });
        callback(AMap);
    }).catch((e) => {
        console.log("错误消息");
        console.log(e);  //加载错误提示
    });
}
function getGlobalRegions(DistrictId) {
    var result = null;
    for (var i = 0; i < globalAllRegions.length; i++) {
        if (globalAllRegions[i].id == DistrictId)
            result = globalAllRegions[i];
    }
    return result;
}
var tempRegionItem = null;
function markerPop(e) {
    console.log(e)
    var name = e.target._opts.extData.name;
    maker_event(e.target._opts.extData)
}

function getDistrictName(landId) {
    var result = null;
    for (var i = 0; i < districtNameDatas.length; i++) {
        if (districtNameDatas[i].id == landId) {
            result = districtNameDatas[i];
            return result;
        }
    }
    return result;
}
function drawPolygon(landDataAry, polygon_event)
{
    if (polygons != null) {
        //polygons = [];
        map.remove(polygons);
    }
    console.log("drawPolygon");
    console.log("landDataAry");
    console.log(landDataAry);
    for (var i = 0; i < landDataAry.length; i++)
        drawLand(landDataAry[i],false, polygon_event);
}
function drawMonitor(monitorList,clickEvent)
{
    if (markers != null)
        map.remove(markers);
    if (markerIcons != null)
        map.remove(markerIcons);
    if (videoMarkers != null)
        map.remove(videoMarkers);
    if (videoMarkerIcons != null)
        map.remove(videoMarkerIcons);
    if (plantMarkers != null)
        map.remove(plantMarkers);
    if (monitorList != null && typeof (monitorList) != "undefined" && monitorList.length > 0) {
        for (var i = 0; i < monitorList.length; i++) {
            var html = "<div class='AMapLabel'>"
            //html += "  <img class='Icon' src='/images/icon/landMapIcon.png'/>";
            html += "  <div class='landName' > " + monitorList[i].name + "</div>";
            html += "</div>";
            var circleRadius = 10;
            var curIndex = i;
            var videoMarkerIcon = new AMap.Marker({
                map: map,
                icon: apiHelper.urlHostWeb+'images/icon/landMapIcon.png',
                position: new AMap.LngLat(monitorList[i].center[0], monitorList[i].center[1]),
                //content: html,
                title: monitorList[i].name,
                zIndex: 200,
                extData: curIndex,
                offset: new AMap.Pixel(-30, -72)
            });
            var videoMarker=new AMap.Marker({
                map: map,
                //icon: '/images/icon/landMapIcon.png',
                position: new AMap.LngLat(monitorList[i].center[0], monitorList[i].center[1]),
                content: html,
                title: monitorList[i].name,
                zIndex: 200,
                extData: curIndex,
                offset: new AMap.Pixel(-95, 0)
            });
            //var videoMarker = new AMap.ElasticMarker({
            //    map: map,
            //    position: new AMap.LngLat(monitorList[i].center[0], monitorList[i].center[1]),
            //    clickable: true,
            //    zIndex: 200,
            //    extData: curIndex,
            //    icon: {
            //        img: '/images/icon/landMapIcon.png',
            //        size: [56, 74],
            //        fitZoom: 14,
            //        scaleFactor: 2,//地图放大一级的缩放比例系数
            //        maxScale: 2,//最大放大比例
            //        minScale: 1//最小放大比例
            //    },
            //    label: {
            //        content: monitorList[i].name,//文本内容
            //        position: 'BM',//文本位置相对于图标的基准点，
            //        //BL、BM、BR、ML、MR、TL、TM、TR分别代表左下角、底部中央、右下角、
            //        //左侧中央、右侧中央、左上角、顶部中央、右上角。 
            //        //缺省时代表相对图标的锚点位置
            //        offset: [-35, 0],//相对position的偏移量
            //        minZoom: 15//label的最小显示级别
            //    }
            //});
            AMap.Event.addListener(videoMarker, 'click', function (e) {
                var eqindex = e.target._opts.extData;
                clickEvent(e.target._opts.extData);
            });
            videoMarkers.push(videoMarker);
            videoMarkerIcons.push(videoMarkerIcon);
        }
    }
}
function drawVipInfo(vipData, polygon_event) {
    if (polygons != null)
        map.remove(polygons);
    if (markers != null)
        map.remove(markers);
    if (markerIcons != null)
        map.remove(markerIcons);
    if (plantMarkers != null)
        map.remove(plantMarkers);
    for (var i = 0; i < vipData.massifList.length; i++) {
        var bounds = vipData.massifList[i].LongLat;
        var plantArea = vipData.massifList[i].plantingArea;
        var plantAreaCenter = vipData.massifList[i].center;
        var html = "<div class='AMapLabel'>"
        //html += "  <img class='Icon' src='/images/icon/landMapIcon.png'/>";
        html += "  <div class='landName' > " + plantArea + "</div>";
        html += "</div>";
        var plantMarker=new AMap.Marker({
            map: map,
            //icon: '/images/icon/landMapIcon.png',
            position: new AMap.LngLat(plantAreaCenter[0], plantAreaCenter[1]),
            content: html,
            //title: plantArea,
            zIndex: 200,
            //extData: curIndex,
            offset: new AMap.Pixel(-95, 0)
        });
        var polygon = new AMap.Polygon({
            map: map,
            strokWeight: 1,
            path: bounds,
            fillOpacity: 0.7,
            //fillColor: "#BFFFFF",
            fillColor: "#024db6",
            //strokeColor: "#CC66CC",
            //strokeColor: "#46b6a0"
            strokeColor: "#7ab212",
            cursor: "pointer",
            bubble: true,
            extData: vipData.massifList[i]
        });
        AMap.Event.addListener(polygon, 'mouseover', function (e) {
            //e.target._opts.fillColor = "#FF4D4D";
            e.target._opts.fillColor = "#3ddcd5";
            e.target._opts.fillOpacity = 0.9;
            e.target.setOptions(e.target._opts);
            console.log("e.target._opts.extData");
            console.log(e.target._opts.extData);
            if (polygon_event != null)
                polygon_event("mouseover", e.target._opts.extData);
        });
        AMap.Event.addListener(polygon, 'mouseout', function (e) {
            e.target._opts.fillColor = "#024db6";
            e.target._opts.fillOpacity = 0.7;
            e.target.setOptions(e.target._opts);
            if (polygon_event != null)
                polygon_event("mouseout", e.target._opts.extData);
        });
        plantMarkers.push(plantMarker);
        polygons.push(polygon);
        map.setFitView();
    }
}
function drawLand(landItem,isClearMap,polygon_event)
{
    if (polygons != null && isClearMap == true) {
        //polygons = [];
        map.remove(polygons);
    }
    if (markers != null && isClearMap == true)
        map.remove(markers);
    if (markerIcons != null && isClearMap == true)
        map.remove(markerIcons);
    if (videoMarkers != null && isClearMap == true)
        map.remove(videoMarkers);
    if (videoMarkerIcons != null && isClearMap == true)
        map.remove(videoMarkerIcons);
    var landObject = {
        landName: landItem.landName
    };
    var bounds = landItem.Longlat;   
    var polygon = new AMap.Polygon({
        map: map,
        strokWeight: 1,
        path: bounds,
        fillOpacity: 0.7,
        //fillColor: "#BFFFFF",
        fillColor: "#024db6",
        //strokeColor: "#CC66CC",
        //strokeColor: "#46b6a0"
        strokeColor: "#7ab212",
        cursor: "pointer",
        bubble: true,
        extData: landObject
    });
    console.log("drawLand");
    console.log("landItem.landName");
    console.log(landItem.landName);
    console.log("landItem.Center");
    console.log(landItem.Center);
    var html = "<div class='AMapLabel'>"
    //html += "<img class='Icon' src='/images/icon/plantAreaIcon.png'/>";
    html += "  <div class='landName' > " + landItem.landName + "</div>";
    html += "  <div class='plantArea'>{plantArea}亩</div>";
    html += "</div>";
    if (landItem.plantingArea != null && typeof (landItem.plantingArea) != "undefined")
        html = html.replace("{plantArea}", landItem.plantingArea);
    else
        html = html.replace("{plantArea}", "0");
    if (landItem.Center != null && landItem.Center.length > 0 && landItem.plantingArea>0) {
        var circleRadius = 10;
        var markerIcon = new AMap.Marker({
            map: map,
            icon: apiHelper.urlHostWeb + 'images/icon/plantAreaIcon.png',
            position: new AMap.LngLat(landItem.Center[0], landItem.Center[1]),
            //content: html,
            zIndex: 200,
            offset: new AMap.Pixel(0,0)
        });
        var marker = new AMap.Marker({
            map: map,
            position: new AMap.LngLat(landItem.Center[0], landItem.Center[1]),
            content: html,
            zIndex: 200,
            offset: new AMap.Pixel(-72,72)
        });
        markerIcons.push(markerIcon);
        markers.push(marker);
    } else if (landItem.plantingArea > 0) {
        var circleRadius = 10;
        var marker = new AMap.Marker({
            map: map,
            position: new AMap.LngLat(landItem.Longlat[0][0], landItem.Longlat[0][1]),
            content: html,
            zIndex: 200,
            offset: new AMap.Pixel(-72, 72)
        });
        var markerIcon = new AMap.Marker({
            map: map,
            icon: apiHelper.urlHostWeb + 'images/icon/plantAreaIcon.png',
            position: new AMap.LngLat(landItem.Longlat[0][0], landItem.Longlat[0][1]),
            //content: html,
            zIndex: 200,
            offset: new AMap.Pixel(0, 0)
        });
        markerIcons.push(markerIcon);
        markers.push(marker);
    }
    AMap.Event.addListener(polygon, 'mouseover', function (e) {
        //e.target._opts.fillColor = "#FF4D4D";
        e.target._opts.fillColor = "#3ddcd5";
        e.target._opts.fillOpacity = 0.9;
        e.target.setOptions(e.target._opts);
        console.log("e.target._opts.extData");
        console.log(e.target._opts.extData);
        if (polygon_event != null)
            polygon_event("mouseover", e.target._opts.extData);
    });
    AMap.Event.addListener(polygon, 'mouseout', function (e) {
        e.target._opts.fillColor = "#024db6";
        e.target._opts.fillOpacity = 0.7;
        e.target.setOptions(e.target._opts);
        if (polygon_event != null)
            polygon_event("mouseout", e.target._opts.extData);
    });
    polygons.push(polygon);
    map.setFitView();
    console.log("currentZoom=" + currentZoom);
    if (globalCurrentLandName != rootDistrictName)
        map.setZoom(15);
    //console.log("currentZoom=" + currentZoom);    
}
function getChildDistrictAll(districtName, AMap) {
    districtNameDatas = [];
    district.search(districtName, function (status, result) {
        if (status == 'complete') {
            if (districtNameDatas == null || districtNameDatas.length <= 0) {
                for (var i = 0; i < result.districtList[0].districtList[0].districtList.length; i++) {
                    var item = result.districtList[0].districtList[0].districtList[i];
                    districtNameDatas.push(item.name);
                }
            }
        }
    });
}

//随机标记地图
function mapRandomSign(typeInfo) {
    map.clearMap();


    //var labelMarker = new AMap.LabelMarker({
    //    name: "京味斋烤鸭店",
    //    position: [115.898359, 39.909869],
    //    icon: {
    //        type: "image",
    //        image: "https://a.amap.com/jsapi_demos/static/images/poi-marker.png",
    //        clipOrigin: [547, 92],
    //        clipSize: [50, 68],
    //        size: [25, 34],
    //        anchor: "bottom-center",
    //        angel: 0,
    //        retina: true,
    //    },
    //    text: {
    //        content: "京味斋烤鸭店",
    //        direction: "top",
    //        offset: [0, 0],
    //        style: {
    //            fontSize: 13,
    //            fontWeight: "normal",
    //            fillColor: "#fff",
    //            padding: "2, 5",
    //            backgroundColor: "#22884f",
    //        },
    //    },
    //});

    //layer.add(labelMarker);
    for (var i = 0; i < GlobalBoundaries.length; i++) {
        var cropNameIndex = getRandom(0, crops.length - 1);
        var cropName = crops[cropNameIndex];
        var iconPath = "";
        var tipsText = "";
        switch (cropName) {
            case "玉米":
                iconPath = markerIcon[0];
                break;
            case "大豆":
                iconPath = markerIcon[1];
                break;
            case "小麦":
                iconPath = markerIcon[2];
                break;
        }
        console.log(iconPath);
        switch (typeInfo) {
            case "种植面积":
                tipsText = cropName + typeInfo + "亩";
                break;
            default:
                tipsText = typeInfo;
                break;
        }
        var layer = new AMap.LabelsLayer({
            zooms: [3, 20],
            zIndex: 1000 + i,
            // 开启标注避让，默认为开启，v1.4.15 新增属性
            collision: true,
            // 开启标注淡入动画，默认为开启，v1.4.15 新增属性
            animation: true,
        });
        map.add(layer);
        var labelMarker = new AMap.LabelMarker({
            name: tipsText,
            position: [GlobalBoundaries[i][0].lng, GlobalBoundaries[i][0].lat],
            icon: {
                type: "image",
                image: iconPath,
                clipOrigin: [547, 92],
                clipSize: [50, 68],
                size: [25, 34],
                anchor: "bottom-center",
                angel: 0,
                retina: true,
            },
            text: {
                content: tipsText + getRandom(1, 100),
                direction: "top",
                offset: [0, 0],
                style: {
                    fontSize: 13,
                    fontWeight: "normal",
                    fillColor: "#fff",
                    padding: "2, 5",
                    backgroundColor: "#22884f",
                },
            },
        });
        markers.push(labelMarker);
    }
    layer.add(markers);
    map.setFitView();
}

function getChildDistrictRegionById(regionId) {
    var result = null;
    for (var i = 0; i < globalAllRegions.length; i++) {
        if (globalAllRegions[i].id == regionId)
            result = globalAllRegions[i];
    }
    return result;
}

function getChildDistrictRegionByApiData(cropsImage, polygon_event) {
    districtNameDatas = [];
    for (var i = 0; i < globalAllRegions.length; i++) {
        if (globalAllRegions[i].parent_id == rootDistrictId)
            districtNameDatas.push(globalAllRegions[i]);
    }
    if (districtNameDatas == null || districtNameDatas.length <= 0)
        districtNameDatas.push(getChildDistrictRegionById(rootDistrictId));
    console.log("getChildDistrictRegionByApiData");
    console.log("districtNameDatas");
    console.log(districtNameDatas);
    mapDivideDistrictApiData(cropsImage, polygon_event);
}

function getChildDistrictRegion(polygon_event) {
    districtNameDatas = [];
    for (var i = 0; i < globalAllRegions.length; i++) {
        if (globalAllRegions[i].parent_id == rootDistrictId)
            districtNameDatas.push(globalAllRegions[i]);
    }
    if (districtNameDatas == null || districtNameDatas.length <= 0)
        districtNameDatas.push(getChildDistrictRegionById(rootDistrictId));
    console.log("getChildDistrictRegion");
    console.log("districtNameDatas");
    console.log(districtNameDatas);
    mapDivideDistrict(polygon_event);
}

//获得下级行政区
function getChildDistrict(districtName, AMap, polygon_event) {
    districtNameDatas = [];
    district.search(districtName, function (status, result) {
        console.log("districtName=" + districtName);
        if (status == 'complete') {
            if (districtNameDatas == null || districtNameDatas.length <= 0) {
                if (result.districtList[0].level != "district") {
                    for (var i = 0; i < result.districtList[0].districtList[0].districtList.length; i++) {
                        var item = result.districtList[0].districtList[0].districtList[i];
                        districtNameDatas.push(item.name);
                    }
                }
                else {
                    var item = result.districtList[0];
                    districtNameDatas.push(item.name);
                }
                mapDivideDistrict(polygon_event);
            }
        }
    });
}