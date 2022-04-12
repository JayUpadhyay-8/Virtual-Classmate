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

    <style>
        table {
          border-collapse: collapse;
          border-spacing: 0;
          width: 100%;
          border: 1px solid #ddd;
        }
        
        th, td {
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even){background-color: #f2f2f2}
        </style>
    

</head>

<body>

   
    
    <!--header start-->
     <jsp:include page="Header.jsp"></jsp:include>                             <!---HEADER CODE HERE-->
    <!--header end-->
    <!--sidebar start-->
     <jsp:include page="sidebar.jsp"></jsp:include>                  <!---SIDEBAR CODE HERE-->        
    <!-- end of sidebar -->

    <!-- cards -->
    <div class="col-xl-8 col-lg-8 col-md-8">


        <div class="container-fluid">
                      <br/><br/>  
                    <div class="card card-common">
                        <div class="card-header" style="background-color: #c51162;color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Resources</h6>
                                </div>
                                <i class="fas fa-desktop "></i>
                            </div>
                        </div>
                      
                        <div style="overflow-x:auto;">
                        <div class="card-body">
                            <div class="row">
                                  
                                <!-- <input type="file" id="myFile1" name="filename3" onchange="readURL(this);"></div>
                              
                                  
                                <div class="bottom"><br/><button type="submit">Upload</button></div> -->
                                	<form method="POST" action="readfile.html" enctype="multipart/form-data">
											File to upload: <input type="file" name="file"><br />
											<input type="submit" value="Upload"> Press here to upload the file!
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