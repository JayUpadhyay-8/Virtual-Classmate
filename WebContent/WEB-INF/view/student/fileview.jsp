<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${file}<br/>
<% String s1=request.getParameter("finalpath"); %>
<a href="download.html">link</a><br/>

link value <%=s1%><br/>
fileview..........<br/>
${path }<br/>


<c:forEach items="${finalpath}" var="i" >
	
<%-- 	<c:url value="${finalpath }">link</c:url>
 --%>
 <a href="${finalpath}">${finalpath}</a><br/>
 
 </c:forEach>
</body>
</html>