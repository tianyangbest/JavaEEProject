<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'main.jsp' starting page</title>
		<link rel="stylesheet" type="text/css"
		href="./js/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="./js/themes/icon.css">
		<link rel="stylesheet" type="text/css"
		href="./js/ztree/zTreeStyle/zTreeStyle.css">
		<script type="text/javascript" src="./js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="./js/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="./js/ztree/jquery.ztree.all-3.5.js"></script>

	</head>

	<body>

		<div id="cc" class="easyui-layout" style="width:100%;height:100%;"
		fit="true">
			<div data-options="region:'north'" style="height:100px;"></div>
			<div data-options="region:'south'" style="height:100px;"></div>
			<div data-options="region:'east'" style="width:200px;"></div>
			<div data-options="region:'west'" style="width:200px;">
				<div id="aa" class="easyui-accordion"
				style="width:300px;height:200px;" fit="true">
					<div title="Title">
						<ul id="mytree" class="ztree"></ul>
					</div>
					<div title="Title"></div>
					<div title="Title"></div>
				</div>

			</div>
			<div data-options="region:'center'">
				<div id="tt" class="easyui-tabs" style="width:100%;height:100%;"
				fit="true">
					<div title="Tab1" style="padding:20px;display:none;">
						tab1
					</div>
					<div title="Tab2" data-options="closable:true"
					style="overflow:auto;padding:20px;display:none;">
						tab2
					</div>
					<div title="Tab3" data-options="iconCls:'icon-reload',closable:true"
					style="padding:20px;display:none;">
						tab3
					</div>
				</div>

			</div>
		</div>
	</body>

	<script type="text/javascript">
		var settings = {
			data : {
				simpleData : {
					enable : true
				}
			}
		};

		var zNodes;

		$(function() {
			$.ajax("data.json", {
				success : function(data) {
					zNodes = eval("("+data+")");
					$.fn.zTree.init($("#mytree"), settings, zNodes);
				},
				dataType: "text"
			});
		});
	</script>

</html>
