var echarts = require('echarts');

var chartDom = document.getElementById('main');
var myChart = echarts.init(chartDom);
var option;

option = {
    title: {
        text: '种植面积(亩)',
        textStyle: {
            color: '#ffffff'
        }
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    legend: {
        textStyle: {
            color: '#ffffff'
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01],
        axisLabel: {
            show: true,
            textStyle: {
                color: '#ffffff'
            }
        }
    },
    yAxis: {
        type: 'category',
        data: ['乡村名称3', '乡村名称2', '乡村名称1'],
        axisLabel: {
            show: true,
            textStyle: {
                color: '#ffffff'
            }
        }
    },
    series: [
        {
            name: '2022',
            type: 'bar',
            data: [1118203, 1323489, 979034, 1104970, 131744, 630230]
        },
        {
            name: '2021',
            type: 'bar',
            data: [1119325, 1023438, 831000, 121594, 134141, 681807]
        },
        {
            name: '2019',
            type: 'bar',
            data: [519325, 923438, 731000, 121594, 134141, 681807]
        },
        {
            name: '2018',
            type: 'bar',
            data: [419325, 723438, 631000, 121594, 134141, 681807]
        }
    ]
};

option && myChart.setOption(option);
