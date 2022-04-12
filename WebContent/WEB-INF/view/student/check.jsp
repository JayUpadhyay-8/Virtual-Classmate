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
 hello
<c:forEach items="${linfo}" var="i" >
  <c:if test="${uname==i.username }">  
 	 <c:out value = "${i.studentVO.id}"/>
	  <jsp:forward page="/studentfinal.html?in=${i.studentVO.id }"></jsp:forward>
  </c:if>
</c:forEach>

 </body>
</html>