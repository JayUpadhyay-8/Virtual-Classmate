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
      <jsp:include page="Header.jsp"></jsp:include>                       <!---HEADER CODE HERE-->
    <!--header end-->
    <!--sidebar start-->
                      <jsp:include page="sidebar.jsp"></jsp:include>          <!---SIDEBAR CODE HERE-->        
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
                                    <h6 style="color: white;">Teacher Photo Upload</h6>
                                </div>
                                <i class="fas fa-cloud-upload-alt"></i>
                            </div>
                        </div>
                    
    
                        <div class="card-body">
                            <div class="row">
                              <p>Teacher ID : 134567</p><br/></div>
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
                                    <h6 style="color: white;">Teacher Identity Card</h6>
                                </div>
                                <i class="fas fa-id-card-alt"></i>
                            </div>
                          </div>
                       
                        <div class="card-body ">
                            <h5 style="text-align:center;color: red;">Teacher Identity Card</h5><br/>
                            <div class="ccard">
                                <h4>PODAR</h4><h6>INTERNATIONAL SCHOOL</h6>
                                <div class= "row no-gutters"> 
                                <img src="<%=request.getContextPath()%>/adminResources/assets/images/curt.png" alt="John" style="width:100%"><br/> 
                               
                                 <table>
                                    <tr><td>Name</td><td> : N.V Patel
                                    </td></tr><br/>
                                    <tr><td>Gender</td><td> : Male</td></tr><br/>
                                      
                                      <tr><td>Date Of Birth</td><td> : 6/12/1998</td></tr><br/>
                                      <tr><td>Joining Date</td><td> : 12/02/2019</td></tr><br/>
                                      <tr><td>Subject</td><td> : English</td></tr><br/>
                                      <tr><td>Class</td><td> : 4</td></tr><br/>
                                      <tr><td>Section</td><td> : A</td></tr><br/>
                           
                               <tr><td>Blood Group</td><td>  :  B +ve</td></tr> <br/>
                               <tr><td>Address </td><td>     : Abc Society,Xyz Banglo,Ahmedabad.</td></tr><br/><br/>
                               </div>
                            
                       
    
                           
                                        
                                                                             
                              <tr><td> Contact No. : 1234567891</td><td><div class="qrbox"><img src="qr.png" alt="QR-CODE" style="width:50%"></div></td></tr>
                            </table>
                               </div>
                            </div>
                            </div>
                                                                    
                    
                    
                
    
    
                    <div class="card card-common ">
                        <div class="card-header " style="background-color:grey; color:white;">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Edit Teacher Identity Card Details</h6>
                                </div>
                                <i class="fas fa-id-card-alt"></i>
                            </div>
                        </div>
                        <div class="card-body">
                            
                                <form>
                                    <table>
                                <div class="form-group row">
                                <tr><td></td><label for="name" >Teacher Name</label></tr>
                                 <tr><td></td> <input type="text" class="form-control" id="name" value="Vishal Nayak" required></tr>
                                </div>
                                
                                <tr>  <td><label for="gender" class="col-sm-0 col-form-label">Gender</label></td>
                                  
                                       <td> <input type="text" class="form-control" id="gender" value="Male" required></td>
                                  
                                    </tr>
                                    <tr>  <td><label for="dob" class="col-sm-0 col-form-label">Date Of Birth</label></td>
                                  
                                        <td> <input type="date" class="form-control" id="dob" value="12/12/2020" placeholder="12/12/2020" required></td>
                                   
                                     </tr>
                                    
                                    <tr>  <td><label for="Joiningdate" class="col-sm-0 col-form-label">Joining Date</label></td>
                                  
                                        <td> <input type="date" class="form-control" id="joiningdate" value="12/02/2019"placeholder="12/02/2019" required></td>
                                   
                                     </tr>
                                     <tr>  <td><label for="subject" class="col-sm-0 col-form-label">Subject</label></td>
                                  
                                        <td> <input type="text" class="form-control" id="subject" value="English" required></td>
                                   
                                     </tr>
                                    
                                     <tr>  <td><label for="class" class="col-sm-0 col-form-label">Class</label></td>
                                  
                                        <td> <input type="number" class="form-control" id="class" value="4" required></td>
                                   
                                     </tr>
                                     <tr>  <td><label for="section" class="col-sm-0 col-form-label">Section</label></td>
                                  
                                        <td> <input type="text" class="form-control" id="section" value="A" required></td>
                                   
                                     </tr>
                                     <tr>  <td><label for="subject" class="col-sm-0 col-form-label">Subject</label></td>
                                  
                                        <td> <input type="text" class="form-control" id="subject" value="English" required></td>
                                   
                                     </tr>
                                    
    
                                <tr>
                                <td><label for="address" class="col-sm-0 col-form-label">Address</label></td>
                                   <td> <textarea class="form-control rounded-0" id="address" rows="3" placeholder="Abc Society,Near xyz Banglo,Ahmedabad"></textarea></td> 
                               </tr><tr>
                                    <td><label for="pincode" class="col-sm-0 col-form-label">Pin Code</label></td>
                                       <td> <input type="number" class="form-control" id="pincode" value="303002" required></td>
                                  
                               </tr>
                               <tr>
                                <td><label for="contact" class="col-sm-0 col-form-label">Contact Number</label></td>
                                    <td><input type="tel" class="form-control" id="contact" value="9158785285" pattern="[0-9]{10}" title="Must contain 10 digits" required></td>
                                
                                </tr>
                                <tr>
                                      <td><label for="contact" class="col-sm-0 col-form-label">Blood Group</label></td>
                                        <div class="col-sm-7">
                                           <td> <div class="selectwidth ">
                                                <select class="browser-default custom-select">
                                                    <option selected>B +ve</option>
                                                    <option value="1 ">A +ve</option>
                                                    <option value="2 ">A -ve</option>
                                                    <option value="3 ">B -ve</option>
                                                    <option value="4 ">AB +ve</option>
                                                    <option value="5 ">AB -ve</option>
                                                    <option value="6 ">O +ve</option>
                                                    <option value="7 ">O -ve</option>
                                                
                                                </select>
                                            </div>
                                           </td>
                                        </div>
                                   </tr>
    
                         
                                        
                                </table><br/>
                                <div class="form-group ">
                                    <div class="float-right">
                                 
                                    <div class="btn-toolbar">
                                        <button type="button" class="btn btn-primary">Edit</button>
                                      
                                      <button type="reset" class="btn btn-primary">Cancel</button>
                                       </div>
                                    </div>
                                </div>
                             
                         
                            </form>
                        </div>
                    </div>
                    
                        
                 
                        
                                 
                                
                           
                
                            
                       
    
    
                </div>
            </div>
    
        </div>
    
    </div>
        </div>
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