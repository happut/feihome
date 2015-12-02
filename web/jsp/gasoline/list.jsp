<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<%@ include file="/jsp/import.jsp"%>
<script src="<c:url value="/js/echarts-all.js"/>"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var myChart = echarts.init(document.getElementById('chart'),
						'macarons');
		        myChart.showLoading({
		            text: "加载中...",
		            effect:'whirling',
		        	effectOption:{
		           		backgroundColor:'rgba(255,255,255,0)'
		        	}
		          });
		         
				$.post("doLoadChart.wangfei", {}, function(data) {
					initChart(myChart, data);
				}, "json");//这里返回的类型有：json,html,xml,text
			});

	function initChart(myChart, param) {
		var option = {
			title : {
				text : '油价走势图',
				subtext : '北京，单位（元）'
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				data : [ '95#', '92#' ],
				x : 'right'
			},
			calculable : false,
			xAxis : [ {
				type : 'category',
				boundaryGap : false,
				data : param.xAxisData
			} ],
			yAxis : [ {
				type : 'value',
				boundaryGap : [ 0.2, 0.2 ],
				scale : true
			} ],
			series : [ {
				name : '95#',
				type : 'line',
				data : param.gasoline95data,
				symbol : 'none',
				markPoint : {
					data : [ {
						type : 'max',
						name : '最大值'
					}, {
						type : 'min',
						name : '最小值'
					} ]
				}
			}, {
				name : '92#',
				type : 'line',
				data : param.gasoline92data,
				symbol : 'none',
				markPoint : {
					data : [ {
						type : 'max',
						name : '最大值'
					}, {
						type : 'min',
						name : '最小值'
					} ]
				}
			} ]
		};
		myChart.hideLoading();
		myChart.setOption(option);
	}
</script>

</head>
<body>
	<%@ include file="/jsp/header.jsp"%>
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
					<div id="chart" style="width: 1000px;height: 500px;"></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
