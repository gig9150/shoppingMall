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
    <title>Product Grid 3 Col Filter Top - BIGBAG Store</title>

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
    
    <!-- 페이지네이션 색상 지정  -->
    
    <style>
			.pagination > li > a
			{
			    background-color: white;
			    color: #47bac1;
			}
			
			.pagination > li > a:focus,
			.pagination > li > a:hover,
			.pagination > li > span:focus,
			.pagination > li > span:hover
			{
			    color: #5a5a5a;
			    background-color: #eee;
			    border-color: #ddd;
			}
			
			.pagination > .active > a
			{
			    color: white;
			    background-color: #47bac1 !Important;
			    border: solid 1px #47bac1 !Important;
			}
			
			.pagination > .active > a:hover
			{
			    background-color: #5A4181 !Important;
			    border: solid 1px #5A4181;
			}   	
    </style>

  </head>

  <body id="body" class="body-wrapper version1 up-scroll">

    <div class="main-wrapper">

      <c:import url="/WEB-INF/views/include/top_menu.jsp" />

      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent clearfix productsContent">
        <div class="container">
          <div class="row filterArea">
            <div class="col-9">
              <h1>${goodsCategoryName}</h1>
            </div>
            <div class="col-3">
	            <form method="get" >
	            	<input type="hidden" name="goods_category_idx" value="${goods_category_idx}">
	            	<!-- select 값 유지  -->
	              <select name="guiest_id1" id="guiest_id1" class="select-drop" onchange="this.form.submit()">
	                <option value="0" <c:if test="${guiest_id1 == 0}">selected</c:if>>Default sorting</option>
	                <option value="1" <c:if test="${guiest_id1 == 1}">selected</c:if>>Sort by popularity</option>
	                <option value="2" <c:if test="${guiest_id1 == 2}">selected</c:if>>Sort by newness</option>
	                <option value="3" <c:if test="${guiest_id1 == 3}">selected</c:if>>Sort by price</option>
	              </select>
	             </form>
            </div>
          </div>
          <div class="row">
            <c:forEach items="${goodsList}" var="obj">
	            <div class="col-md-4 ">
	              <div class="productBox">
	                <div class="productImage clearfix">
	                  <img src="${root}/upload/${obj.goods_file}" alt="products-img">
	                  <div class="productMasking">
	                    <ul class="list-inline btn-group" role="group">
	                    <c:set var="checkWishList" value="true"/>
	                    <c:forEach items="${wishGoodsIdx}" var="wishIdx">
	                     <c:if test="${wishIdx == obj.goods_idx and checkWishList == true}">
	                      <li><a class="btn btn-default btn-wishlist active" data-goods-idx="${obj.goods_idx}">
	                      <i class="fa fa-heart-o"></i></a></li>
	                      <c:set var="checkWishList" value="false"/>
	                     </c:if>
	                    </c:forEach>
                    	<c:if test="${checkWishList == true}">
                    		<li><a class="btn btn-default btn-wishlist" data-goods-idx="${obj.goods_idx}">
	                      <i class="fa fa-heart-o"></i></a></li>
                    	</c:if>
                    	<c:set var="checkWishList" value="true"/>
	                    <li><a class="btn btn-default" href="${root}/goods/detail?goods_idx=${obj.goods_idx}&page=${requestScope.page}&goods_category_idx=${goods_category_idx}" ><i class="fa fa-eye"></i></a></li>
	                    </ul>	
	                  </div>
	                </div>
	                <div class="productCaption clearfix">
	                  <a href="${root}/goods/detail">
	                    <h5>${obj.goods_name}</h5>
	                  </a>
	                  <h3>${obj.goods_price}</h3>
	                </div>
	              </div>
	            </div>
	           </c:forEach>
          </div>
          
          <!-- 페이징 처리  -->
          <div class="row justify-content-md-center">
          	<ul class="pagination">
          		<c:choose>
          			<c:when test="${pageBean.prevPage <= 0}">
          				<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						        <span class="sr-only">Previous</span>
					      	</a></li>
          			</c:when>
          			<c:otherwise>
          				<li class="page-item">
          				<a class="page-link" href="${root}/goods/main?goods_category_idx=${goods_category_idx}&page=${pageBean.prevPage}" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						        <span class="sr-only">Previous</span>
					      	</a></li>
          			</c:otherwise>
          		</c:choose>
          		<c:forEach var="idx" begin="${pageBean.min}" end="${pageBean.max}">
          			<c:choose>
          				<c:when test="${idx == pageBean.page}">
          					<li class="page-item active"><a class="page-link" href="${root}/goods/main?page=${idx}&goods_category_idx=${goods_category_idx}">${idx}</a></li>
          				</c:when>
          				<c:otherwise>
          					<li class="page-item"><a class="page-link" href="${root}/goods/main?page=${idx}&goods_category_idx=${goods_category_idx}">${idx}</a></li>
          				</c:otherwise>
          			</c:choose>	
          		</c:forEach>
          		<c:choose>
          			<c:when test="${pageBean.max >= pageBean.pageCnt}">
          				<li class="page-item">
						      <a class="page-link" href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						        <span class="sr-only">Next</span>
						      </a>
						    	</li>
          			</c:when>
          			<c:otherwise>
          				<li class="page-item">
						      <a class="page-link" href="${root}/goods/main?page=${pageBean.nextPage}&goods_category_idx=${goods_category_idx}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						        <span class="sr-only">Next</span>
						      </a>
						    	</li>
          			</c:otherwise>
          		</c:choose>
          	</ul>
          </div>
        </div>
      </section>
      <!-- LIGHT SECTION -->
      <section class="lightSection clearfix">
        <div class="container">
          <div class="row">
            <div class="col-sm-12">
              <div class="partnersLogoSlider">
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
		
		<script>
			$(function(){
				
				//위시리스트목록에 추가 
				$(".btn-wishlist.active").on('click',function(){
					const goods_idx = $(this).data("goods-idx");
					$.ajax({
						url:"${root}/account/deleteWishlist/"+goods_idx,
						type:'get',
						success:function(data){
							console.log('삭제');
						}
					});
				});
				
				//위시리스트목록에서 제거
				$(".btn-wishlist").not('.active').on('click',function(){
					const goods_idx = $(this).data("goods-idx");
					$.ajax({
						url:'${root}/account/addWishlist/'+goods_idx,
						type:'get',
						success:function(data){
							console.log(data);
						}
					});
				});
			});

			
		</script>

		
	</body>
</html>
