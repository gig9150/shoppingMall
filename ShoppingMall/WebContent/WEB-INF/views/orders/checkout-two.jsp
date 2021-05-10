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
                  <div class="col-6">
                    <h5>Shipping Address</h5>
                    <address>
                      Sn Dalim <br>
                      Shamoli, Dhaka 120, Bangladesh <br>
                      415-555-2671 <br>
                      example78@gmail.com <br>
                    </address>
                  </div>
                  <div class="col-6">
                    <h5>Shipping Method</h5>
                    <p>
                      ${ordersUserBean.userId}
                    </p>
                  </div>
                </div>

                <div class="page-header">
                  <h4>Billing Information</h4>
                </div>
                <form action="" class="row" method="POST" role="form">
                  <div class=" checkboxArea card-check">
                    <div class="col-sm-12 mb-2">
                      <input id="checkbox1" type="radio" name="checkbox" value="1" >
                      <label for="checkbox1"><span></span>Pay with Paypal</label>
                    </div>
                    <div class="col-sm-12 mb-2">
                      <input id="checkbox2" type="radio" name="checkbox" value="1" checked="checked">
                      <label for="checkbox2"><span></span>Credit Card</label>
                      <small class="mb-2 d-block">We accept following credit card</small>
                      <ul class="list-unstyled list-inline">
                        <li><img src="${root}/assets/img/products/card1.jpg" alt=""><!--  --></li>
                        <li><img src="${root}/assets/img/products/card2.jpg" alt=""><!--  --></li>
                        <li><img src="${root}/assets/img/products/card3.jpg" alt=""><!--  --></li>
                        <li><img src="${root}/assets/img/products/card4.jpg" alt=""><!--  --></li>
                      </ul>
                      <div class="form-group row my-3 ml-3">
                        <div class="col-md-6">
                          <label for="" class="col-form-label">Name on Card</label>
                          <input class="form-control" type="text" >
                        </div>

                        <div class="col-md-6">
                          <label for="" class="col-form-label">Card Number</label>
                          <input class="form-control" type="text" >
                        </div>
                        <div class="col-md-6 col-12 mb-4 mb-md-0">
                          <label for="">Expiration Date</label>
                          <span class="step-drop">
                            <select name="guiest_id3"  class="select-drop">
                              <option value="0">Year</option>
                              <option value="1">Choose 1</option>
                              <option value="2">Choose 2</option>
                              <option value="3">Choose 3</option>
                            </select>
                          <!-- </span>
                          <span class="step-drop"> -->
                            <select name="guiest_id3"  class="select-drop">
                              <option value="0">Month</option>
                              <option value="1">January</option>
                              <option value="2">February</option>
                              <option value="3">March</option>
                            </select>
                          </span>
                        </div>
                        <div class="col-md-6">
                          <label for="" class="">CVC/CVV</label>
                          <div class="input-group">
                            <input type="text" class="form-control" aria-label="" placeholder="1234">
                            <span class="input-group-addon"><i class="fa fa-question-circle"></i></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-12 mb-2">
                      <input id="checkbox1" type="radio" name="checkbox" value="1" >
                      <label for="checkbox1"><span></span>Reward Points</label>
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="well well-lg clearfix">
                      <ul class="pager">
                      <li class="previous float-left"><a class="btn btn-secondary btn-default float-left" href="checkout-step-1.html">back</a></li>
                        <li class="next"><a class="btn btn-primary btn-default float-right" href="checkout-step-3.html">Continue <i class="fa fa-angle-right"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-md-4">
              <div class="summery-box">
                <h4>Order Summery</h4>
                <p>Excepteur sint occaecat cupidat non proi dent sunt.officia.</p>
                <ul class="list-unstyled">
                  <li class="d-flex justify-content-between">
                    <span class="tag">Subtotal</span>
                    <span class="val">$237.00</span>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="tag">Shipping & Handling</span>
                    <span class="val">$12.00 </span>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="tag">Estimated Tax</span>
                    <span class="val">$0.00 </span>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="tag">Total</span>
                    <span class="val">USD  $249.00 </span>
                  </li>
                </ul>
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

		<!-- LOGIN MODAL -->
		<div class="modal fade login-modal" id="login" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header justify-content-center">
						<h3 class="modal-title">log in</h3>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<form action="" method="POST" role="form">
							<div class="form-group">
								<label for="">Enter Email</label>
								<input type="email" class="form-control">
							</div>
							<div class="form-group">
								<label for="">Password</label>
								<input type="password" class="form-control">
							</div>
							<div class="checkbox">
								<input id="checkbox-1" class="checkbox-custom form-check-input" name="checkbox-1" type="checkbox" checked>
								<label for="checkbox-1" class="checkbox-custom-label form-check-label">Remember me</label>
							</div>
							<button type="submit" class="btn btn-primary btn-block">log in</button>
							<button type="button" class="btn btn-link btn-block">Forgot Password?</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- SIGN UP MODAL -->
		<div class="modal fade " id="signup" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header justify-content-center">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h3 class="modal-title">Create an account</h3>
					</div>
					<div class="modal-body">
						<form action="" method="POST" role="form">
							<div class="form-group">
								<label for="">Enter Email</label>
								<input type="email" class="form-control">
							</div>
							<div class="form-group">
								<label for="">Password</label>
								<input type="password" class="form-control">
							</div>
							<div class="form-group">
								<label for="">Confirm Password</label>
								<input type="password" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary btn-block">Sign up</button>
							<button type="button" class="btn btn-link btn-block">New User?</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- PORDUCT QUICK VIEW MODAL -->
		<div class="modal fade quick-view" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<div class="media flex-wrap">
							<div class="media-left px-0">
								<img class="media-object" src="${root}/assets/img/products/quick-view/quick-view-01.jpg" alt="Image">
							</div>
							<div class="media-body">
								<h2>Old Skool Navy</h2>
								<h3>$149</h3>
								<p>Classic sneaker from Vans. Cotton canvas and suede upper. Textile lining with heel stabilizer and ankle support. Contrasting laces. Sits on a classic waffle rubber sole.</p>
								<span class="quick-drop">
									<select name="guiest_id3" id="guiest_id3" class="select-drop">
										<option value="0">Size</option>
										<option value="1">Size 1</option>
										<option value="2">Size 2</option>
										<option value="3">Size 3</option>
									</select>
								</span>
								<span class="quick-drop resizeWidth">
									<select name="guiest_id4" id="guiest_id4" class="select-drop">
										<option value="0">Qty</option>
										<option value="1">Qty 1</option>
										<option value="2">Qty 2</option>
										<option value="3">Qty 3</option>
									</select>
								</span>
								<div class="btn-area">
									<a href="#" class="btn btn-primary btn-block">Add to cart <i class="fa fa-angle-right" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

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

