var mapKey = "2a7c617cd0353e40d0fee73327920948";
//var mapKey = "673c32ba6de72791d6f07a4a75fe710a";
var vElementId = "";
var map;
var zoom = 12;
var polygons = [];
var allbounds = [];
var currentLnglat = null;
var isDrag = false;
var ctrl = null;
//标注工具
var polygonTool = null;
function GPSTransfromToWGS84(lng,lat)
{
    var result = coordtransform.gcj02towgs84(lng, lat);
    return {
        lng: result[0],
        lat: result[1]
    };
}
/**
 * 地图初始化
 * @param {any} elementId
 * @param {any} callback
 */
function initAllChildDistrict(elementId, callback)
{
    var T = window.T;
    //var imageURL = "http://t0.tianditu.gov.cn/img_w/wmts?" +
        //"SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles" +
        //"&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=" + mapKey;
    //创建自定义图层对象
    //lay = new T.TileLayer(imageURL, { minZoom: 1, maxZoom: 18 });
    //var config = { layers: [lay] };
    vElementId = elementId;
    //初始化地图对象
    //map = new T.Map(elementId, config);
    //map = new T.Map(elementId);
    if (map == null)
        map = new T.Map(elementId, { datasourcesControl: true, projection: 'EPSG:4326' });
    //map = new T.Map(elementId);   
    var centerPointWGS84 = GPSTransfromToWGS84(116.40969, 39.89945);
    var centerPoint = new T.LngLat(centerPointWGS84.lng, centerPointWGS84.lat);
    console.log("centerPointWGS84");
    console.log(centerPointWGS84);
    console.log("centerPoint");
    console.log(centerPoint);
    //设置显示地图的中心点和级别
    map.centerAndZoom(centerPoint, zoom);
    //initPolygonTool();
    //允许鼠标滚轮缩放地图
    //map.enableScrollWheelZoom();
    //允许拖拽
    setMapDrag();
    //map.enableDragging();
    //setTimeout(function () {
    //    console.log("可以拖拽地图了");
    //    map.enableDrag();
    //    map.enableInertia();
    //}, 2000);

    /*map.addEventListener("dragstart", function (e) {
        console.log("dragstart");
        console.log(e);
        isDrag = true;
        var eventTarget = e.target;
        console.log(eventTarget);
    });
    map.addEventListener("drag", function (e) {
        console.log("drag");
        console.log(e);
        isDrag = true;
        var eventTarget = e.target;
        console.log(eventTarget);
    });
    map.addEventListener("mouseover", function (e) {
        var eventTarget = e.target;
        console.log("map mouseover");
        console.log(e);
        currentLnglat = e.lnglat;
        if (isDrag) {
            //setTimeout(function () {
                map.panTo(new T.LngLat(currentLnglat.lng, currentLnglat.lat));
            //}, 200);
        }
        console.log("currentLnglat");
        console.log(currentLnglat);
        console.log(eventTarget);
    });
    map.addEventListener("dragend", function (e) {
        console.log("dragend");
        console.log(e);
        var eventTarget = e.target;
        console.log("currentLnglat");
        console.log(currentLnglat);
        zoom = map.getZoom();
        console.log(zoom);
        console.log(currentLnglat.lat);
        console.log(currentLnglat.lng);
        //setTimeout(function () {
            map.panTo(new T.LngLat(currentLnglat.lng, currentLnglat.lat));
        //}, 200);
        isDrag = false;
        console.log(eventTarget);
    });*/
    //创建缩放平移控件对象
    //control = new T.Control.Zoom();
    //添加缩放平移控件
    //map.addControl(control);
    if (ctrl == null) {
        ctrl = new T.Control.MapType(); // 初始化地图类型选择控件
        map.addControl(ctrl); //添加地图选择控件
    }
    map.setMapType(window.TMAP_HYBRID_MAP);// 设置地图位地星混合图层
    $(".tdt-right").css("right", "35vw");
    console.log(map.isInertia());
    if (callback != null)
        callback(map);
}

function setMapDrag()
{
    map.disableDrag();
    var setDragTime = window.setTimeout(function () {        
        map.enableDrag();
        if (map.isDrag()) {
            console.log("可以拖拽地图了");
            window.clearTimeout(setDragTime);
        }
    }, 2000);
}

/**
 * 初始化地块编辑插件
 * */
function initPolygonTool()
{
    if (polygonTool == null)
    {
        var config = {showLabel: true,color: "blue",weight: 2,opacity: 0.5,fillColor: "red",fillOpacity: 0.5};
        console.log("initPolygonTool");
        console.log("map");
        console.log(map);
        polygonTool = new T.PolygonTool(map, config);
    }
}

