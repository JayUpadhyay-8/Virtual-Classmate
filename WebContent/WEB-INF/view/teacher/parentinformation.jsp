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
              <jsp:include page="Header.jsp"></jsp:include>               <!---HEADER CODE HERE-->
    <!--header end-->
    <!--sidebar start-->
             <jsp:include page="sidebar.jsp"></jsp:include>                <!---SIDEBAR CODE HERE-->        
    <!-- end of sidebar -->

    <!-- cards -->
    <div class="col-xl-8 col-lg-8 col-md-8">

        <div class="container-fluid">

            <div class="row pt-md-4 mt-md-3 mb-5">
                <div class="col-xl-7 col-sm-6 p-2 ">

                    
  <!--                   <div class="card card-common ">
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
                                    <input type="email" class="form-control" id="email" placeholder="Vishalnayak7@gmail.com" required>
                                  </div>
                                  <div class="col">
                                    <input type="number" class="form-control" id="mnumber" placeholder="7887959498" required>
                                  </div>
                                </div><br/>
                                <h7 style="color: blue;">Communication Address</h7><br/>
                                <br/><div class="row mb-2">
                                  <div class="col">
                                    <input type="text" class="form-control" id="ad1" placeholder="Abc Society" required>
                                  </div>
                                  <div class="col">
                                    <input type="text" class="form-control" id="ad2" placeholder="Near Def House" required>
                                  </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                      <input type="text" class="form-control" id="ad3" placeholder="Ghatlodiyan" required>
                                    </div>
                                    <div class="col">
                                      <input type="number" class="form-control" id="pin" placeholder="383002" required>
                                    </div>
                                  </div>
                                  <div class="row mb-2">
                                      <div class="col">

                                    <div class="selectwidth">
                                        <select class="browser-default custom-select ">
                                            <option selected>Gujarat</option>
                                            <option value="1 ">Select State</option>
                                            <option value="2 ">Delhi</option>

                                        </select>
                                    </div>
                                </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">

                                  <div class="selectwidth">
                                      <select class="browser-default custom-select ">
                                          <option selected>Ahmedabad</option>
                                          <option value="1 ">Select City</option>
                                          <option value="2 ">Gandhinagar</option>

                                      </select>
                                  </div>
                              </div>
                              </div>

                                <div class="row mb-2">
                                    <div class="col">

                                    <div class="selectwidth ">
                                        <select class="browser-default custom-select ">
                                            <option selected>India</option>
                                            <option value="1 ">Select Country</option>
                                            <option value="2 ">France</option>
                                            <option value="3 ">China</option>
                                            <option value="4 ">UK</option>
                                            <option value="5 ">US</option>
                                        </select>
                                    </div>
                                </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                      <input type="number" class="form-control" placeholder="9875643178">
                                    </div>
                                    <div class="col">
                                     
                                    </div>
                                  </div>
                               
                              </form>
                            </div>

                    </div>
 -->






                    <div class="card card-common ">
                        <div class="card-header " style="background-color:rgb(1, 196, 255); color:white; ">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Family Information</h6>
                                </div>
                                <i class="fas fa-users"></i>
                            </div>
                        </div>

                        <div class="card-body ">
                            <form>
                                Father Information
                                <div class="row mb-2">
                                  <div class="col">
                                    <input type="text" class="form-control" id="name" placeholder="NAYAK" required>
                                  </div>
                                  <div class="col">
                                    <input type="text" class="form-control" id="name1" placeholder="VISHAL" required>
                                  </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                      <input type="date" class="form-control" id="date" placeholder="6/6/2000">
                                    </div>
                                    <div class="col">
                                     
                                    </div>
                                  </div>

                                  <div class="row mb-2">
                                    <div class="col">
                                    <div class="selectwidth ">
                                        <select class="browser-default custom-select ">
                                            <option selected>M.tech</option>
                                            <option value="1">Select Qualification</option>
                                            <option value="2 ">S.S.C</option>
                                            <option value="3 ">H.S.C</option>
                                            <option value="4 ">B.S.C</option>
                                            <option value="5 ">B.tech</option>
                                            <option value="6 ">M.S.C</option>
                                            <option value="7">Other</option>



                                        </select>
                                    </div>
                                </div>

                                </div>


                                  Mother Information
                                  <div class="row mb-2">
                                    <div class="col">
                                      <input type="text" class="form-control" id="name2" placeholder="NAYAK" required>
                                    </div>
                                    <div class="col">
                                      <input type="text" class="form-control" id="name3" placeholder="KRUPA" required>
                                    </div>
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                      <input type="date" class="form-control" id="date1" placeholder="6/6/2000">
                                    </div>
                                    <div class="col">
                                     
                                    </div>
                                  </div>


                                  <div class="row mb-2">
                                    <div class="col">
                                    <div class="selectwidth ">
                                        <select class="browser-default custom-select ">
                                            <option selected>M.E</option>
                                            <option value="1">Select Qualification</option>
                                            <option value="2 ">S.S.C</option>
                                            <option value="3 ">H.S.C</option>
                                            <option value="4 ">B.S.C</option>
                                            <option value="5 ">B.E</option>
                                            <option value="6 ">M.S.C</option>
                                            <option value="7">Other</option>



                                        </select>
                                    </div>
                                </div>

                                </div>



                            
                        </form>
                        </div>
                    </div>



                </div>
                <div class="col-xl-5 col-sm-6 p-2 ">
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
                                    <input type="text" class="form-control" id="name4" placeholder="Last Name" required>
                                  </div>
                                  <div class="col">
                                    <input type="text" class="form-control" id="name5" placeholder="First Name" required>
                                  </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                      <input type="text" class="form-control" id="name6" placeholder="Middle Name" required>
                                    </div>
                                    <div class="col">
                                      <input type="email" class="form-control" id="email1" placeholder="Email ID" required>
                                    </div>
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                      <input type="text" class="form-control" id="name8" placeholder="Relationship" required>
                                    </div>
                                    <div class="col">
                                      <input type="number" class="form-control" id="mnumber2" placeholder="Mobile Number" required>
                                    </div>
                                  </div>
                            </form>
                        </div>
                        
                    </div>

  <!--                   <div class="card card-common ">

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
                                        <div class="selectwidth ">
                                            <select class="browser-default custom-select ">
                                                <option selected>B +ve</option>
                                                <option value="1 ">Select Blood Group</option>
                                                <option value="2 ">A +ve</option>
                                                <option value="3 ">A -ve</option>
                                                <option value="4 ">B -ve</option>
                                                <option value="5 ">O +ve</option>
                                                <option value="6 ">O -ve</option>
                                                <option value="7 ">AB +ve</option>
                                                <option value="8 ">AB -ve</option>
                                                <option value="9 ">Other</option>
                                                
                                            </select>
                                        </div>
                                        </div>
                                </div>

                                <div class="row mb-2">
                                  <div class="col">
                                    <input type="text" class="form-control" id="name9" placeholder="Any Allergies" required>
                                  </div>
                                  <div class="col">
                                    <input type="text" class="form-control" id="name10" placeholder="Health Information" required>
                                  </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                      <input type="number" class="form-control" id="mnumber3" placeholder="0" required>
                                    </div>
                                    <div class="col">
                                      <input type="number" class="form-control" id="mnumber4" placeholder="17" required>
                                    </div>
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" id="txt" placeholder="Regular Meditation"></textarea>
                                          </div>
                                    </div>
                                    
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" id="txt1" placeholder="Regular Meditation with dosage"></textarea>
                                          </div>
                                    </div>
                                    
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" id="txt2" placeholder="Any impairment"></textarea>
                                          </div>
                                    </div>
                                    
                                  </div>
                                  <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" id="txt3" placeholder="Exemption from activities"></textarea>
                                          </div>
                                    </div>
                                    
                                  </div>
                                 
                                  
                                
                            </form>
                        </div>
                        
                    </div>

                  <br/><br/><div class="float-right">
                     
                        <div class="btn-toolbar">
                            <button type="button" onclick="" class="btn btn-primary">Edit</button>
                          
                          <button type="reset" class="btn btn-primary">Cancel</button>
                           </div>
                        </div>
-->



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