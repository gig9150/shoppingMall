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
    <title>Step # 04 - BIGBAG Store</title>

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
                <h2>review</h2>
              </div>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb float-right">
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li class="active">review</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent clearfix stepsWrapper">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="innerWrapper clearfix stepsPage">
                <div class="row justify-content-center order-confirm">
                  <div class="col-md-8 col-lg-6 text-center">
                    <h2>Thank You For Your Order</h2>
                    <span>주문해 주셔서 감사합니다.</span>
                    <p class="">
                      Your order confirmation and receipt is sent to: abdus@bigbag.com <br>
                      Your order will be shipped to: ${userAddress}
                    </p>
                    <a href="index.html" class="btn btn-primary btn-default">Back to shop</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

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
