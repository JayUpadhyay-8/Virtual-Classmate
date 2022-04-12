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
          <jsp:include page="Header.jsp"></jsp:include>                     <!---HEADER CODE HERE-->
    <!--header end-->
    
    <!--sidebar start-->
             <jsp:include page="sidebar.jsp"></jsp:include>                <!---SIDEBAR CODE HERE-->        
    <!-- end of sidebar -->

    <!-- cards -->
    <div class="col-xl-8 col-lg-8 col-md-8">

        <div class="container-fluid">

            <div class="row pt-md-4 mt-md-3 mb-5">
                <div class="col-xl-7 col-sm-6 p-2 ">


                    
                    <div class="card card-common">
                        <div class="card-header" style="background-color: brown;color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Record,Play and Save video</h6>
                                </div>
                                <i class="fas fa-video"></i>
                            </div>
                        </div>
                        <div class="card-header"style="color: white;">



                           
                        <div class="card-body">
                            <div class="text-center">
							<form action="Video.html">
                        <!--     	<button type="button" class="btn btn-primary btn-lg" style="align-items: center;background-color: brown;font-weight: bold;">To Record a video Click here</button>
                         --><input type="submit" value="To Record a video Click here" class="btn btn-primary btn-lg" style="align-items: center;background-color: brown;font-weight: bold;"	>
                         </form>
                        </div>
                        </div> 
                           
                             
                        </div>
                    </div>    



                    <div class="card card-common">
                        <div class="card-header" style="background-color: rgb(255, 166, 0);color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Notifications</h6>
                                </div>
                                <i class="fas fa-comments"></i>
                            </div>
                        </div>
                        <div class="card-header" style="background-color: rgba(255, 166, 0, 0.788);color: white;">

                            <div class="row">
                                <div class="selectwidth">
                                    <select class="browser-default custom-select">
                                        <option selected>Jun-2020</option>
                                        <option value="1">Jul-2020</option>
                                        <option value="2">Aug-2020</option>
                                        <option value="3">Nov-2020</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="card example-1 scrollbar-ripe-malinka">
                        <div class="card-body">
                            <div class="row">

                                Great Podar International School's Teacher Dashboard<br/>
                                <br/><h6 style="color: #ff9900;">Mukesh Yadav </h6> <h6 style="color:#2BBBAD"> / 5 min ago</h6><br/></div><br/>
                                
                                <div class="row">

                                    Great Podar International School's Teacher Dashboard<br/>
                                    <br/><h6 style="color: #ff9900;">Mukesh Yadav </h6> <h6 style="color:#2BBBAD"> / 5 min ago</h6><br/></div><br/>
                                    <div class="row">

                                        Great Podar International School's Teacher Dashboard<br/>
                                        <br/><h6 style="color: #ff9900;">Mukesh Yadav </h6> <h6 style="color:#2BBBAD"> / 5 min ago</h6><br/></div><br/>
                        </div> 
                           
                             
                        </div>
                    </div>
                   
                
                    


                    <div class="card card-common">
                        <div class="card-header" style="background-color:#c51162;color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Write new message</h6>
                                </div>
                                <i class="fas fa-comments"></i>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="card text-center">
                                <h5 class="card-title">Please select the recipient and type Message</h5>
                            </div>
                            <br/>
                            <div class="d-flex justify-content-between">
                                <div class="row">
                                    <div class="selectwidth">
                                        <select class="browser-default custom-select">
                                            <option selected>Admin-Principal Ahmedabad</option>
                                            <option value="1">Admin-Principal Gandhinagar</option>
                                            <option value="2">Students</option>
                                            <option value="3">Teachers</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12">
                                        <form action="" method="POST" enctype="multipart/form-data" id="form_id">
                                            <label></label>
                                            <div class="selectwidth">
                                                <input type="text" name="career[name]" class="form-control" tabindex="1" placeholder="Message subject" pattern="[a-zA-Z. ]{1,50}"
                                                    required>
                                            </div>
                                            <br/>
                                            <div class="selectwidth">
                                                <textarea class="form-control rounded-0" id="exampleFormControlTextarea1" rows="8"></textarea>
                                            </div>
                                            <br/>
                                            <button class="btn btn-success btn-lg float-right" type="submit"> Post</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="card card-common">
                        <div class="card-header" style="background-color:#aa00ff; color:white; ">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Sent Messages</h6>
                                </div>
                                <i class="fas fa-comments "></i>
                            </div>
                        </div>
                        <div class="card-header" style="background-color:#aa66cc;">
                            <div class="row">

                                <div class="selectwidth ">
                                    <select class="browser-default custom-select">
                                        <option selected>Jun-2020</option>
                                        <option value="1 ">Mar-2020</option>
                                        <option value="2 ">Apr-2020</option>
                                        <option value="3 ">May-2020</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="card-body ">





                            <div class="bottom-border pb-3 ">
                                <a href="# " class="">
                                    <div class="d-flex">
                                        <img src="cust4.jpeg " width="50 " class="rounded-circle mr-3 ">
                                        <div class="col">
                                            <div class="d-flex justify-content-between">
                                                <div class="text-left small " style="color: black;">Name</div>
                                                <p class="text-danger small" id="timestamp ">14/05/2020 06:28 PM</p>
                                            </div>

                                            <span class="text-secondary small" id="message ">roll no?</span>
                                        </div>
                                    </div>
                                </a>

                            </div>




                        </div>
                    </div>




                    <div class="card card-common ">
                        <div class="card-header " style="background-color:#c51162; color:white;">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">News Letter</h6>
                                </div>
                                <i class="far fa-newspaper"></i>
                            </div>
                        </div>
                        <div class=" card-body ">
                            <div class="overflow-auto">...</div>
                        </div>

                    </div>
                </div>
                 <div class="col-xl-5 col-sm-6 p-2 ">
                    <div class="card card-common ">
                        <div class="card-header" style="background-color: blue;color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Student's Attendace</h6>
                                </div>
                                <i class="fas fa-child"></i>
                            </div>
                        </div>
                        

                        <div class="card-body ">
                            <div class="row">

                                <canvas id="mycanvas" width="256" height="256"></canvas>
                                <div class="row">
                                    <div class="selectwidth">
                                        <select class="browser-default custom-select">
                                            <option selected>Jul-2020</option>
                                            <option value="1">Aug-2020</option>
                                            <option value="2">Sep-2020</option>
                                            <option value="3">Nov-2020</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <br/>
                    <div class="form-group ">
                        <div class="float-right">
                     
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-primary">Edit</button>
                          
                          <button type="reset" class="btn btn-primary">Cancel</button>
                           </div>
                        </div>
                    </div>
                        </div>
                    </div> 


                    <div class="card card-common ">
                        <div class="card-header " style="background-color:#00695c; color:white;">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Podar Edspeak</h6>
                                </div>
                                <i class="fas fa-tv"></i>
                            </div>
                        </div>
                        <div class="card-body ">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/v64KOxKVLVg" allowfullscreen></iframe>
                            </div>
                        </div>

                    </div>

                    <div class="card card-common ">
                        <div class="card-header " style="background-color:#CC0000; color:white;">
                            <div class="d-flex justify-content-between ">
                                <div class="text-left text-secondary ">
                                    <h6 style="color:white; ">Login Details</h6>
                                </div>
                                <i class="fas fa-lock"></i>
                            </div>
                            <span class="small" id="login-derails">last account activity: 7/5/2020 2:02:41 PM</span>




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