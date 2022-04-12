<!doctype html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 
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
                                                                              <!--HEADER CODE HERE-->
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
    									</div>
    								</div>
    							 </li>
                                <jsp:include page="Menu.jsp"></jsp:include>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>                                                                                               <!--SIDEBAR CODE HERE-->
    <!-- end of sidebar -->






 <!-- cards -->
   
            <div class="col-xl-8 col-lg-8 col-md-8">

                <div class="container-fluid">

                    <div class="row pt-md-4 mt-md-3 mb-5">
                        <div class="col-xl-7 col-sm-6 p-2 ">

                            
                            <div class="card card-common ">
                                <div class="card-header " style="background-color:rgb(1, 196, 255); color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <span class="" style="color:white; ">Parent Information</span>
                                        </div>
                                        <i class="fas fa-users"></i>
                                    </div>
                                </div>
                                <div class="card-body ">
                                    <form>
                                        <h7 style="color: blue;">Communication Information</h7><br/>
                                        <br/><div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.email}"/>
      													</c:forEach> "  readOnly="true" required>
                                          </div>
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.mobile_number}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                        </div><br/>
                                        <h7 style="color: blue;">Communication Address</h7><br/>
                                        <br/><div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="House name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.h_name}"/>
      													</c:forEach> " readOnly="true"  required>
                                          </div>
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.landmark}"/>
      													</c:forEach> " readOnly="true"  required>
                                          </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col">
                                               <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.area}"/>
      													</c:forEach> " readOnly="true"  required>
                                            </div>
                                            <div class="col">
                                               <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.pin}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                          </div>
                                          
                                        <div class="row mb-2">
                                            <div class="col">

                                          <div class="selectwidth">
                                               <input type="email" class="form-control" id="email" placeholder="Ahmedabad" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.city}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                      </div>
                                      </div>
  									<div class="row mb-2">
                                              <div class="col">

                                            <div class="selectwidth">
                                                  <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.state}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col">
    
                                            <div class="selectwidth ">
                                               <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentVO.country}"/>
      													</c:forEach> " readOnly="true" required>  
                                            </div>
                                        </div>
                                        </div>
                                        
                                      </form>
                                    </div>

                            </div>







                            <div class="card card-common ">
                                <div class="card-header " style="background-color:rgb(1, 196, 255); color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Father Information</h6>
                                        </div>
                                        <i class="fas fa-users"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <form>
                                        <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.fname}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>
                                       <!-- <div class="row mb-2">
                                            <div class="col">
                                              <input type="date" class="form-control" id="date" placeholder="6/6/2000">
                                            </div>
                                            <div class="col">
                                             
                                            </div>
                                          </div> --> 
                                      
                                   
                                     <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.fedu}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>

                                     <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.fcaste}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>                                    
                                        <div class="row mb-2">

                                        <div class="col">
                                            <div class="selectwidth ">
                                                <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.religion}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                        </div>
                                    </div>
                                    
                                   
                                        <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.focc}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>  
                                        
                                        <div class="row mb-2">

                                        <div class="col">
                                            <div class="selectwidth ">
                                                <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.fmno}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                        </div>
                                    </div>
    
                                    
                                </form>
                                </div>
                            </div>



                        </div>
                        <div class="col-xl-5 col-sm-6 p-2 ">
                            <div class="card card-common ">
                                <div class="card-header " style="background-color:rgb(33, 114, 160); color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Mother Information</h6>
                                        </div>
                                        <i class="fas fa-users"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <form>
                                       <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.mname}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>  
                                        <!-- <div class="row mb-2">
                                            <div class="col">
                                              <input type="date" class="form-control" id="date1" placeholder="6/6/2000">
                                            </div>
                                            <div class="col">
                                             
                                            </div>
                                          </div> -->
                                      
                                   
                                    <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.medu}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>                                    
                                        
                                       <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.mcaste}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>
                                         <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.religion}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>  
                                   <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.mmno}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>  
                                   
                                   
                                   <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.mocc}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <!-- <div class="col">
                                            <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                          </div> -->
                                        </div>    
                                    
                                </form>
                                </div>
                            </div>
                            
                           

                            <div class="card card-common ">
                                <div class="card-header " style="background-color: rgb(255, 153, 0);color: white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color: white; ">Emergency Contact Person</h6>
                                        </div>
                                        <i class="fas fa-lightbulb"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <form>
                                        <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.l_name}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.f_name}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                        </div>
                                        
                                          <div class="row mb-2">
                                            <div class="col">
                                              <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.relation}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                            <div class="col">
                                              <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.mno}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                          </div>
                                    </form>
                                </div>
                            </div>

                            <div class="card card-common ">
                                <div class="card-header " style="background-color: red;color: white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color: white; ">Medical Information</h6>
                                        </div>
                                        <i class="fas fa-tint"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <form>
                                        <div class="row mb-2">

                                            <div class="col">
                                                <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.bg}"/>
      													</c:forEach> " readOnly="true" required>
                                                </div>
                                        </div>
    
                                        <div class="row mb-2">
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.allergy}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                          <div class="col">
                                            <input type="email" class="form-control" id="email" placeholder="Diseases" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.disease}"/>
      													</c:forEach> " readOnly="true" required>
                                          </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col">
                                              <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.weight}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                            <div class="col">
                                              <input type="email" class="form-control" id="email" placeholder="name" value="<c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.height}"/>
      													</c:forEach> " readOnly="true" required>
                                            </div>
                                          </div>
                                          <div class="row mb-2">
                                            <div class="col">
                                                <div class="form-group">
                                                    <textarea type="text" class="form-control" id="txt" placeholder="Regular Meditation" readOnly="true"><c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.regular_medication}"/>
      													</c:forEach></textarea>
                                                  </div>
                                            </div>
                                            
                                          </div>
                                         
                                          
                                          <div class="row mb-2">
                                            <div class="col">
                                                <div class="form-group">
                                                    <textarea type="text" class="form-control" id="txt3" placeholder="Exemption from activities" readOnly="true"><c:forEach items="${iinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.pia}"/>
      													</c:forEach></textarea>
                                                  </div>
                                            </div>
                                            
                                          </div>
                                         
                                          
                                        
                                    </form>
                                </div>
                            </div> <br/><br/>




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