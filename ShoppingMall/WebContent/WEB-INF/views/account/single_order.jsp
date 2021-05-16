<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Single Order - BIGBAG Store</title>

    <!-- PLUGINS CSS STYLE -->
    <link href="${root}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${root}/assets/plugins/jquery-ui/jquery-ui.css" rel="stylesheet">
    <link href="${root}/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${root}/assets/plugins/selectbox/select_option1.css" rel="stylesheet">
    <link href="${root}/assets/plugins/fancybox/jquery.fancybox.min.css" rel="stylesheet">
    <link href="${root}/assets/plugins/rateyo/jquery.rateyo.min.css" rel="stylesheet">
    <link href="${root}/assets/plugins/iziToast/css/iziToast.css" rel="stylesheet">
    <link href="${root}/assets/plugins/prismjs/prism.css" rel="stylesheet">
    <link href="${root}/assets/plugins/revolution/css/settings.css" rel="stylesheet">
    <link href="${root}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${root}/assets/plugins/slick/slick.css" media="screen">
    <link rel="stylesheet" type="text/css" href="${root}/assets/plugins/slick/slick-theme.css" media="screen">


    <!-- CUSTOM CSS -->
    <link href="${root}/assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${root}/assets/css/default.css" id="option_style">

    <!-- Icons -->
    <link rel="shortcut icon" href="${root}/assets/img/favicon.png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>

  <body id="body" class="body-wrapper version1 up-scroll">

    <div class="main-wrapper">

     	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
     	

      <!-- LIGHT SECTION -->
      <section class="lightSection clearfix pageHeader">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <div class="page-title">
                <h2>SINGLE ORDER</h2>
              </div>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb float-right">
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li class="active">SINGLE ORDER</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent clearfix userProfile">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="btn-group" role="group" aria-label="...">
                <a href="account-address.html" class="btn btn-default"><i class="fa fa-map-marker" aria-hidden="true"></i>My Address</a>
                <a href="account-all-orders.html" class="btn btn-default active"><i class="fa fa-list" aria-hidden="true"></i>All Orders</a>
                <a href="account-wishlist.html" class="btn btn-default"><i class="fa fa-gift" aria-hidden="true"></i>Wishlist</a>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="innerWrapper singleOrder">
                <div class="orderBox">
                  <h2>Order # ${ordersIdx} / ${ordersDetailMap.ORDERS_DATE}</h2>
                </div>
                <div class="row">
                  <div class="col-md-6 col-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">Billing Address</h4>
                      </div>
                      <div class="panel-body">
                        <address>
                          <strong>${user_name}</strong><br>
                          ${ordersDetailMap.ORDERS_ADDRESS} <br>
                          ${ordersDetailMap.ORDERS_PHONE } <br>
                        </address>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">Shipping Address</h4>
                      </div>
                      <div class="panel-body">
                        <address>
                          <strong>${user_name}</strong><br>
                          ${ordersDetailMap.ORDERS_ADDRESS} <br>
                          ${ordersDetailMap.ORDERS_PHONE } <br>
                        </address>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">Payment Method</h4>
                      </div>
                      <div class="panel-body">
                        <address>
                          <span>Credit Card</span>
                        </address>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">Shipping Method</h4>
                      </div>
                      <div class="panel-body">
                        <address>
                          <span>Post Air Mail</span>
                        </address>
                      </div>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">Order Goods Details</h4>
                      </div>
                      <div class="panel-body">
                        <div class="row">
                          <div class="col-md-4 col-12">
                            <address>
                            	<img alt="" src="${root}/upload/${ordersDetailMap.GOODS_FILE}" width="200" height="150">
                            </address>
                          </div>
                          <div class="col-md-8 col-12">
                            <address>
                              <a href="${root}/goods/detail?goods_idx=${ordersDetailMap.GOODS_IDX}" style="color:blue">${ordersDetailMap.GOODS_NAME}</a> <br><br>
                              <span>수량&nbsp;:&nbsp;</span>&nbsp;&nbsp;${ordersDetailMap.ORDERS_QUANTITY}<br>
                              <span>사이즈&nbsp;:&nbsp;</span>&nbsp;&nbsp;${ordersDetailMap.ORDERS_SIZE}<br>
                              <span>가격&nbsp;:&nbsp;</span>&nbsp;&nbsp;${ordersDetailMap.GOODS_PRICE}
                            </address>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-12">
                    <div>
                      <a role="button" class="btn btn-primary" href="${root}/account/all_orders">back</a>
                      <a role="button" class="btn btn-danger" href="${root}/account/cancle_order?ordersIdx=${ordersIdx}">cancel order</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    	<c:import url="/WEB-INF/views/include/footer.jsp" />
    

		

		<script src="${root}/assets/plugins/jquery/jquery.min.js"></script>
		<script src="${root}/assets/plugins/jquery/jquery-migrate-3.0.0.min.js"></script>
		<script src="${root}/assets/plugins/jquery-ui/jquery-ui.js"></script>
		<script src="${root}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="${root}/assets/plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
		<script src="${root}/assets/plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
		<script src="${root}/assets/plugins/slick/slick.js"></script>
		<script src="${root}/assets/plugins/fancybox/jquery.fancybox.min.js"></script>
		<script src="${root}/assets/plugins/iziToast/js/iziToast.js"></script>
		<script src="${root}/assets/plugins/prismjs/prism.js"></script>
		<script src="${root}/assets/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
		<script src="${root}/assets/plugins/countdown/jquery.syotimer.js"></script>
		<script src="${root}/assets/plugins/velocity/velocity.min.js"></script>
		<script src="${root}/assets/plugins/rateyo/jquery.rateyo.min.js"></script>
		<script src="${root}/assets/js/custom.js"></script>

	</body>
</html>