/**
 * 关闭手动画地块
 * */
function closeAddPolygon()
{
    initPolygonTool();
    polygonTool.close();
}

/**
 * 手动画地块儿
 * 用户双击画完地块儿时触发，参数:obj回传用户画好的多边形信息
 * @param {any} callback
 * */
function customAddPolygon(callback)
{
    if (polygons != null) {
        polygons = [];
        allbounds = [];
        //initAllChildDistrict(vElementId, null);
        //map.clearLayers();
        //console.log(map.getLayers());
        map.clearOverLays();
    }
    initPolygonTool();
    polygonTool.open();
    polygonTool.addEventListener("draw",
        function (obj) {
            console.log("draw");
            console.log(obj);
            if (callback != null)
                callback(obj);
        }
    );
}

/**
 * 在地图上画地块
 * @param {any} landDataAry
 * @param {any} polygon_event
 */
function drawPolygon(landDataAry, polygon_event) {
    //if (polygons != null) {
        polygons = [];
        allbounds = [];
        //initAllChildDistrict(vElementId, null);
        map.clearOverLays();
        map.clearLayers();
        //setMapDrag();
    //}
    closeAddPolygon();
    console.log("drawPolygon");
    console.log("landDataAry");
    console.log(landDataAry);
    for (var i = 0; i < landDataAry.length; i++)
        drawLand(landDataAry[i], false, polygon_event);
    map.setViewport(allbounds);
    //允许拖拽
    //map.enableDrag();
    setMapDrag();
    console.log("isDrag=" + map.isDrag());
    //map.enableInertia();
    LandStyle();
}
function drawLand(landItem, isClearMap, polygon_event)
{
    var bounds = [];
    var plantingArea = 0;
    var LngLat = null;
    closeAddPolygon();
    for (var r = 0; r < landItem.Longlat.length; r++) {
        var itemLngLatAry = landItem.Longlat[r];
        var Lng = itemLngLatAry[0];
        var Lat = itemLngLatAry[1];
        var wgs84 = GPSTransfromToWGS84(Lng, Lat);
        bounds.push(new T.LngLat(wgs84.lng, wgs84.lat));
        allbounds.push(new T.LngLat(wgs84.lng, wgs84.lat));
    }
    var html = "<div class='AMapLabel'>"
    //html += "<img class='Icon' src='/images/icon/plantAreaIcon.png'/>";
    html += "  <div class='landName' > " + landItem.landName + "</div>";
    html += "  <div class='plantArea'>{plantArea}亩</div>";
    html += "</div>";
    if (landItem.plantingArea != null && typeof (landItem.plantingArea) != "undefined") {
        html = html.replace("{plantArea}", landItem.plantingArea);
        plantingArea = landItem.plantingArea;
    }
    else {
        html = html.replace("{plantArea}", "0");
    }
    //创建面对象
    var polygon = new T.Polygon(bounds, {
        //color: "#7ab212",
        color:"#7ab212",
        weight: 1,
        opacity: 0.5,
        fillColor: "#transparent",
        fillOpacity: 0.5
    });
    /*polygon.addEventListener("mouseover", function (e) {
        console.log(" polygon mouseover ");
        var eventPolygon = e.target;
        eventPolygon.setFillColor('#3ddcd5');
        eventPolygon.setFillOpacity(0.9);
        console.log(e);
        map.enableDrag();
        map.enableInertia();
    });
    polygon.addEventListener("mouseout", function (e) {
        console.log(" polygon mouseout ");
        var eventPolygon = e.target;
        eventPolygon.setFillColor('#024db6');
        eventPolygon.setFillOpacity(0.5);
        console.log(e);
        map.enableDrag();
        map.enableInertia();
    });*/
    polygons.push(polygon);
    //向地图上添加面
    map.addOverLay(polygon); 
    if (landItem.Center != null && landItem.Center.length > 0 && landItem.plantingArea > 0) {
        var wgs84 = GPSTransfromToWGS84(landItem.Center[0], landItem.Center[1]);
        LngLat = new T.LngLat(wgs84.lng, wgs84.lat);
    }
    if (landItem.plantingArea > 0 && (landItem.Center == null || landItem.Center.length <= 0)) {
        try {
            console.log("landItem.Center == null");
            console.log("landItem.Longlat");
            console.log(landItem.Longlat);
            var wgs84 = GPSTransfromToWGS84(landItem.Longlat[0][0], landItem.Longlat[0][1]);
            LngLat = new T.LngLat(wgs84.lng, wgs84.lat);
        }
        catch (e) {
            console.log(e);
        }
    }
    //创建图片对象
    var icon = new T.Icon({
        iconUrl: apiHelper.urlHostWeb + 'images/icon/plantAreaIcon.png',
        iconSize: new T.Point(39, 57),
        iconAnchor: new T.Point(10, 25)
    });
    if (LngLat != null) {
        try {
            //向地图上添加自定义标注
            var mapIcon = new T.Marker(
                LngLat,
                { icon: icon }
            );
            var label = new T.Label({
                text: landItem.landName + "<br/>" + plantingArea+"亩",
                position: LngLat,
                offset: new T.Point(-36, 47)
            });
            //不画图标
            map.addOverLay(mapIcon);
            map.addOverLay(label);
        }
        catch (e) {
            console.log("Error");
            console.log(e);
        }
    }
   
    //map.setViewport(bounds);
    //允许拖拽
    //map.enableDrag();
    //map.enableInertia();
    console.log(map.isDrag());
}
/// <summary>
/// 根据输入的地点坐标计算中心点
/// </summary>
/// <param name="geoCoordinateList"></param>
/// <returns></returns>
function GetCenterPointFromListOfCoordinates(geoCoordinateList)
{
    var total = geoCoordinateList.length;
    var X = 0, Y = 0, Z = 0;
    for (var i = 0; i < total;i++)
    {
        var g = geoCoordinateList[i];
        var lat, lon, x, y, z;
        lat = g.lat * Math.PI / 180;
        lon = g.lng * Math.PI / 180;
        x = Math.cos(lat) * Math.cos(lon);
        y = Math.cos(lat) * Math.sin(lon);
        z = Math.sin(lat);
        X += x;
        Y += y;
        Z += z;
    }
    X = X / total;
    Y = Y / total;
    Z = Z / total;
    var Lon = Math.atan2(Y, X);
    var Hyp = Math.sqrt(X * X + Y * Y);
    var Lat = Math.atan2(Z, Hyp);
    return { lat: Lat * 180 / Math.PI, lng: Lon * 180 / Math.PI };
}
function drawVipInfo(vipData, polygon_event) {
    //initAllChildDistrict(vElementId, null);
    map.clearOverLays();
    map.clearLayers();
    setMapDrag();
    var allBounds = [];
    for (var i = 0; i < vipData.massifList.length; i++)
    {
        var plantArea = vipData.massifList[i].plantingArea;
        var plantAreaCenter = vipData.massifList[i].center;
        var boundItem = [];
        var boundArys = [];
        //var plantAreaCenterLngLat = new T.LngLat(plantAreaCenter[0], plantAreaCenter[1]);
        for (var l = 0; l < vipData.massifList[i].LongLat.length; l++) {
            var itemLngLatAry = vipData.massifList[i].LongLat[l];
            var Lng = itemLngLatAry[0];
            var Lat = itemLngLatAry[1];
            var wgs84 = GPSTransfromToWGS84(Lng, Lat);
            boundArys.push(wgs84);
            boundItem.push(new T.LngLat(wgs84.lng, wgs84.lat));
            allBounds.push(new T.LngLat(wgs84.lng, wgs84.lat));
        }
        var centerLngLat = GetCenterPointFromListOfCoordinates(boundArys);
        var plantAreaCenterLngLat = new T.LngLat(centerLngLat.lng, centerLngLat.lat);
        //创建面对象
        var polygon = new T.Polygon(
            boundItem,
            {
                color: "#7ab212",
                weight: 1,
                opacity: 0.5,
                fillColor: "#024db6",
                fillOpacity: 0.5
            }
        );
        var label = new T.Label({
            text: plantArea + "亩",
            position: plantAreaCenterLngLat,
            offset: new T.Point(-50, 0)
        });        
        polygon.addEventListener("mouseover", function (e) {
            console.log(" polygon mouseover ");
            var eventPolygon = e.target;
            eventPolygon.setFillColor('#3ddcd5');
            eventPolygon.setFillOpacity(0.9);
            console.log(e);
        });
        polygon.addEventListener("mouseout", function (e) {
            console.log(" polygon mouseout ");
            var eventPolygon = e.target;
            eventPolygon.setFillColor('#024db6');
            eventPolygon.setFillOpacity(0.5);
            console.log(e);
        });
        map.addOverLay(polygon);
        map.addOverLay(label);
    }
    console.log(allBounds);
    map.setViewport(allBounds);
    //允许拖拽
    map.enableDrag();
    map.enableInertia();
    LandStyle();
}
function LandStyle()
{
    $(".tdt-label").css({
        "background": "transparent",
        "color": "white",
        "font-size": "2vh",
        "border": "0px solid transparent",
        "box-shadow":"0px 0px 0px transparent"
    })
}
