<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String pageNo = request.getParameter("pageNo").trim();
%>
<script type="text/javascript">
	alert("订单合同表中还有此客户未完成的合同订单，删除操作被强制取消！");
	//window.parent.frames.location.href="houtai/shop_message.jsp";
	window.location.href="../../client_message?pageNo="+<%=pageNo%>;
</script>
</body>
</html>