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
    <title>Step # 02 - BIGBAG Store</title>

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
                <h2>Shipping method</h2>
              </div>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb float-right">
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li class="active">Shipping method</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT SECTION -->
      <form method="POST" action="${root}/orders/checkout-three">
      <section class="mainContent clearfix stepsWrapper">
        <div class="container">
          <div class="row">
            <div class="col-md-8">
              <div class="innerWrapper clearfix stepsPage">
                <div class="row progress-wizard" style="border-bottom:0;">
                  <div class="col-4 progress-wizard-step complete fullBar">
                    <div class="text-center progress-wizard-stepnum">Shipping Method</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="checkout-step-1.html" class="progress-wizard-dot"></a>
                  </div>

                  <div class="col-4 progress-wizard-step active">
                    <div class="text-center progress-wizard-stepnum">Payment Method</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="checkout-step-2.html" class="progress-wizard-dot"></a>
                  </div>

                  <div class="col-4 progress-wizard-step disabled">
                    <div class="text-center progress-wizard-stepnum">Review</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="checkout-step-3.html" class="progress-wizard-dot"></a>
                  </div>
                </div>

                <div class="page-header">
                  <h4>Shipping Information</h4>
                </div>

                <div class="row shipping-info">
                  <div class="col-12">
                    <h5>Shipping Address</h5>
                    <address>
                     	${ordersUserBean.userName} <br>
                      ${ordersUserBean.userAddress} <br>
                      ${ordersUserBean.userPhone} <br>
                      ${ordersUserBean.userEmail} <br>
                    </address>
                  </div>
                </div>

                <div class="page-header">
                  <h4>Billing Information</h4>
                </div>
                  <div class=" checkboxArea card-check">
                    <div class="col-sm-12 mb-2">
                      <input id="checkbox2" type="radio" name="checkbox" value="1" checked="checked">
                      <label for="checkbox2"><span></span>Credit Card</label>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="well well-lg clearfix">
                      <ul class="pager">
	                      <li class="previous float-left"><a class="btn btn-secondary btn-default float-left" href="${root}/orders/checkout-one?totalPrice=${ordersUserBean.totalPrice}">back</a></li>
	                     	<li class="next"><a id="continue" class="btn btn-primary btn-default float-right" href="${root}/orders/checkout-three?userName=${ordersUserBean.userName}&userId=${orderUserBean.userId}
	                     	&userAddress=${ordersUserBean.userAddress}&userPhone=${ordersUserBean.userPhone}&userEmail=${ordersUserBean.userEmail}&totalPrice=${ordersUserBean.totalPrice}">Continue <i class="fa fa-angle-right"></i></a></li>
                      </ul>
                    </div>
                  </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="summery-box">
                <h4>Order Summery</h4>
                <p>주문 금액 입니다.</p>
                <ul class="list-unstyled">
                  <li class="d-flex justify-content-between">
                    <span class="tag">price</span>
                    <span class="val">${ordersUserBean.totalPrice} WON</span>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="tag">Shipping & Handling</span>
                    <span class="val">2500 WON </span>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="tag">Total</span>
                    <span class="val">${ordersUserBean.totalPrice + 2500} WON</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      </form>

      <!-- LIGHT SECTION -->
      <section class="lightSection clearfix">
        <div class="container">
          <div class="owl-carousel partnersLogoSlider">
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-01.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-02.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-03.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-04.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-05.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-01.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-02.png" alt="partner-img">
              </div>
            </div>
            <div class="slide">
              <div class="partnersLogo clearfix">
                <img src="${root}/assets/img/home/partners/partner-03.png" alt="partner-img">
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

