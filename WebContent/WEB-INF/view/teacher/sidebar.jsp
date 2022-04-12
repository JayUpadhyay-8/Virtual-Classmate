<!doctype html>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="title icon" href="images/title-img.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
        crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/Chart.js"></script>
    <script type="text/javascript" src="js/script.js"></script>


    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="dashboard.css" media="screen" />
    

</head>

<body>
    <!--header start-->
                             <!---HEADER CODE HERE--> 
    <!--header end-->
    <!--sidebar start-->
    <div class="container-fluid">
        <!-- navbar -->
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-4">
                <div class="container-fluid">

                    <div class="row pt-md-4 mt-md-3 mb-5">

                        <div class="col">
                            <ul class="navbar-nav flex-column mt-4">
                                <li class="nav-item">
                                    <div class="card card-com mb-2">
                                        <div class="card-body">



                                            <div class="text-center ">
                                             <%--    <img src="<%=request.getContextPath()%>/adminResources/asserts/images/cust4.jpeg " width="100  " class="img-thumbnail rounded img-fluid">
                                              --%>   <i class="fas fa-user fa-3x text-secondary"></i>
                                                <p>
                                                    <b>INTERNATIONAL SCHOOL</b>
                                                    <div class="text-secondary">Name :<c:forEach items="${tinfo}" var="i" >
    																     <c:out value = "${i.name}"/><p>
      																</c:forEach></div>
                                                </p>
                                            </div>




                                        </div>
                                        <div class="card-footer text-secondary text-center" style="background-color: white">
                                            <div class="row">
                                                <div class="col" id="std">
                                                    <p class="small">Age :<c:forEach items="${tinfo}" var="i" >
    																    <c:out value = "${i.age}"/><p>
      																</c:forEach></p>
                                                </div>
                                                <div class="col" id="time">
                                                    <p class="small">Morning</p>
                                                </div>
                                                <div class="col" id="rollno">
                                                    <p class="small">Address :<c:forEach items="${tinfo}" var="i" >
    																    <c:out value = "${i.address}"/>
      																</c:forEach></p>
                                                </div>
                                                <div class="col" id="rollno">
                                                    <p class="small">Role : Teacher</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-white p-1 mb-2 sidebar-link" style="background-color:#CC0000; color:white; border-radius: 4px;">


                                        <i class="fas fa-calendar-alt"></i>DD/MM/YY

                                    </a>

                                </li>
                                <li class="nav-item">
                                    <a href="dashboard.html" class="nav-link text-white p-3 mb-2 current " style="background-color:#aa00ff; color:white; border-radius: 4px; ">
                                        <i class="fas fa-home text-light fa-lg mr-3"></i>DASHBOARD</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a href="UpdateIdentityCard.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#4285F4; color:white; border-radius: 4px;">
                                        <i class="fas fa-user-tie text-light fa-lg mr-3"></i>UPDATE IDENTITY</a>
                                </li>
                                 --><li class="nav-item">
                                    <a href="mystudent.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#ffbb33; color:white; border-radius: 4px;">
                                        <i class="fas fa-user-graduate text-light fa-lg mr-3"></i>MY STUDENTS</a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://ncert.nic.in/textbook.php" target="_blank" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#aa00ff; color:white; border-radius: 4px;">
                                        <i class="fas fa-shopping-cart text-light fa-lg mr-3"></i>LINK TO NCERT TEXTBOOKS</a>
                                </li>
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/loadResourceteacher.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#e91e63; color:white; border-radius: 4px;">
                                        <i class="fas fa-database text-light fa-lg mr-3"></i>TEACHER RESOURCES</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a href="classroutine.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#2BBBAD; color:white; border-radius: 4px;">
                                        <i class="fab fa-blogger-b text-light fa-lg mr-3"></i>CLASS ROUTINE</a>
                                </li>
                               --><!--   <li class="nav-item">
                                    <a href="parentinformation.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#b2ff59; color:white; border-radius: 4px;">
                                        <i class="fas fa-user text-light fa-lg mr-3"></i>PARENT INFORMATION</a>
                                </li>
                               --><!--   <li class="nav-item">
                                    <a href="setting.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#CC0000; color:white; border-radius: 4px;">
                                        <i class="fas fa-wrench text-light fa-lg mr-3"></i>Settings</a>
                                </li> -->
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/login.html" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#f06292 ; color:white; border-radius: 4px;">
                                        <i class="fas fa-sign-out-alt text-light fa-lg mr-3"></i>SIGNOUT</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>       
    <!-- end of sidebar -->

    <!-- cards -->
                            <!--CARD CODE HERE-->
    <!-- end of cards -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo "
        crossorigin="anonymous "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js " integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49 "
        crossorigin="anonymous "></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js " integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T "
        crossorigin="anonymous "></script>
    <script src="script.js "></script>
</body>

</html>