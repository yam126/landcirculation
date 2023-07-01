function loadOSCRegion(regionId,callback)
{
    $.getJSON(
        "/osc_region_new.json",
        function (jsonData) {
            console.log("osc_region_new-jsonData.json");
            console.log(jsonData);
            console.log("osc_region_new.json");
            console.log(regionId);
            var response = {
                data:{
                    status: 0,
                    msg: "",
                    result: []
                }
            };
            for (var i = 0; i < jsonData.result.length; i++)
            {
                var item = jsonData.result[i];

                if (item.id == regionId || item.parent_id == regionId)
                    response.data.result.push(item);
            }
            callback(response);
        });
}