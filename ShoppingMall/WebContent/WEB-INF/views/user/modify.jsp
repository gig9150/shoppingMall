<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup - BIGBAG Store</title>

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
  
  	<!-- TOPBAR -->
		<c:import url="/WEB-INF/views/include/top_menu.jsp" />

    <!-- LIGHT SECTION -->
    <section class="lightSection clearfix pageHeader">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="page-title">
              <h2>sign up</h2>
            </div>
          </div>
          <div class="col-md-6">
            <ol class="breadcrumb float-right">
              <li>
                <a href="index.html">Home</a>
              </li>
              <li class="active">sign up</li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    <!-- MAIN CONTENT SECTION -->
    <section class="mainContent clearfix signUp">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading"><h3>수정하기</h3></div>
              <div class="panel-body">
                <form:form action="${root}/user/modify_pro" method="post" modelAttribute="modifyUserBean">
                  <div class="form-group">
                    <form:label path="user_name">이름</form:label>
                    <form:input path="user_name" class="form-control" readonly="true"/>
                  </div>
                  <div class="form-group">
                  	<form:label path="user_id">아이디</form:label>
                    <form:input path="user_id" class='form-control' readonly="true"/>
                  </div>
                   <div class="form-group">
                  	<form:label path="user_email">이메일</form:label>
                    <form:input path="user_email" type="email" class='form-control'/>
                  </div>
                  <div class="form-group">
                    <form:label path="user_pw">비밀번호</form:label>
										<form:password path="user_pw" class='form-control'/>
										<form:errors path="user_pw" style="color:red"/>
                  </div>
                  <div class="form-group">
                    <form:label path="user_pw2">비밀번호 확인</form:label>
										<form:password path="user_pw2" class='form-control'/>
										<form:errors path="user_pw2" style="color:red"/>
                  </div>
                  <form:button class="btn btn-primary btn-block">정보수정</form:button>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

   <c:import url="/WEB-INF/views/include/footer.jsp" />
   
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
	<script src="${root}/assets/js/user.js"></script>


</body>
</html>
