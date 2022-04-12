<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-1 mb-2 sidebar-link" style="background-color:#CC0000; color:white; border-radius: 4px;">


                                        <i class="fas fa-calendar-alt"></i>DD/MM/YY

                                    </a>

                                </li>
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath() %>/student.html" class="nav-link text-white p-3 mb-2 current " style="background-color:#aa00ff; color:white; border-radius: 4px; ">
                                        <i class="fas fa-home text-light fa-lg mr-3"></i>DASHBOARD</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#4285F4; color:white; border-radius: 4px;">
                                        <i class="fas fa-user-tie text-light fa-lg mr-3"></i>UPDATE IDENTITY</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#ffbb33; color:white; border-radius: 4px;">
                                        <i class="fas fa-rupee-sign text-light fa-lg mr-3"></i>PAY FEES ONLINE</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#aa00ff; color:white; border-radius: 4px;">
                                        <i class="fas fa-shopping-cart text-light fa-lg mr-3"></i>LINK TO NCERT TEXTBOOKS</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#e91e63; color:white; border-radius: 4px;">
                                        <i class="fas fa-database text-light fa-lg mr-3"></i>STUDENT RESOURCES</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#2BBBAD; color:white; border-radius: 4px;">
                                        <i class="fab fa-blogger-b text-light fa-lg mr-3"></i>BLOGS</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#b2ff59; color:white; border-radius: 4px;">
                                        <i class="fas fa-user text-light fa-lg mr-3"></i>PAREST INFORMATION</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#CC0000; color:white; border-radius: 4px;">
                                        <i class="fas fa-wrench text-light fa-lg mr-3"></i>Settings</a>
                                </li>
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/login.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#f06292 ; color:white; border-radius: 4px;">
                                        <i class="fas fa-sign-out-alt text-light fa-lg mr-3"></i>SIGNOUT</a>
                                </li>

</body>
</html>