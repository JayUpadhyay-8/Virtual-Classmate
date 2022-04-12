<!doctype html>
<html lang="en">
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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

          <jsp:include page="Header.jsp"></jsp:include>                                                                    <!--HEADER CODE HERE-->
    <!--header end-->
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
    									</div>
    								</div>
    							 </li>
                                <jsp:include page="Menu.jsp"></jsp:include>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>






 
 
     <!-- cards -->
			<div class="col-xl-8 col-lg-8 col-md-8">

			    <div class="container-fluid">

        		<div class="row pt-md-4 mt-md-3 mb-5">
            		<div class="col-xl-7 col-sm-6 p-2 ">
                		<div class="card card-common">
                    		<div class="card-header" style="background-color: red;color: white;">
                        	<div class="d-flex justify-content-between">
                            	<div class="text-left text-secondary">                          
                                	<h6> Change Password</h6>
                            	</div>
                            <i class="fas fa-cog"></i>
                        	</div>
                    		</div>
                  

                    <div class="card-body">
                        <f:form  modelAttribute="LoginVO" class="form-horizontal m-t-20"  action="updatePassword.html" method="post">
                            <div class="form-group">
                              <label for="usr">Email</label>
                             	<f:input path="username" class="form-control py-4" id="inputEmailAddress" type="email" placeholder="Enter email address"  />
                             	
                             </div>
                            <div class="form-group">
                              <label for="password">New Password</label>
                             	<f:input path="password" class="form-control py-4" id="inputPassword" type="password" placeholder="Enter password" />
                             	
                             </div>
                            <div class="form-group">
                                <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                                </div>
                              <div class="form-group ">
                                <div class="float-right">
                             
                                <div class="btn-toolbar">
                                    <div class="submit" onclick="validatePassword()">
                                    <button type="submit" class="btn btn-primary">Change</button>
                                  
                                  <button type="reset" class="btn btn-primary">Cancel</button>
                                </div>
                                   </div>
                                </div>
                            </div>
                              
                        </f:form>
                        </div>
               		 </div>

            	</div>
            	<div class="col-xl-5 col-sm-6 p-2 ">
                



            	</div>
       		 </div>

	    </div>

		</div>
	</div>
</div>
<!-- end of cards -->
<jsp:include page="Footer.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo "
    crossorigin="anonymous "></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js " integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49 "
    crossorigin="anonymous "></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js " integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T "
    crossorigin="anonymous "></script>
<script src="script.js "></script>
</body>

</html>