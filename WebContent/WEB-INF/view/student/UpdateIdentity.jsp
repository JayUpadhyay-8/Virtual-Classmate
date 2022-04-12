<!doctype html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
            </div>                                                  <!--SIDEBAR CODE HERE-->
    <!-- end of sidebar -->






 <!-- cards -->
           
<div class="col-xl-8 col-lg-8 col-md-8">

    <div class="container-fluid">

        <div class="row pt-md-4 mt-md-3 mb-5">
            <div class="col-xl-7 col-sm-6 p-2 ">
                <div class="card card-common">
                    <div class="card-header" style="background-color:#ff1476;color: white;">
                        <div class="d-flex justify-content-between">
                            <div class="text-left text-secondary">
                                <h6 style="color: white;">Student Photo Upload</h6>
                            </div>
                            <i class="fas fa-cloud-upload-alt"></i>
                        </div>
                    </div>
                

                    <div class="card-body">
                        <div class="row">
                          <p>Student ID : 134567</p><br/></div>
                          <div class="row">
                              
                              <input type="file" id="myFile" name="filename2" accept="image/*" onchange="readURL(this);"><h6>Max 4 Mb</h6></div>
                            
                                <div class="float-right">
                              <img id="blah" src="<%=request.getContextPath()%>/adminResources/assets/images/im.png" alt="Upload Your Image Here" height="150" width="150" /><div class="bottom"><br/><button type="submit">Upload</button></div></div>
                             

                    </div>
                </div>
            
               
               




                <div class="card card-common">
                    <div class="card-header" style="background-color:red;color: white;">
                        <div class="d-flex justify-content-between">
                            <div class="text-left text-secondary">
                                <h6 style="color: white;">Steps to Upload photo</h6>
                            </div>
                            <i class="fas fa-tasks"></i>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                        <p style="color: red;">Following are the steps to upload photo.</p>
                        
                        Step-1 : Click on the respective link "Choose File".<br/>
                        Step-2 : Browse & Select the location where the Scanned Photo file has been saved.<br/>
                        Step-3 : Select the file by clicking on it. Click the 'Upload' button.
                        <br/><br/>
                        For more information <a href="#">Click Here.</a>
                        </div>
                    </div> 
                </div>   
            </div>                                
                            
                        
                    

                

            <div class="col-xl-5 col-sm-6 p-2 ">
                <div class="card card-common ">
                    <div class="card-header" style="background-color: grey;color: white;">
                        <div class="d-flex justify-content-between">
                            <div class="text-left text-secondary">
                                <h6 style="color: white;">Student Identity Card</h6>
                            </div>
                            <i class="fas fa-id-card-alt"></i>
                        </div>
                      </div>
                   
                    <div class="card-body ">
                        <h5 style="text-align:center;color: red;">Student Identity Card</h5><br/>
                        <div class="ccard">
                            <h4>PODAR</h4><h6>INTERNATIONAL SCHOOL</h6>

                            <img src="<%=request.getContextPath()%>/adminResources/assets/images/curt.png" alt="John" style="width:100%">
                           
                            Name : <c:forEach items="${uinfo}" var="i" >
    														<c:out value = "${i.studentVO.name}"/>
      													</c:forEach> 
                           
                             <table>
                                  <tr><td>Date Of Birth :</td><td><c:forEach items="${uinfo}" var="i" >
    														<c:out value = "${i.studentVO.dob}"/>
      													</c:forEach> </td></tr><br/>
                       
                           <tr><td>Blood Group :</td><td>    <c:forEach items="${uinfo}" var="i" >
    														<c:out value = "${i.studentmedicalVO.bg}"/>
      													</c:forEach> </td></tr> <br/>
                           <tr><td>Address : </td><td>     <c:forEach items="${uinfo}" var="i" >
    														<c:out value = "${i.studentVO.h_name}"/><c:out value=","/> 
    														<c:out value = "${i.studentVO.landmark}"/><c:out value=","/>
    														<c:out value = "${i.studentVO.area}"/><c:out value=","/>
    														<c:out value = "${i.studentVO.city}"/><c:out value=","/>
    														<c:out value = "${i.studentVO.state}"/><c:out value=","/>
    														<c:out value = "${i.studentVO.country}"/><c:out value=","/>
    														<c:out value = "${i.studentVO.pin}"/>
      													</c:forEach></td></tr><br/><br/>
                           
                        
                   

                       
                                    
                                                                         
                          <tr><td> Contact No. : <c:forEach items="${uinfo}" var="i" >
    														<c:out value = "${i.studentVO.mobile_number}"/>
      													</c:forEach></td><td>   <div class="qrbox"><img src="<%=request.getContextPath()%>/adminResources/assets/images/qr.png" alt="QR-CODE" style="width:50%"></div></td></tr>
                        </table>
                           </div>
                        </div>
                        </div>
                                                                
                		<a href="editIdentity.html?id=${i.id}">Want to edit ?</a>
                		
                
            


                <div class="card card-common ">
                    <div class="card-header " style="background-color:grey; color:white;">
                        <div class="d-flex justify-content-between ">
                            <div class="text-left text-secondary ">
                                <h6 style="color:white; ">Edit Student Identity Card Details</h6>
                            </div>
                            <i class="fas fa-id-card-alt"></i>
                        </div>
                    </div>
                    <div class="card-body">
                        
                            <f:form action="insertinfo.html"  method="post" modelAttribute="IdentityVO">
                                <table>
                            <div class="form-group row">
                            <tr><td></td><label for="name" >Student Name</label></tr>
                             <tr><td></td> <f:input type="text" path="name" class="form-control" required="required" /></tr>
                            </div>
                            
                            <tr>  <td><label for="dob" class="col-sm-0 col-form-label">Date Of Birth</label></td>
                              
                                   <td> <f:input type="text" path="dob" class="form-control" required="required" /></td>
                              
                                </tr>
                              
                            <tr>
                            <td><label for="address" class="col-sm-0 col-form-label">Address</label></td>
                               <td> <f:textarea class="form-control rounded-0" path="address" required="required"></f:textarea></td> 
                           </tr><tr>
                                <td><label for="pincode" class="col-sm-0 col-form-label">Pin Code</label></td>
                                   <td> <input type="text" class="form-control" path="pincode" required="required"></td>
                              
                           </tr>
                           <tr>
                            <td><label for="contact" class="col-sm-0 col-form-label">Contact Number</label></td>
                                <td><input type="email" class="form-control" path="number" required="required"></td>
                            
                            </tr>
                            <tr>
                                  <td><label for="contact" class="col-sm-0 col-form-label">Blood Group</label></td>
                                    <div class="col-sm-7">
                                       <td> <div class="selectwidth ">
                                            <f:input type="text" class="browser-default custom-select" path="blood_group" />
                                        	<f:hidden path="id"/>	
                                        </div>
                                       </td>
                                    </div>
                               </tr>

                     
                                    
                            </table><br/>
                            <div class="form-group ">
                                <div class="float-right">
                             
                                <div class="btn-toolbar">
                                    <input type="submit" class="btn btn-primary" value="Edit"/>
                                  
                                  <input type="reset" class="btn btn-primary" value="Cancel"/>
                                   </div>
                                </div>
                            </div>
                         
                     
                        </f:form>
                    </div>
                </div>
                
                    
             
                    
                             
                            
                       
            
                        
                   


            </div>
        </div>

    </div>
	<jsp:include page="Footer.jsp"></jsp:include>
</div>
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