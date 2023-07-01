var echartsAry = [];
//产值统计图
//elementId:dom元素编号
//yearLabelData:年代统计选项
//histogramData:柱状图数据
//lineChartData:折线图数据
function chartsIndustryStatistics(
    elementId,
    yearLabelData,
    histogramData,
    lineChartData) {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById(elementId));

    // 指定图表的配置项和数据
    var option = {
        legend: {
            data: ['人均产值'],
            orient: 'vertical',
            right: 10,
            top: 'center',
            // 图例文字样式
            textStyle: {
                fontSize: 16,
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        title: {

            //图标标题
            text: '产值(亿)',

            //文字样式
            textStyle: {
                fontSize: 18,
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        tooltip: {},
        grid: {
            x: 1,
            y: 2,
            left: '0%',
            right: '0%',
            bottom: '3%',
            top: '4%',
            containLabel: true,
        },
        color: ['#f5b644'], // 修改折线图的图例颜色要写在这里(其他写在lenged中)还要写在lengend中
        legend: {
            data: ['名称1', '名称2'],
            textStyle: {
                fontSize: 8, // 设置文字大小
                color: ['#5abff', '#50aeff', '#f5b644'],
            },
            itemWidth: 7, // 设置标志的小图标
            itemHeight: 7,
            top: -5,
            align: 'left', // 图例图标的方向，这里设置为左
            itemGap: -12, // 每项图例的距离
            right: -10, // 图例的位置
        },
        xAxis: {
            type: 'category',
            //data: ['2016', '2017', '2018', '2019', '2020', '2021']
            data: yearLabelData
        },
        axisLabel: {
            //x和y轴字体颜色
            color: '#fff'
        },
        yAxis: {
            type: 'value'
        },
        series: [
            //柱状图设置
            {
                name: '(亿)',
                type: 'bar',
                //data: [95, 100, 86, 60, 50, 30],
                data: histogramData,
                barWidth: 12,
                itemStyle: {
                    normal: {
                        //柱状图柱子颜色
                        color: function (params) {
                            var colorList = ['#00D81C', '#00D81C', '#00D81C', '#00D81C', '#00D81C', '#00D81C'];
                            return colorList[params.dataIndex];
                        },
                        // 柱形图圆角，初始化效果
                        barBorderRadius: [10, 10, 5, 5],
                        //统计柱状图线性颜色
                        color: new echarts.graphic.LinearGradient(1, 1, 0, 0, [
                            {
                                offset: 0,
                                color: "#00D81C"
                            },
                            {
                                offset: 1,
                                color: "#00D81C"
                            }
                        ])
                    }
                }
            },
            //折线图设置
            {
                //data: [150, 230, 224, 218, 135, 147, 260],
                data: lineChartData,
                type: 'line',
                symbol: 'circle',//拐点样式
                symbolSize: 18,//拐点大小
                itemStyle: {
                    normal: {
                        lineStyle: {
                            width: 3,//折线宽度
                            color: "#E8834D"//折线颜色
                        },
                        color: '#E8834D',//拐点颜色
                        borderColor: '#E8834D',//拐点边框颜色
                        borderWidth: 1//拐点边框大小
                    },
                    emphasis: {
                        color: '#E8834D'//hover拐点颜色定义
                    }
                }
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    echartsAry.push(myChart);
}

//种植面积统计
function plantingAreaStatistics(elementId,copsName,staticsData)
{
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById(elementId));

    // 指定图表的配置项和数据
    var option = {
        legend: {
            data: ['人均产值'],
            orient: 'vertical',
            right: 10,
            top: 'center',
            // 图例文字样式
            textStyle: {
                fontSize: 16,
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        title: {

            //图标标题
            text: '亩',

            //文字样式
            textStyle: {
                fontSize: 18,
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        tooltip: {},
        grid: {
            left: '3%',
            right: 0,
            bottom: '10%',
            top: '20%',
            containLabel: true,
        },
        color: ['#f5b644'], // 修改折线图的图例颜色要写在这里(其他写在lenged中)还要写在lengend中
        legend: {
            data: ['名称1', '名称2'],
            textStyle: {
                fontSize: 8, // 设置文字大小
                color: ['#5abff', '#50aeff', '#f5b644'],
            },
            itemWidth: 7, // 设置标志的小图标
            itemHeight: 7,
            top: -5,
            align: 'left', // 图例图标的方向，这里设置为左
            itemGap: -12, // 每项图例的距离
            right: -10, // 图例的位置
        },
        xAxis: {
            type: 'category',
            //data: ['景尚乡', '郭占强', '刘环静', '马龄', '刘静秋', '王鹏']
            data: regionNames
        },
        axisLabel: {
            //x和y轴字体颜色
            color: '#fff'
        },
        yAxis: {
            type: 'value'
        },
        series: [
            //柱状图设置
            {
                name: '亩',
                type: 'bar',
                //data: [95, 100, 86, 60, 50, 30],
                data: staticsData,
                barWidth: 12,
                itemStyle: {
                    normal: {
                        //柱状图柱子颜色
                        color: function (params) {
                            var colorList = ['#00D81C', '#00D81C', '#00D81C', '#00D81C', '#00D81C', '#00D81C'];
                            return colorList[params.dataIndex];
                        },
                        // 柱形图圆角，初始化效果
                        barBorderRadius: [10, 10, 5, 5],
                        //统计柱状图线性颜色
                        color: new echarts.graphic.LinearGradient(1, 1, 0, 0, [
                            {
                                offset: 0,
                                color: "#DC7147"
                            },
                            {
                                offset: 1,
                                color: "#F4D6CA"
                            }
                        ])
                    }
                }
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    echartsAry.push(myChart);
}

//平均价格统计图
//elementId:元素编号,
//cropsName:农作物名称,
//yearsData:年份数据
//cropsYearData:农作物年份数据(数组)
/*示例{
 *   cropsName:'玉米',
 *   yearData:[100,200,300]
 * }*/
//注意:yearsData和cropsYearData的yearData必须一一对应
function averagePrice(element, cropsName, yearsData, cropsYearData) {
    var myChart = echarts.init(
        element,
        {
            renderer: 'canvas',
            useDirtyRect: false
        }
    );
    var seriesAry = new Array();
    console.log("cropsName");
    console.log(cropsName);
    console.log("yearsData");
    console.log(yearsData);
    console.log("cropsYearData");
    console.log(cropsYearData);
    if (cropsYearData == null || (cropsYearData.length == null || cropsYearData.length <= 0))
        return false;
    //#region 循环农作物年份数据
    for (var i = 0; i < cropsYearData.length; i++)
    {
        var seriesDataItem = {
            name: cropsYearData[i].cropsName,
            type: 'line',
            stack: 'Total',
            smooth: true,
            data: cropsYearData[i].yearsData
        };
        seriesAry.push(seriesDataItem);
    }
    //#endregion
    var option;
    option = {
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: cropsName,
            textStyle: {
                fontSize: "12",
                color:'#fff'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        axisLabel: {
            //x和y轴字体颜色
            color: '#fff',
            axisLabel: {
                interval:10,
                textStyle: {
                    fontSize: "12",
                }
            }
        },
        toolbox: {
            show: false,
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: yearsData
        },
        yAxis: {
            type: 'value'
        },
        series: seriesAry
    };
    console.log("chartOption");
    console.log(option);
    if (option && typeof option === 'object') {
        myChart.setOption(option);
        echartsAry.push(myChart);
    }
}

function averagePriceCharts(element, cropsName, yearsData, cropsYearData) {
    var myChart = echarts.init(
        element,
        {
            renderer: 'canvas',
            useDirtyRect: false
        }
    );
    var seriesAry = new Array();
    console.log("cropsName");
    console.log(cropsName);
    console.log("yearsData");
    console.log(yearsData);
    console.log("cropsYearData");
    console.log(cropsYearData);
    if (cropsYearData == null || (cropsYearData.length == null || cropsYearData.length <= 0))
        return false;
    //#region 循环农作物年份数据
    for (var i = 0; i < cropsYearData.length; i++) {
        var seriesDataItem = {
            name: cropsYearData[i].cropsName,
            type: 'line',
            stack: 'Total',
            //areaStyle: {},
            smooth: true,
            //emphasis: {
            //    focus: 'series'
            //},
            data: cropsYearData[i].yearsData
        };
        seriesAry.push(seriesDataItem);
    }
    //#endregion
    var option;
    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: cropsName,
            textStyle: {
                fontSize: "12",
                color: '#fff'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        axisLabel: {
            //x和y轴字体颜色
            color: '#fff',
            axisLabel: {
                interval: 10,
                textStyle: {
                    fontSize: "12",
                }
            }
        },
        toolbox: {
            show: false,
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: yearsData
        },
        yAxis: {
            type: 'value'
        },
        series: seriesAry
    };
    console.log("chartOption");
    console.log(option);
    if (option && typeof option === 'object') {
        myChart.setOption(option);
        echartsAry.push(myChart);
    }
}

function plantingStatisticsChartsOld(element, yearsData, plantingAreaData)
{
    var chartDom = document.getElementById(element);
    var myChart = echarts.init(chartDom);
    var option;
    option = {
        color: ['#80FFA5', '#00DDFF', '#37A2FF', '#FF0087', '#FFBF00'],
        title: {
            text: '单位(亩)',
            textStyle: {
                color: '#ffffff'
            }
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            left: '4%',
            right: '4%',
            bottom: '10%',
            top: '20%',
            containLabel: true,
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: true,
                //data: ['2022', '2021', '2019', '2018'],
                data: yearsData,
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#ffffff'
                    },
                    interval: 0
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#ffffff'
                    }
                }
            }
        ],
        series: [
            {
                type: 'bar',
                stack: 'Total',
                //smooth: true,
                barWidth: 20,
                barGap: '-35%',
                barCategoryGap:'-20%',
                //lineStyle: {
                    //width: 0
                //},
                //showSymbol: false,
                areaStyle: {                    
                    opacity: 1,
                    color: new echarts.graphic.LinearGradient(1, 1, 0, 0, [
                        {
                            offset: 0,
                            color: 'rgb(128, 255, 165)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(1, 191, 236)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                //data: [140, 232, 101, 264, 90, 340, 250]
                data: plantingAreaData,
                itemStyle: {
                    normal: {
                        barBorderRadius: [10, 10, 10, 10] // 圆角（左上、右上、右下、左下）
                    }
                }
            }
        ]
    };
    //option && myChart.setOption(option);
    if (option && typeof option === 'object') {
        myChart.setOption(option);
        echartsAry.push(myChart);
    }
}

function plantingStatisticsCharts(element, yearsData, plantingAreaData)
{
    // 调用
    var myChart = echarts.init(document.getElementById(element));
    var option; 
    var data = plantingAreaData;
    var data2 = [500, 800, 900, 360];
    var sideData = data.map(item => item + 90);
    var sideData2 = data.map(item => item + 90);
    this.getEcharts3DBar=function() {
        var colorArr = ["#0C628C", "#3887D5", "#2570BB"];
        var color = {
            type: "linear",
            x: 0,
            x2: 1,
            y: 0,
            y2: 0,
            colorStops: [
                {
                    offset: 0,
                    color: colorArr[0],
                },
                {
                    offset: 0.5,
                    color: colorArr[0],
                },
                {
                    offset: 0.5,
                    color: colorArr[1],
                },
                {
                    offset: 1,
                    color: colorArr[1],
                }
            ],
        };
        var barWidth = 30;
        var option = {
            tooltip: {
                trigger: 'axis',
                formatter: function (params) {
                    var str = params[0].name + ":";
                    params.filter(function (item) {
                        if (item.componentSubType == "bar") {
                            str += "<br/>" + item.seriesName + "：" + item.value;
                        }
                    });
                    return str;
                },
            },
            title: {
                text: '亩',
                textStyle: {
                    color: '#0cc5cd'
                }
            },
            grid: {
                x: '10%',
                x2: '0%',
                y: '5%',
                y2: '5%',
                left: '4%',
                right: '4%',
                bottom: '10%',
                top: '20%',
                containLabel: true
            },
            legend: {
                show: false,
                //data: ['本期'],
                textStyle: {
                    color: '#fff',
                    fontSize: '20'
                }
            },
            xAxis: {
                data: yearsData,
                //坐标轴
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 1,
                        color: '#0cc5cd'
                    },
                    textStyle: {
                        color: '#0cc5cd',
                        fontSize: '10'
                    }
                },
                type: 'category',
                axisLabel: {
                    textStyle: {
                        color: '#0cc5cd',
                        fontWeight: 500,
                        fontSize: '14'
                    }
                },
                axisTick: {
                    textStyle: {
                        color: '#fff',
                        fontSize: '16'
                    },
                    show: false,
                },
                splitLine: { show: false }
            },
            yAxis: {
                type: 'value',
                //坐标轴
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 1,
                        color: '#0cc5cd'
                    },
                    textStyle: {
                        color: '#0cc5cd',
                        fontSize: '10'
                    }
                },
                axisTick: {
                    show: false
                },
                //坐标值标注
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#0cc5cd',
                    }
                },
                //分格线
                splitLine: {
                    lineStyle: {
                        color: '#0cc5cd'
                    }
                }
            },
            series: [
                {
                    z: 1,
                    name: '单位(亩)',
                    type: "bar",
                    barWidth: barWidth,
                    barGap: "0%",
                    data: data,
                    /*itemStyle: {
                        normal: {
                            color: color
                        },
                    },*/
                    opacity: 1,
                    color: new echarts.graphic.LinearGradient(0, 0, 1, 1, [
                        {
                            offset: 0,
                            color: 'rgb(128, 255, 165)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(1, 191, 236)'
                        }
                    ])
                },
                {
                    z: 2,
                    name: '本期',
                    type: "pictorialBar",
                    data: sideData,
                    symbol: "diamond",
                    //symbolOffset: ["-75%", "50%"],
                    symbolPosition: 'end',
                    symbolOffset: ["0%","-50%"],
                    symbolSize: [barWidth, 9],
                    /*itemStyle: {
                        normal: {
                            color: color
                        },
                    },*/
                    opacity: 1,
                    color:'rgb(1, 191, 236)',
                    tooltip: {
                        show: false,
                    },
                },
                {
                    z: 3,
                    name: '本期',
                    type: "pictorialBar",
                    //symbolPosition: "end",
                    data: data,
                    symbol: "diamond",
                    //symbolPosition: 'end',
                    //symbolOffset: ["-75%", "-50%"],
                    symbolOffset: ["0%","62%"],
                    symbolSize: [barWidth - 1, (10 * (barWidth - 1)) / barWidth],
                    itemStyle: {
                        normal: {
                            borderWidth: 2,
                            color: 'rgb(128, 255, 165)'
                        },
                    },
                    //opacity: 1,
                    //color: new echarts.graphic.LinearGradient(1, 1, 0, 0, [
                    //    {
                    //        offset: 0,
                    //        color: 'rgb(128, 255, 165)'
                    //    },
                    //    {
                    //        offset: 1,
                    //        color: 'rgb(1, 191, 236)'
                    //    }
                    //]),
                    tooltip: {
                        show: false,
                    },
                    tooltip: {
                        show: false,
                    },
                },
                /*{
                    z: 1,
                    name: '同期',
                    type: "bar",
                    barWidth: barWidth,
                    barGap: "50%",
                    data: data2,
                    itemStyle: {
                        normal: {
                            color: color
                        },
                    },
                },
                {
                    z: 2,
                    name: '同期',
                    type: "pictorialBar",
                    data: sideData2,
                    symbol: "diamond",
                    symbolOffset: ["75%", "50%"],
                    symbolSize: [barWidth, 10],
                    itemStyle: {
                        normal: {
                            color: color
                        },
                    },
                    tooltip: {
                        show: false,
                    },
                },
                {
                    z: 3,
                    name: '同期',
                    type: "pictorialBar",
                    symbolPosition: "end",
                    data: data2,
                    symbol: "diamond",
                    symbolOffset: ["75%", "-50%"],
                    symbolSize: [barWidth - 4, (10 * (barWidth - 4)) / barWidth],
                    itemStyle: {
                        normal: {
                            borderWidth: 2,
                            color: colorArr[2]
                        },
                    },
                    tooltip: {
                        show: false,
                    },
                },*/
            ]
        };
        return option;
    }
    option = this.getEcharts3DBar();
    if (option && typeof option === 'object') {
        myChart.setOption(option);
        echartsAry.push(myChart);
    }

}


//统计图尺寸自适应
window.addEventListener("resize", function () {
    for (var i = 0; i < echartsAry.length; i++)
        echartsAry[i].resize();
});
