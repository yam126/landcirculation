var echarts = require('echarts');

var chartDom = document.getElementById('main');
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
    left: '3%',
    right: '4%',
    bottom: '3%',
    containLabel: true
  },
  xAxis: [
    {
      type: 'category',
      boundaryGap: false,
      data: ['2022', '2021', '2019', '2018'],
      axisLabel: {
        show: true,
        textStyle: {
          color: '#ffffff'
        }
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
      type: 'line',
      stack: 'Total',
      smooth: true,
      lineStyle: {
        width: 0
      },
      showSymbol: false,
      areaStyle: {
        opacity: 0.8,
        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
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
      data: [140, 232, 101, 264, 90, 340, 250]
    }
  ]
};

option && myChart.setOption(option);
