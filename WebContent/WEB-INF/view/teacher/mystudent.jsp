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
            <jsp:include page="Header.jsp"></jsp:include>                    <!---HEADER CODE HERE-->
    <!--header end-->
    <!--sidebar start-->
            <jsp:include page="sidebar.jsp"></jsp:include>                    <!---SIDEBAR CODE HERE-->        
    <!-- end of sidebar -->

    <!-- cards -->
    <div class="col-xl-8 col-lg-8 col-md-8">


        <div class="container-fluid">
                      <br/><br/>  
                    <div class="card card-common">
                        <div class="card-header" style="background-color: red;color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">My Students</h6>
                                </div>
                                <i class="fas fa-user-graduate"></i>
                            </div>
                        </div>
                      
                        <div style="overflow-x:auto;">
                        <div class="card-body">
                            <div class="row"><div class="col">
                            <input class="form-control" type="text" placeholder="Search by Roll No. ...." aria-label="Search"></div>
                        <div class="col">
                        <input class="form-control" type="text" placeholder="Search by Name ...." aria-label="Search"></div>
                        <div class="col">
                    <input class="form-control" type="text" placeholder="Search by Class ...." aria-label="Search"></div>
                        <button type="submit" class="font-weight-bold" style="background-color: rgb(168, 168, 5); color: white; font-style: bold; ">SEARCH</button> 
                        </div><br/><form>
                                <table class="table table-striped">
                                    <thead>
                                      <tr>
                                        <th scope="col">Roll No.</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Parents</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Date Of Birth</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Email</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sinfo}" var="i" >
                                      <tr>
    													
                                        <th scope="row">	<c:out value = "${i.roll_no}"/>
      													</th>
                                        <td>				<c:out value = "${i.name}"/></td>
                                        <td>				<c:out value = "${i.gender}"/></td>
                                         <td>				<c:out value = "${i.fname}"/></td>
                                        <td>				<c:out value = "${i.h_name}"/></td>
                                        <td>				<c:out value = "${i.dob}"/></td>
                                        <td>				<c:out value = "${i.mobile_number}"/></td>
      								 	<td>				<c:out value = "${i.email}"/></td>
      													
                                      </tr>
                                    </c:forEach>
                                    </tbody>
                                  </table>
                                  
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