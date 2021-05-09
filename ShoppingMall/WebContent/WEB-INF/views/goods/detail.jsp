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
                  <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner SingleProductItem">
                      <div class="video-icon">
                        <a class="video-link" data-fancybox href="https://www.youtube.com/embed/g3-VxLQO7do?autoplay=1">
                          <i class="fa fa-play play-icon" aria-hidden="true"></i>
                        </a>
                      </div>

                      <div class="carousel-item active productImage SingleProductImage" data-thumb="0">
                        <img src="${root}/assets/img/products/signle-product/product-slide-big-01.jpg">
                        <a data-fancybox="images" href="${root}/assets/img/products/signle-product/product-slide-large-01.jpg" class="product-content">
                          <div class="MaskingIcon"><i class="fa fa-plus"></i></div>
                        </a>
                      </div>

                      <div class="carousel-item SingleProductImage" data-thumb="1">
                        <img src="${root}/assets/img/products/signle-product/product-slide-big-02.jpg">
                        <a data-fancybox="images" href="${root}/assets/img/products/signle-product/product-slide-large-02.jpg" class="product-content">
                          <div class="MaskingIcon"><i class="fa fa-plus"></i></div>
                        </a>
                      </div>

                      <div class="carousel-item SingleProductImage" data-thumb="2">
                        <img src="${root}/assets/img/products/signle-product/product-slide-big-03.jpg">
                        <a data-fancybox="images" href="${root}/assets/img/products/signle-product/product-slide-large-03.jpg" class="product-content">
                          <div class="MaskingIcon"><i class="fa fa-plus"></i></div>
                        </a>
                      </div>

                      <div class="carousel-item SingleProductImage" data-thumb="3">
                        <img src="${root}/assets/img/products/signle-product/product-slide-big-04.jpg">
                        <a data-fancybox="images" href="${root}/assets/img/products/signle-product/product-slide-large-04.jpg" class="product-content">
                          <div class="MaskingIcon"><i class="fa fa-plus"></i></div>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <div class="clearfix">
                    <div id="thumbcarousel" class="carousel slide" data-interval="false">
                      <div class="carousel-inner">
                          <div data-target="#carousel" data-slide-to="0" class="thumb"><img src="${root}/assets/img/products/signle-product/product-slide-small-01.jpg"></div>
                          <div data-target="#carousel" data-slide-to="1" class="thumb"><img src="${root}/assets/img/products/signle-product/product-slide-small-02.jpg"></div>
                          <div data-target="#carousel" data-slide-to="2" class="thumb"><img src="${root}/assets/img/products/signle-product/product-slide-small-03.jpg"></div>
                          <div data-target="#carousel" data-slide-to="3" class="thumb"><img src="${root}/assets/img/products/signle-product/product-slide-small-04.jpg"></div>
                      </div>
                      <a class="left carousel-control" href="#thumbcarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                      </a>
                      <a class="right carousel-control" href="#thumbcarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                      </a>
                    </div>
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
												</tr>
											</c:forEach>
										</tbody>
									</table>
                  <div class="row">
                    <div class="col-12">
                      <span class="quick-drop resizeWidth quantityWidth single-quick-drop">
                        <select name="guiest_id3" id="guiest_id3" class="select-drop">
                          <c:forEach items="${sizeList}" var="obj">
                          	<option value="${obj.goods_size_name}">${obj.goods_size_name}</option>
                          </c:forEach>
                        </select>
                      </span>
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
                      <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#OurShipping">shipping</a></li>
                    </ul>
                    <div class="tab-content">
                      <div id="OurDetails" class="tab-pane fade show active">
                        ${goodsBean.goods_content}
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
                        <div class="media mb-5">
                          <img class="mr-4 rounded rounded-circle" src="${root}/assets/img/blog/blog-small2-01.jpg" alt="Generic placeholder image">
                          <div class="media-body">
                            <h4 class="mt-0 mb-2">Lorem ipsum dolor</h4>
                            
                            <ul class="text-warning d-flex mb-1">
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class=""><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
                            </ul>

                            <p class="mt-0 mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio dolorum quasi magni mollitia suscipit blanditiis nihil id autem? Voluptates, minima expedita doloremque amet consequuntur quam aliquid repellat architecto accusamus fuga.</p>
                            <h6 class="mt-0"><em>Rodney Artichoke</em></h6>
                          </div>
                        </div>

                        <div class="media mb-5">
                          <img class="mr-4 rounded rounded-circle" src="${root}/assets/img/blog/blog-small-02.jpg" alt="Generic placeholder image">
                          <div class="media-body">
                            <h4 class="mt-0 mb-2">Feugiat primis</h4>

                            <ul class="text-warning d-flex mb-1">
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class=""><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>

                            <p class="mt-0 mb-3">Feugiat primis reprehenderit proident cumque nec diam eligendi, qui iure, torquent quod sequi, taciti! Tempus leo
                            architecto accusantium cillum, taciti nascetur? Iusto facilisi dolores adipisci eros fuga, laoreet culpa molestie, arcu
                            lectus felis sunt accusantium alias mollitia eius anim eget. voluptatibus facilisi.</p>
                            <h6 class="mt-0"><em>Samanta Doe</em></h6>
                          </div>
                        </div>

                        <div class="media mb-0">
                          <img class="mr-4 rounded rounded-circle" src="${root}/assets/img/blog/blog-small-03.jpg" alt="Generic placeholder image">
                          <div class="media-body">
                            <h4 class="mt-0 mb-2">Auctor vitae egestas</h4>

                            <ul class="text-warning d-flex mb-1">
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class="mr-1"><i class="fa fa-star" aria-hidden="true"></i></li>
                              <li class=""><i class="fa fa-star" aria-hidden="true"></i></li>
                            </ul>

                            <p class="mt-0 mb-2">Auctor vitae egestas et. Accumsan quis nunc. Duis leo justo. Condimentum at purus eu. Amana sed dolor sem. Etiam massa
                            libero. massa libero, auctor vitae egestas et, accumsan quis nunc. Dous leou justi, condimentam at purus eus actor.
                            Auctor vitae egestas et duis Condimentum at purus eu. Aemean sed dolor sem. Etiam massa libero.</p>
                            <h6 class="mt-0"><em>Amanda Smith</em></h6>
                          </div>
                        </div>

                        <div class="mt-5 mb-2 border p-4 p-md-5">
                          <form>
                            <div class="media flex-column flex-md-row mb-0">
                              <img class="m-auto m-md-0 mr-md-4 rounded rounded-circle" src="${root}/assets/img/blog/profile-image.jpg" alt="Generic placeholder image">
                              
                              <div class="media-body mt-4 mt-md-0">
                                <h6 class="text-center text-md-left text-capitalize mt-0"><em>Rodney samp</em></h6>
                                <h6 class="text-center text-md-left ReviewsPost mt-0">Posting publicly</h6>
                            
                                <div class="rating-view mb-4">
                                  <span class="add-rating-large pl-0 m-auto m-md-0"></span>
                                </div>

                                <div class="row">
                                  <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="exampleInputPhone" placeholder="Subject" required="">
                                  </div>

                                  <div class="form-group col-md-12">
                                    <textarea class="form-control" id="exampleTextarea" rows="5" placeholder="Review"></textarea>
                                  </div>
                                </div>

                                <div class="text-center text-md-left">
                                  <button type="submit" class="btn btn-default btn-primary custom-btn">Submit Review</button>
                                </div>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>

                      <div id="OurShipping" class="tab-pane fade">
                        <div class="SingleCartListWrapper SingleCartShipping">
                          <div class="cartListInner">
                            <div class="table-responsive">
                              <table class="table">
                                <thead>
                                  <tr>
                                    <th>Shipping method</th>
                                    <th>Estimated Time</th>
                                    <th>Fees</th>
                                  </tr>
                                </thead>

                                <tbody>
                                  <tr>
                                    <td class="">
                                      <div class="custom-control custom-radio single-custom-control">
                                        <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input" checked="">
                                        <label class="custom-control-label" for="customRadio3"><span class="d-block" style="margin-top: 3px;">Pickup from
                                            store</span></label>
                                      </div>
                                    </td>
                                  
                                    <td class="">—</td>
                                    <td class="">$0</td>
                                  </tr>

                                  <tr>
                                    <td class="">
                                      <div class="custom-control custom-radio single-custom-control">
                                        <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio2"><span class="d-block" style="margin-top: 3px;">Local
                                            Shipping</span></label>
                                      </div>
                                    </td>
                                  
                                    <td class="">2-7 days</td>
                                    <td class="">$4</td>
                                  </tr>

                                  <tr>
                                    <td class="">
                                      <div class="custom-control custom-radio single-custom-control">
                                        <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio1"><span class="d-block" style="margin-top: 3px;">Courier</span></label>
                                    </td>

                                    <td class="">3-5 days</td>
                                    <td class="">$5</td>
                                  </tr>
                      
                                  <tr>
                                    <td class="">
                                      <div class="custom-control custom-radio single-custom-control">
                                        <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio4"><span class="d-block" style="margin-top: 3px;">International Shipping</span></label>
                                      </div>
                                    </td>
                                    
                                    <td class="">7-15 days</td>
                                    <td class="">$15</td>
                                  </tr>
                                </tbody>
                              </table>
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

          <div class="page-header">
            <h4>Related Products</h4>
          </div>
          <div class="row productsContent">
            
            <div class="col-md-3 col-12 ">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="${root}/assets/img/products/products-01.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".login-modal" class="btn btn-default"><i class="fa fa-heart-o"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-basket"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href=".quick-view" ><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Nike Sportswear</h5>
                 <h3>$199</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-12 ">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="${root}/assets/img/products/products-02.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".login-modal" class="btn btn-default"><i class="fa fa-heart-o"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-basket"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href=".quick-view" ><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Dip Dyed Sweater</h5>
                 <h3>$249</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-12 ">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="${root}/assets/img/products/products-03.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".login-modal" class="btn btn-default"><i class="fa fa-heart-o"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-basket"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href=".quick-view" ><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Scarf Ring Corner</h5>
                 <h3>$179</h3>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-12 ">
              <div class="productBox">
                <div class="productImage clearfix">
                  <img src="${root}/assets/img/products/products-04.jpg" alt="products-img">
                  <div class="productMasking">
                    <ul class="list-inline btn-group" role="group">
                      <li><a data-toggle="modal" href=".login-modal" class="btn btn-default"><i class="fa fa-heart-o"></i></a></li>
                      <li><a href="cart-page.html" class="btn btn-default"><i class="fa fa-shopping-basket"></i></a></li>
                      <li><a class="btn btn-default" data-toggle="modal" href=".quick-view" ><i class="fa fa-eye"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="productCaption clearfix">
                 <h5>Sun Buddies</h5>
                 <h3>$149</h3>
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
		
			//add to cart 누르면 ajax로 장바구니에 추가
			$(function(){

				$("#add-cart").on('click',function(){
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
			});
			
		</script>
	</body>
</html>

