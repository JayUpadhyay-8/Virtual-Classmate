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
            </div>                                                                    <!--SIDEBAR CODE HERE-->
    <!-- end of sidebar -->






 <!-- cards -->
            <div class="col-xl-8 col-lg-8 col-md-8">

                <div class="container-fluid">

                    <div class="row pt-md-4 mt-md-3 mb-5">
                        <div class="col-xl-7 col-sm-6 p-2 ">



                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#CC0000; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <span class="" style="color:white; ">Message</span>
                                        </div>
                                        <i class="far fa-file-alt"></i>
                                    </div>
                                </div>
                                <div class="card-body ">
                                    <div class="my-custom-scrollbar my-custom-scrollbar-primary">
                                        <p>Dear Parent,</p>
                                        <p>Please note that for the benefit of our parents, the school has recently announced
                                            that all Fee Hikes for 2020-21 have been deferred by one academic year to 2021-22.</p>
                                        <p>The parent letter "Moving Forward Together" can be viewed here.
                                            <a href="#">Click here</a>
                                        </p>

                                        <p>We are happy to share that the fee Amounts reflected in the BetweenUs payment module
                                            now reflect the 2019-20 fee Amounts.</p>
                                        <p> Additionally, a 5% discount on full year's fee payment is reflected Lorem ipsum dolor
                                            sit amet consectetur adipisicing elit. Cumque voluptatum excepturi praesentium
                                            quia, architecto recusandae sequi cum, quae magni explicabo similique ipsam aliquam
                                            itaque, voluptatem optio voluptate. Consequuntur, voluptatibus sed?
                                        </p>
                                    </div>
                                </div>

                            </div>







                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#00b8d4; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Cycle Test & Subject</h6>
                                        </div>
                                        <i class="fas fa-clipboard-check"></i>
                                    </div>
                                </div>

                                <div class="card-body ">

                                    <div class="my-custom-scrollbar-2 my-custom-scrollbar-primary">
                                        <table class="table table-striped ">
                                            <thead>
                                                <tr class="table-dark">
                                                    
                                                    <th>SNo.</th>
                                                    <th>Fee Period</th>
                                                    <th>Actual Fee</th>
                                                    <th>Fees paid</th>
                                                    <th>Fees left</th>
                                                    <th>Paid date</th>
                                                  	<th>Due Date</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody style="font-size: 13px;">
                                                <tr>
                                                    
                                                    <td>
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.id}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.feePeriod}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.studentVO.fees}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.feesPaid}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.feesLeft}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.last_fees_paid_date}"/><p>
      													</c:forEach>
                                                    </td>
                                                    <td>
                                                    	<c:forEach items="${finfo}" var="i" >
    														<c:out value = "${i.due_date}"/><p>
      													</c:forEach>
                                                    </td>
                                                </tr>
                                          </tbody>
                                        </table>
                                    </div>
                                    <div class="row p-2">
                                        <div class="col-sm-6">
                                            Fee Amount
                                            <input type="text">
                                        </div>
                                        <div class="col-sm-3 p-2">
                                            <input type="radio" name="payment">Full Payment

                                        </div>
                                        <div class="col-sm-3 p-2">
                                            <input type="radio" name="payment">Part Payment
                                        </div>
                                        <div class="container p-2">
                                            Email Address
                                            <input style="width: 100%;" type="email">
                                        </div>
                                        <div class="container p-2">
                                            Father's Name
                                            <input style="width: 100%;" type="text">
                                        </div>
                                        <div class="container p-2">
                                            Mobile Number
                                            <input style="width: 100%;" type="text">
                                        </div>
                                        <div class="container p-2">
                                            Payment Method

                                        </div>
                                        <div class="container p-2">
                                            <input type="radio">
                                            <img class=" img-fluid mr-0 img-responsive" width="20%" src="payu.jpg"></img>
                                        </div>

                                        <div class="col-sm-8 p-2" style="font-size: 13px;">Note:5% overall Fee discount is added on the final term fees. If the parent pays
                                            all the terms togather then they can take advantage of this discount. Fee Discount
                                            is valid till 31st May 2020.</div>
                                        <div class="col-sm-4 p-2">
                                            <div class="btn btn-primary">Pay Fee</div>
                                        </div>


                                    </div>
                                </div>
                            </div>




                            <div class="card card-common ">
                                <div class="card-header " style="background-color:#aeea00; color:white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color:white; ">Topics</h6>
                                        </div>
                                        <i class="fas fa-align-justify"></i>
                                    </div>
                                </div>
                                <div class=" card-body">
                                    <div class="row">
                                        <div class="my-custom-scrollbar-2 my-custom-scrollbar-primary">
                                            <table class="table">
                                                <tr class="table-dark">
                                                    <th>
                                                        Receipt

                                                    </th>
                                                    <th>Description</th>
                                                    <th>Receipt Date</th>
                                                    <th>Receipt No</th>
                                                    <th>Amount</th>
                                                </tr>
                                                <tr class="table-active" style="font-size: 13px;">
                                                    <td>
                                                        <div type="button" class="btn btn-primary">Receipt</div>

                                                    </td>
                                                    <td>Term &#8544;/Term &#8545;</td>
                                                    <td>03/12/2019</td>
                                                    <td>REC-PRI139</td>
                                                    <td>14,900</td>
                                                </tr>
                                            </table>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-xl-5 col-sm-6 p-2 ">
                            <div class="card card-common ">
                                <div class="card-header " style="background-color: #FF8800;color: white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color: white; ">Payment Procedure</h6>
                                        </div>
                                        <i class="fas fa-sign"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <div class="container" style="font-size: 13px;">


                                        <dl class="row">
                                            <dt class="col-sm-3">
                                                <h1 style="color:#ff1744;">
                                                    <b>1</b>
                                                </h1>
                                            </dt>
                                            <dd class="col-sm-9" style="font-size: ">Please select the Term (by clicking on checkbox) right next to Term Name. You
                                                can also select more than one term to pay fees together.</dd>
                                            <dt class="col-sm-3">
                                                <h1 style="color:#ff1744;">
                                                    <b>2</b>
                                                </h1>
                                            </dt>
                                            <dd class="col-sm-9">Then click on Pay Fees, enter the valid information as per your credit card billing
                                                address. And proceed to Payment gateway.</dd>
                                            <dt class="col-sm-3">
                                                <h1 style="color:#ff1744;">
                                                    <b>3</b>
                                                </h1>
                                            </dt>
                                            <dd class="col-sm-9">Once you pay, please wait and do not close the browser till you are returned
                                                back to the portal, which shows successful payment.</dd>
                                            <dt class="col-sm-3">
                                                <h1 style="color:#ff1744;">
                                                    <b>4</b>
                                                </h1>
                                            </dt>
                                            <dd class="col-sm-9">You will receive an email from Payment Gateway with regards to succeccful payment.
                                                <br> Fees once paid through online payment is not refundable.</dd>


                                        </dl>

                                    </div>
                                </div>
                            </div>
                            <div class="card card-common ">
                                <div class="card-header " style="background-color: #CC0000;color: white; ">
                                    <div class="d-flex justify-content-between ">
                                        <div class="text-left text-secondary ">
                                            <h6 style="color: white; ">Terms & Conditions</h6>
                                        </div>
                                        <i class="far fa-file-alt"></i>
                                    </div>
                                </div>

                                <div class="card-body ">
                                    <h3>Payu
                                        <i style="color:#CC0000;" class="fas fa-arrow-right"></i>
                                    </h3>
                                    <div class="container">
                                        <div class="row">
                                            <div style="font-size: 13px;">
                                                <p>Net Banking charges-Rs.20 + GST - Charged by Payment Gateway Company</p>

                                                <p>Credit Card Charges - 0.90% + GST - Charged by Payment Gateway Company</p>
                                                <p>Debit card Charges(Excluding Rupay)
                                                    <br> -0.6% (for transactions less than Rs.2000/-)+GST - Charged by Payment
                                                    Gateway Company
                                                    <br> -0.9% (for transactions greater than Rs.2000/-)+GST - Charged by Payment
                                                    Gateway Company
                                                    <br> Zero TDR for RuPay Debit Card & UPI transactions
                                                </p>
                                            </div>

                                        </div>
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