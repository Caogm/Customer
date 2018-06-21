<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'index.jsp' starting page</title>

<script type="text/javascript">
	function del(id) {
		
		var flag = window.confirm("确认删除吗");
		
		if (flag) {
			//确认删除
			location.href = "${pageContext.request.contextPath}/delById?id="
					+ id;
		}
	}
</script>
</head>

<body>

	<c:if test="${empty customers}">
		无客户信息
	</c:if>


	<c:if test="${not empty customers}">
		<table border="1" align="center" width="65%">
			<tr>
				<td><input type="checkbox">
				</td>
				<td>客户编号</td>
				<td>客户姓名</td>
				<td>客户性别</td>
				<td>客户生日</td>
				<td>客户电话</td>
				<td>客户邮箱</td>
				<td>客户爱好</td>
				<td>客户类型</td>
				<td>客户备注</td>
				<td>操作</td>
			</tr>

			<c:forEach items="${customers}" var="c">
				<tr>
					<td><input type="checkbox">
					</td>
					<td>${c.id }</td>
					<td>${c.name}</td>
					<td>${c.gender }</td>
					<td>${c.birthday }</td>
					<td>${c.cellphone }</td>
					<td>${c.email }</td>
					<td>${c.preference }</td>
					<td>${c.type }</td>
					<td>${c.description }</td>
					<td>
					
					<a href="${pageContext.request.contextPath}/findById?id=${c.id}">编辑</a>
					
					&nbsp;&nbsp;&nbsp; <a href="javascript:void(0)"
						onclick="del('${c.id}')">删除</a></td>
				</tr>
			</c:forEach>
				<tr>
					<td colspan="11">
						<a>删除选中</a>
					</td>
				</tr>
		</table>
	</c:if>

</body>
</html>
