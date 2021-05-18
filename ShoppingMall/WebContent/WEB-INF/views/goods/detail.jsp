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
    <title>Single Product - BIGBAG Store</title>

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
                <h2>Single Product</h2>
              </div>
            </div>
            <div class="col-md-6">
              <ol class="breadcrumb pull-right">
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li class="active">Single Product</li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <!-- MAIN CONTENT SECTION -->
      <section class="mainContent clearfix">
        <div class="container">
          <div class="row singleProduct">
            <div class="col-md-12">
              <div class="media flex-wrap mb-5">
                <div class="media-left productSlider">
                  <div>
                  	<img src="${root}/upload/${goodsBean.goods_file}" style="width:100%;height:550px;">
                  </div>
                  
                  
                </div>
                <div class="media-body">
                  <ul class="list-inline">
                    <li class="mb-4 mb-md-0">
                      <a href="${root}/goods/main?page=${page}&goods_category_idx=${goods_category_idx}"><i class="fa fa-reply" aria-hidden="true"></i>
                        Continue Shopping
                      </a>
                    </li>
                  </ul>
									<!-- 본격적인 상품정보 -->
                  <h2>${goodsBean.goods_name}</h2>
                  <h3>${goodsBean.goods_price}</h3>
                  <table class="table">
										<thead>
											<tr>
												<th>cm</th>
												<th>총장</th>
												<th>어깨너비</th>
												<th>가슴단면</th>
												<th>소매길이</th>
												<th>수량</th>
											</tr>
										</thead>
										<tbody>
											<!-- size 테이블에서 리스트로 담아와 뿌려주기. -->
											<c:forEach items="${sizeList}" var="obj">
												<tr>
													<th scope="row">${obj.goods_size_name}</th>
													<td>${obj.goods_size_length }</td>
													<td>${obj.goods_size_shoulder }</td>
													<td>${obj.goods_size_chest }</td>
													<td>${obj.goods_size_sleeve }</td>
													<td>${obj.goods_size_stock }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
                  <div class="row">
                    <div class="col-12">
                      <span class="quick-drop resizeWidth quantityWidth single-quick-drop">
                        <select name="guiest_id3" id="guiest_id3" style="width:300px;height:30px" data-goods-idx="${goodsBean.goods_idx}">
                          <c:forEach items="${sizeList}" var="obj">
                          	<option value="${obj.goods_size_name}">${obj.goods_size_name}</option>
                          </c:forEach>
                        </select>
                      </span>
                    </div>
                    <div class="col-12">
                    	<span style="display:none;" id="goodsStock" style="color:red">SOLD OUT</span>
                    </div>

                    <div class="col-12">
                      <div class="d-flex align-items-center mb-5 pt-3">
                        <h5 class="mr-4">Quantity:</h5>
                        <div class="SingleCartListInner cartListInner pl-1">
                          <form action="#">
                            <div class="table-responsive">
                              <table class="table">
                                <tbody>
                                  <tr class="border-0">
                                    <td class="count-input border-0 p-0">
                                      <a class="incr-btn" data-action="decrease" href="#"><i class="fa fa-minus"></i></a>
                                      <input id = "quantity" name="quantity" class="quantity" type="text" value="1">
                                      <a class="incr-btn" data-action="increase" href="#"><i class="fa fa-plus"></i></a>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                 
                  <div class="btn-area mb-0">
                    <button id="add-cart" type="button" class="btn btn-primary btn-default" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="fa fa-angle-right" aria-hidden="true"></i>ADD CART</button> 
                  </div>
                  

                  <div class="tabArea d-none">
                    <ul class="nav nav-tabs bar-tabs">
                      <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#details">details</a></li>
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#about-art">about art</a></li>
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#sizing">sizing</a></li>
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#shipping">shipping</a></li>
                    </ul>
                    <div class="tab-content">
                      <div id="details" class="tab-pane fade show active">
                        <p>LContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin liter ature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.</p>
                        <ul class="list-unstyled">
                          <li>Black, Crew Neck</li>
                          <li>75% Cotton, 25% Rayon</li>
                          <li>Waterbased Ink</li>
                          <li>Wash Cold, dry low</li>
                        </ul>
                      </div>
                      <div id="about-art" class="tab-pane fade">
                        <p>Nulla facilisi. Mauris efficitur, massa et iaculis accumsan, mauris velit ultrices purus, quis condimentum nibh dolor ut tortor. Donec egestas tortor quis mattis gravida. Ut efficitur elit vitae dignissim volutpat. </p>
                      </div>
                      <div id="sizing" class="tab-pane fade">
                        <p>Praesent dui felis, gravida a auctor at, facilisis commodo ipsum. Cras eu faucibus justo. Nullam varius cursus nisi, sed elementum sem sagittis at. Nulla tellus massa, vestibulum a commodo facilisis, pulvinar convallis nunc.</p>
                      </div>
                      <div id="shipping" class="tab-pane fade">
                        <p>Mauris lobortis augue ex, ut faucibus nisi mollis ac. Sed volutpat scelerisque ex ut ullamcorper. Cras at velit quis sapien dapibus laoreet a id odio. Sed sit amet accumsan ante, eu congue metus. Aenean eros tortor, cursus quis feugiat sed, vestibulum vel purus.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row singleProduct singleProductTab">
            <div class="col-12">
              <div class="media mb-4">
                <div class="media-body">
                  <div class="tabArea">
                    <ul class="nav nav-tabs bar-tabs">
                      <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#OurDetails">Details</a></li>
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#OurSizing">size standard</a></li>
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Reviews">Reviews</a></li>
                    </ul>
                    <div class="tab-content">
                      <div id="OurDetails" class="tab-pane fade show active">
                        <p> ${goodsBean.goods_content} </p>
                      </div>

                      <div id="OurSizing" class="tab-pane fade">
                        <div class="SingleCartListWrapper SingleCartSizing">
                          <div class="cartListInner">
                            <div class="table-responsive">
                              <table class="table">
                                <thead>
                                  <tr>
                                  	<th>구분</th>
                                  	<th>S</th>
                                    <th>M</th>
                                    <th>L</th>
                                    <th>XL</th>
                                  </tr>
                                </thead>
                                <tbody>
																	<tr>
																		<td>한국</td>
                                    <td class="">85</td>
                                    <td class="">90</td>
                                    <td class="">95</td>
                                    <td class="">100</td>
																	</tr>
																	<tr>
																		<td>미국</td>
                                    <td class="">85-90</td>
                                    <td class="">90-95</td>
                                    <td class="">95-100</td>
                                    <td class="">100-105</td>
																	</tr>
																	<tr>
																		<td>일본</td>
                                    <td class="">38</td>
                                    <td class="">40</td>
                                    <td class="">42</td>
                                    <td class="">44</td>
																	</tr>
                                </tbody>
                              </table>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div id="Reviews" class="tab-pane fade">
                      	<c:forEach items="${reviewList}" var="obj">
                      		<div class="media mb-5">
	                          <div class="media-body">
	                            <h4 class="mt-0 mb-2">${obj.USER_ID}</h4>
	                            <p class="mt-0 mb-3">${obj.REVIEW_CONTENT}</p>
                            	<h6 class="mt-0"><em>${obj.GOODS_NAME}&nbsp;/&nbsp;${obj.GOODS_SIZE}</em></h6>
	                          </div>
                        	</div>
                      	</c:forEach>
                        
                      </div>

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
		
		<script>
			
			$(function(){
				
				$('#add-cart').attr('disabled',false);
				$('#goodsStock').css('display','none');
				let size_option = $('#guiest_id3 option:selected').attr('value');
				let goods_idx = $('#guiest_id3').data('goods-idx');
				$.ajax({
					url:'${root}/goods/checkStock/'+goods_idx+'/'+size_option,
					type:'get',
					success:function(data){
						if(data <= 0){
							$('#goodsStock').css('display','inline-block');
							$('#add-cart').attr('disabled',true);
						}
					}
				});

				//장바구니에 상품 담기 
				$("#add-cart").on('click',function(){
					
					//로그인 되어있지 않으면 로그인 창으로 이동 
					if(${sessionScope.userId == null}){
						alert('로그인 후 이용해주세요');
						location.href="${root}/user/login";
					}
					
					let goods_idx = ${goodsBean.goods_idx};
					let guiest_id3 = $("#guiest_id3").val();
					let quantity = $("#quantity").val();
					$.ajax({
						url : "${root}/account/goodsAddCart/" +
								goods_idx+"/"+guiest_id3+"/"+quantity,
						type:"get",
						success:function(data){
							
						}
					});
				});
				
				// 재고 소진시 주문 불가능하게 막음 
				$('#guiest_id3').on('change',function(){
					$('#add-cart').attr('disabled',false);
					$('#goodsStock').css('display','none');
					let size_option = $('#guiest_id3 option:selected').attr('value');
					let goods_idx = $(this).data('goods-idx');
					$.ajax({
						url:'${root}/goods/checkStock/'+goods_idx+'/'+size_option,
						type:'get',
						success:function(data){
							if(data <= 0){
								$('#goodsStock').css('display','inline-block');
								$('#add-cart').attr('disabled',true);
							}
						}
					});
				});
				
			});
			
		</script>
	</body>
</html>

