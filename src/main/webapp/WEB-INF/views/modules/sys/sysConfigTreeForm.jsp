<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>系统配置管理</title>
	<meta name="decorator" content="default"/>
	<%@include file="/WEB-INF/views/include/head.jsp"%>
	<script src="/static/views/formSubmit.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		});
	</script>
</head>
<body class="gray-bg">
	<form:form id="inputForm" modelAttribute="sysConfigTree" action="${ctx}/sys/sysConfigTree/save" method="post" class="form-horizontal  content-background">
		<div class="content">
			<form:hidden path="id"/>
			<sys:message content="${message}"/>
			<table class="width-100  table-condensed dataTables-example dataTable no-footer">
			   <tbody>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left"><font color="red">*</font>类型：</label></td>
					<td class="width-35">
						<form:input path="type" htmlEscape="false" maxlength="100" class="form-control  required"/>

					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left"><font color="red">*</font>数据值：</label></td>
					<td class="width-35">
						<form:input path="value" htmlEscape="false" maxlength="100" class="form-control  required"/>

					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left"><font color="red">*</font>标签名：</label></td>
					<td class="width-35">
						<form:input path="label" htmlEscape="false" maxlength="100" class="form-control  required"/>

					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left"><font color="red">*</font>描述：</label></td>
					<td class="width-35">
						<form:textarea path="description" htmlEscape="false" rows="8" maxlength="4000" class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left"><font color="red">*</font>排序（升序）：</label></td>
					<td class="width-35">
						<form:input path="sort" htmlEscape="false" class="form-control  required digits"/>

					</td>
				</tr>
				<tr>
					<td class="width-15 active" valign="top"><label class="pull-left">上级父级编号:</label></td>
					<td class="width-35">
						<sys:treeselect id="parent" name="parent.id" value="${sysConfig.parent.id}" labelName="parent.name" labelValue="${sysConfig.parent.name}"
							title="父级编号" url="/sys/sysConfigTree/treeData" extId="${sysConfig.id}" cssClass="form-control " allowClear="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left">备注信息：</label></td>
					<td class="width-35">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"  valign="top"><label class="pull-left">图片：</label></td>
					<td class="width-35">
						<form:hidden id="picture" path="picture" htmlEscape="false" maxlength="255" class="form-control"/>
						<sys:ckfinder input="picture" type="files" uploadPath="/sys/sysConfig" selectMultiple="true"/>

					</td>
				</tr>
				</tbody>
			</table>
			<div id="iframeSave" class="form-group ${action}">
				<a class="btn btn-success" onclick="doSubmit();">保存</a>
				<a class="btn btn-primary" onclick="javascript:history.back(-1);">返回</a>
				<!--a class="btn btn-primary" onclick="top.closeSelectTabs()">关闭</a-->
			</div>
		</div>
	</form:form>
</body>
</html>