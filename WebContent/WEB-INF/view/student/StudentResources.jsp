<!doctype html>
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
    <jsp:include page="Header.jsp"></jsp:include>  
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
                                                <img src="cust4.jpeg " width="100  " class="img-thumbnail rounded img-fluid">
                                                <!--<i class="fas fa-user fa-3x text-secondary"></i>-->
                                                <p>
                                                    <b>PODAR INTERNATIONAL SCHOOL</b>
                                                    <div class="text-secondary">Name</div>
                                                </p>
                                            </div>




                                        </div>
                                        <div class="card-footer text-secondary text-center" style="background-color: white">
                                            <div class="row">
                                                <div class="col" id="std">
                                                    <p class="small">Std:1-8</p>
                                                </div>
                                                <div class="col" id="time">
                                                    <p class="small">Morning</p>
                                                </div>
                                                <div class="col" id="rollno">
                                                    <p class="small">Roll No:27</p>
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
                                    <a href="#" class="nav-link text-white p-3 mb-2 current " style="background-color:#aa00ff; color:white; border-radius: 4px; ">
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
                                    <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link" style="background-color:#f06292 ; color:white; border-radius: 4px;">
                                        <i class="fas fa-sign-out-alt text-light fa-lg mr-3"></i>SIGNOUT</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of sidebar -->



            <!-- cards -->
            <div class="col-xl-8 col-lg-8 col-md-8">

                <div class="container-fluid">

                    <div class="row pt-md-4 mt-md-3 mb-5">
                        <div class="col-xl-7 col-sm-6 p-2 ">

                            <a href="# " class=" p-2 btn " style="color:white; background-color: indigo; margin-top:15px; width: 100%;">

                                <div class="d-flex">
                                    <i class="far fa-calendar-alt fa-lg fa-3x mr-3"></i>

                                    <div class="col">
                                        <i class="fas fa-download"></i>
                                        <span class="small">CLICK HERE TO DOWNLOAD </span>
                                        <a href="download.html">Download File</a>
                                         <p class=" font-weight-bold psize" style="font-size:14px;">VIRTUAL SCHOOL TIME TABLE</p>
                                    </div>
                                </div>

                            </a>

                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#c51162; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <span class="" style="color:white; ">VirtualSchool Timetable Plan - Tutorial Video</span>
                                        </div>
                                        <i class="fas fa-tv "></i>
                                    </div>
                                </div>
                                <div class="card-body ">
                                    <div class="embed-responsive embed-responsive-16by9 ">
                                        <iframe class="embed-responsive-item " src="https://www.youtube.com/embed/v64KOxKVLVg " allowfullscreen></iframe>
                                    </div>
                                </div>

                            </div>







                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#e91e63; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Cycle Test & Subject</h6>
                                        </div>
                                        <i class="fas fa-clipboard-check"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <div class="row mb-2">

                                        <div class="selectwidth ">
                                            <select class="browser-default custom-select ">
                                                <option selected>Select Term</option>
                                                <option value="1 ">Term 1</option>
                                                <option value="2 ">Term 2</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="row mb-2">

                                        <div class="selectwidth ">
                                            <select class="browser-default custom-select ">
                                                <option selected>Select Subject</option>
                                                <option value="1 ">Computer</option>
                                                <option value="2 ">Maths</option>
                                                <option value="3 ">Science</option>
                                                <option value="4 ">Hindi</option>
                                                <option value="5 ">Social Science</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#CC0000; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Topics</h6>
                                        </div>
                                        <i class="fas fa-align-justify"></i>
                                    </div>
                                </div>
                                <div class=" card-body">
                                    <span class="small text-secondary">Please click the topic to view the resources available</span>
                                    <div class="border-bottom btn selectwidth text-left">
                                        <a href="#" style=" text-decoration: none; color:red;">Introduction to Computers</a>
                                    </div>
                                    <div class=" border-bottom btn selectwidth text-left">
                                        <a href="# " style=" text-decoration: none; color:red;">Using Computers-D's and Don'ts</a>
                                    </div>
                                    <div class="border-bottom btn selectwidth text-left">
                                        <a href="# " style=" text-decoration: none; color:red;">Parts of a Computers</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="col-xl-5 col-sm-6 p-2 ">
                            <div class="card card-common ">
                                <div class="card-header " style="background-color: #c51162;color: white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color: white; ">Resources</h6>
                                        </div>
                                        <i class="fas fa-desktop "></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <div class="btn p-2 mb-2 small " style="background-color:indigo; color:white; font-size:10px ">
                                        <i class="fas fa-download "></i> HELP DOCUMENT FOR ASSIGNMENT SUBMISSION</div><br/>
                                    <span class="small ">Click on the resources to download</span>
                                </div>
                            </div>
							 <div class="card card-common ">
                        <div class="card-header " style="background-color:#00695c; color:white;">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Teacher Recorded Video </h6>
                                   
                                  <%String s1=(String)session.getAttribute("fpath");
                                  	String fileN=(String)session.getAttribute("filename");
                                  	String path=session.getServletContext().getRealPath("/");
                                  	System.out.print("path here="+path);
                                  	System.getProperties();%>
                                   
                                </div>
                                <i class="fas fa-tv"></i>
                            </div>
                        </div>
                        <div class="card-body ">
                            <div class="embed-responsive embed-responsive-16by9">
                           <%--      <iframe class="embed-responsive-item" src="<%request.getContextPath(); %><%=s1 %>" allowfullscreen></iframe>
                       ..//.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/VirtualClassmate/     --%> <iframe class="embed-responsive-item" src="D:/vc (update 21.09.20)/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/VirtualClassmate/<%=fileN%>"></iframe>
                             </div>
                        </div>

                    </div>




                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- end of cards -->
    <footer class="page-footer font-small " style="background-color: black; color:white; ">
        <div class="footer-copyright text-center text-secondary py-3 " style="font-size:14px; ">© 2020 Copyright PodarInternationalSchool

        </div>
    </footer>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo "
        crossorigin="anonymous "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js " integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49 "
        crossorigin="anonymous "></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js " integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T "
        crossorigin="anonymous "></script>
    <script src="script.js "></script>
</body>

</html>