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
<title>BIGBAG Store - Ecommerce Bootstrap Template</title>

<!-- PLUGINS CSS STYLE -->
<link href="${root}/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${root}/assets/plugins/jquery-ui/jquery-ui.css" rel="stylesheet">
<link href="${root}/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${root}/assets/plugins/selectbox/select_option1.css"
	rel="stylesheet">
<link href="${root}/assets/plugins/fancybox/jquery.fancybox.min.css"
	rel="stylesheet">
<link href="${root}/assets/plugins/rateyo/jquery.rateyo.min.css"
	rel="stylesheet">
<link href="${root}/assets/plugins/iziToast/css/iziToast.css" rel="stylesheet">
<link href="${root}/assets/plugins/prismjs/prism.css" rel="stylesheet">
<link href="${root}/assets/plugins/revolution/css/settings.css" rel="stylesheet">
<link href="${root}/assets/plugins/animate/animate.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${root}/assets/plugins/slick/slick.css" media="screen">
<link rel="stylesheet" type="text/css"
	href="${root}/assets/plugins/slick/slick-theme.css" media="screen">


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

	<!-- Preloader -->
	<div id="preloader" class="smooth-loader-wrapper">
		<div class="preloader_container">
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
			<div class="block"></div>
		</div>
	</div>

	<div class="main-wrapper">

		<!-- TOPBAR  -->
		<c:import url="/WEB-INF/views/include/top_menu.jsp" />


		<!-- BANNER -->
		<div id="rev_slider_25_1_wrapper"
			class="rev_slider_wrapper fullwidthbanner-container"
			data-alias="bigbag" data-source="gallery"
			style="margin: 0px auto; background: transparent; padding: 0px; margin-top: 0px; margin-bottom: 0px;">
			<!-- START REVOLUTION SLIDER 5.4.8.1 fullwidth mode -->
			<div id="rev_slider_25_1"
				class="rev_slider fullwidthabanner rev_slider_25_1"
				style="display: none;" data-version="5.4.8.1">
				<ul>
					<!-- SLIDE  -->
					<li data-index="rs-74" data-transition="fade"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-easein="default"
						data-easeout="default" data-masterspeed="300"
						data-thumb="img/home/banner-slider/slider-bg.jpg"
						data-delay="4000" data-rotate="0" data-saveperformance="off"
						data-title="Slide" data-param1="" data-param2="" data-param3=""
						data-param4="" data-param5="" data-param6="" data-param7=""
						data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE --> <img
						src="${root}/assets/img/home/banner-slider/slider-bg.jpg" alt="slidebg1"
						data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
						<!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div class="tp-caption   tp-resizeme" id="slide-74-layer-15"
							data-x="['right','right','right','right']"
							data-hoffset="['-37','-36','-27','-90']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['0','0','0','0']" data-width="none"
							data-height="none" data-whitespace="nowrap" data-type="image"
							data-responsive_offset="on"
							data-frames='[{"delay":300,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 5;">
							<img src="${root}/assets/img/home/banner-slider/sl1.png"
								alt="slider-image1" data-ww="['510px','445px','335px','335px']"
								data-hh="['528px','461px','347','347']" data-no-retina>
						</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption   tp-resizeme" id="slide-74-layer-7"
							data-x="['left','left','left','left']"
							data-hoffset="['26','50','50','30']"
							data-y="['top','top','top','top']"
							data-voffset="['110','80','50','70']"
							data-fontsize="['46','46','36','30']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":800,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 6; min-width: 490px; max-width: 490px; white-space: normal; font-size: 46px; line-height: 42px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif; text-transform: capitalize;">
							인기상품 세일</div>
						<div class="tp-caption   tp-resizeme" id="slide-74-layer-9"
							data-x="['left','left','left','left']"
							data-hoffset="['26','50','50','30']"
							data-y="['top','top','top','top']"
							data-voffset="['180','140','110','130']"
							data-fontsize="['22','22','22','20']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 7; min-width: 490px; max-width: 490px; white-space: normal; font-size: 22px; line-height: 36px; font-weight: 300; color: #704664; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							파격 세일</div> <!-- LAYER NR. 4 -->
						<div class="tp-caption   tp-resizeme" id="slide-74-layer-10"
							data-x="['left','left','left','left']"
							data-hoffset="['27','50','50','30']"
							data-y="['top','top','middle','middle']"
							data-voffset="['228','190','0','50']"
							data-fontsize="['14','14','14','17']"
							data-lineheight="['22','22','22','28']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 8; min-width: 490px; max-width: 490px; white-space: normal; font-size: 14px; line-height: 22px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							두개사면 하나 더! </div> <!-- LAYER NR. 5 -->
						<a target="_blank"
						href="https://wrapbootstrap.com/theme/bigbag-store-elegant-ecommerce-theme-WB0B9JN67"
						class="tp-caption rev-btn " id="slide-74-layer-13"
						data-x="['left','left','left','left']"
						data-hoffset="['28','50','50','30']"
						data-y="['top','top','top','bottom']"
						data-voffset="['310','280','230','-55']"
						data-fontsize="['15','15','13','13']"
						data-lineheight="['44','44','40','40']" data-width="none"
						data-height="none" data-whitespace="nowrap"
						data-visibility="['on','on','on','off']" data-type="button"
						data-responsive_offset="on" data-responsive="off"
						data-frames='[{"delay":2100,"speed":100,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":100,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power1.easeIn"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(255,255,255);bg:rgb(71,186,193);bc:rgb(71,186,193);"}]'
						data-textAlign="['inherit','inherit','inherit','inherit']"
						data-paddingtop="[0,0,0,0]" data-paddingright="[25,25,25,25]"
						data-paddingbottom="[0,0,0,0]" data-paddingleft="[25,25,25,25]"
						style="z-index: 9; white-space: nowrap; font-size: 15px; line-height: 44px; font-weight: 700; color: #252525; letter-spacing: 2px; font-family: Oxygen, sans-serif; text-transform: uppercase; border-color: rgba(71, 186, 193, 0.5); border-style: solid; border-width: 3px 3px 3px 3px; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">
							Buy now <i class="fa fa-chevron-right"></i>
					</a>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-75" data-transition="fade"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-easein="default"
						data-easeout="default" data-masterspeed="300"
						data-thumb="img/home/banner-slider/slider-bg.jpg"
						data-delay="4000" data-rotate="0" data-saveperformance="off"
						data-title="Slide" data-param1="" data-param2="" data-param3=""
						data-param4="" data-param5="" data-param6="" data-param7=""
						data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE --> <img
						src="${root}/assets/img/home/banner-slider/slider-bg.jpg" alt="slidebg2"
						data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
						<!-- LAYERS --> <!-- LAYER NR. 6 -->
						<div class="tp-caption   tp-resizeme" id="slide-75-layer-15"
							data-x="['left','left','left','left']"
							data-hoffset="['0','49','40','-120']"
							data-y="['top','top','top','top']"
							data-voffset="['0','0','0','0']" data-width="none"
							data-height="none" data-whitespace="nowrap" data-type="image"
							data-responsive_offset="on"
							data-frames='[{"delay":300,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 5;">
							<img src="${root}/assets/img/home/banner-slider/sl2.png"
								alt="slider-image2" data-ww="['432px','378px','284px','284px']"
								data-hh="['527px','461px','346','346']" data-no-retina>
						</div> <!-- LAYER NR. 7 -->
						<div class="tp-caption   tp-resizeme" id="slide-75-layer-7"
							data-x="['right','right','right','right']"
							data-hoffset="['100','40','23','13']"
							data-y="['top','top','top','top']"
							data-voffset="['110','80','50','65']"
							data-fontsize="['46','46','36','30']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":800,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 6; min-width: 490px; max-width: 490px; white-space: normal; font-size: 46px; line-height: 42px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif; text-transform: capitalize;">
							인기 가방 세일!</div> <!-- LAYER NR. 8 -->
						<div class="tp-caption   tp-resizeme" id="slide-75-layer-9"
							data-x="['right','right','right','right']"
							data-hoffset="['100','40','23','13']"
							data-y="['top','top','top','top']"
							data-voffset="['180','140','110','130']"
							data-fontsize="['22','22','22','20']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 7; min-width: 490px; max-width: 490px; white-space: normal; font-size: 22px; line-height: 36px; font-weight: 300; color: #704664; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							2,000원부터</div> <!-- LAYER NR. 9 -->
						<div class="tp-caption   tp-resizeme" id="slide-75-layer-10"
							data-x="['right','right','right','right']"
							data-hoffset="['100','40','23','13']"
							data-y="['top','top','middle','middle']"
							data-voffset="['228','190','0','50']"
							data-fontsize="['14','14','13','17']"
							data-lineheight="['22','22','22','28']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 8; min-width: 490px; max-width: 490px; white-space: normal; font-size: 14px; line-height: 22px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							2개 사면 하나 더!</div> <!-- LAYER NR. 10 -->
						<a target="_blank"
						href="https://wrapbootstrap.com/theme/bigbag-store-elegant-ecommerce-theme-WB0B9JN67"
						class="tp-caption rev-btn " id="slide-75-layer-13"
						data-x="['center','center','center','left']"
						data-hoffset="['77','65','83','30']"
						data-y="['top','top','top','bottom']"
						data-voffset="['310','280','230','-55']"
						data-fontsize="['15','15','13','13']"
						data-lineheight="['44','44','40','40']" data-width="none"
						data-height="none" data-whitespace="nowrap"
						data-visibility="['on','on','on','off']" data-type="button"
						data-responsive_offset="on" data-responsive="off"
						data-frames='[{"delay":2100,"speed":100,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":100,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power1.easeIn"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(255,255,255);bg:rgb(71,186,193);bc:rgb(71,186,193);"}]'
						data-textAlign="['inherit','inherit','inherit','inherit']"
						data-paddingtop="[0,0,0,0]" data-paddingright="[25,25,25,25]"
						data-paddingbottom="[0,0,0,0]" data-paddingleft="[25,25,25,25]"
						style="z-index: 9; white-space: nowrap; font-size: 15px; line-height: 44px; font-weight: 700; color: #252525; letter-spacing: 2px; font-family: Oxygen, sans-serif; text-transform: uppercase; border-color: rgba(71, 186, 193, 0.5); border-style: solid; border-width: 3px 3px 3px 3px; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">
							Buy now <i class="fa fa-chevron-right"></i>
					</a>
					</li>
					<!-- SLIDE  -->
					<li data-index="rs-76" data-transition="fade"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-easein="default"
						data-easeout="default" data-masterspeed="300"
						data-thumb="img/home/banner-slider/slider-bg.jpg"
						data-delay="4000" data-rotate="0" data-saveperformance="off"
						data-title="Slide" data-param1="" data-param2="" data-param3=""
						data-param4="" data-param5="" data-param6="" data-param7=""
						data-param8="" data-param9="" data-param10="" data-description="">
						<!-- MAIN IMAGE --> <img
						src="${root}/assets/img/home/banner-slider/slider-bg.jpg" alt="slidebg3"
						data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
						<!-- LAYERS --> <!-- LAYER NR. 11 -->
						<div class="tp-caption   tp-resizeme" id="slide-76-layer-15"
							data-x="['right','right','right','right']"
							data-hoffset="['-60','-50','-37','-190']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['0','25','0','0']" data-width="none"
							data-height="none" data-whitespace="nowrap" data-type="image"
							data-responsive_offset="on"
							data-frames='[{"delay":300,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 5;">
							<img src="${root}/assets/img/home/banner-slider/shoe1.png"
								alt="slider-image3" data-ww="['800px','683px','500px','500px']"
								data-hh="['426px','364px','266px','266']" data-no-retina>
						</div> <!-- LAYER NR. 12 -->
						<div class="tp-caption   tp-resizeme" id="slide-76-layer-7"
							data-x="['left','left','left','left']"
							data-hoffset="['26','50','50','30']"
							data-y="['top','top','top','top']"
							data-voffset="['110','80','50','70']"
							data-fontsize="['46','46','36','30']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":800,"speed":800,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Back.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Back.easeInOut"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 6; min-width: 490px; max-width: 490px; white-space: normal; font-size: 46px; line-height: 42px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif; text-transform: capitalize;">
							인기 슈즈 세일!</div> <!-- LAYER NR. 13 -->
						<div class="tp-caption   tp-resizeme" id="slide-76-layer-9"
							data-x="['left','left','left','left']"
							data-hoffset="['26','50','50','30']"
							data-y="['top','top','top','top']"
							data-voffset="['180','140','110','130']"
							data-fontsize="['22','22','22','20']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 7; min-width: 490px; max-width: 490px; white-space: normal; font-size: 22px; line-height: 36px; font-weight: 300; color: #704664; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							2,000원부터</div> <!-- LAYER NR. 14 -->
						<div class="tp-caption   tp-resizeme" id="slide-76-layer-10"
							data-x="['left','left','left','left']"
							data-hoffset="['29','50','50','30']"
							data-y="['top','top','middle','middle']"
							data-voffset="['228','190','0','50']"
							data-fontsize="['14','14','13','17']"
							data-lineheight="['22','22','22','28']"
							data-width="['490','490','355','320']" data-height="none"
							data-whitespace="normal" data-type="text"
							data-responsive_offset="on"
							data-frames='[{"delay":1300,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power4.easeIn"}]'
							data-textAlign="['inherit','inherit','inherit','inherit']"
							data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
							data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
							style="z-index: 8; min-width: 490px; max-width: 490px; white-space: normal; font-size: 14px; line-height: 22px; font-weight: 400; color: #252525; letter-spacing: 0px; font-family: Oxygen, sans-serif;">
							2개 사면 하나 더!</div> <!-- LAYER NR. 15 -->
						<a target="_blank"
						href="https://wrapbootstrap.com/theme/bigbag-store-elegant-ecommerce-theme-WB0B9JN67"
						class="tp-caption rev-btn " id="slide-76-layer-13"
						data-x="['left','left','left','left']"
						data-hoffset="['28','50','50','30']"
						data-y="['top','top','top','bottom']"
						data-voffset="['310','280','230','-55']"
						data-fontsize="['15','15','13','13']"
						data-lineheight="['44','44','40','40']" data-width="none"
						data-height="none" data-whitespace="nowrap"
						data-visibility="['on','on','on','off']" data-type="button"
						data-responsive_offset="on" data-responsive="off"
						data-frames='[{"delay":2100,"speed":100,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":100,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power1.easeIn"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(255,255,255);bg:rgb(71,186,193);bc:rgb(71,186,193);"}]'
						data-textAlign="['inherit','inherit','inherit','inherit']"
						data-paddingtop="[0,0,0,0]" data-paddingright="[25,25,25,25]"
						data-paddingbottom="[0,0,0,0]" data-paddingleft="[25,25,25,25]"
						style="z-index: 9; white-space: nowrap; font-size: 15px; line-height: 44px; font-weight: 700; color: #252525; letter-spacing: 2px; font-family: Oxygen, sans-serif; text-transform: uppercase; border-color: rgba(71, 186, 193, 0.5); border-style: solid; border-width: 3px 3px 3px 3px; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; cursor: pointer;">
							Buy now <i class="fa fa-chevron-right"></i>
					</a>
					</li>
				</ul>
				<div class="tp-bannertimer tp-bottom"
					style="visibility: hidden !important;"></div>
			</div>
		</div>

		<!-- MAIN CONTENT SECTION -->
		<section class="mainContent clearfix">
			<div class="container">
				<div class="page-header">
					<h4>인기 상품 </h4>
				</div>
		
				<div class="row featuredCollection margin-bottom">
					<c:forEach items="${bestGoodsList}" var="obj">
						<div class="col-md-4 col-12">
							<div class="thumbnail"
								onclick="${root}/goods/detail?goods_idx=${obj.GOODS_IDX}';">
								<div class="imageWrapper">
									<img
										src="${root}/upload/${obj.GOODS_FILE}"
										alt="feature-collection-image" height="200">
									<div class="caption">
										<h3>${obj.GOODS_NAME}</h3>
										<small>${obj.GOODS_PRICE}</small>
									</div>
									<div class="masking">
										<a href="${root}/goods/detail?goods_idx=${obj.GOODS_IDX}" class="btn viewBtn">View
											Products</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="page-header">
					<h4>신상품 </h4>
				</div>

				<div class="row featuredCollection margin-bottom">
					<c:forEach items="${neweGoodsList}" var="obj">
						<div class="col-md-4 col-12">
							<div class="thumbnail"
								onclick="${root}/goods/detail?goods_idx=${obj.GOODS_IDX}';">
								<div class="imageWrapper">
									<img
										src="${root}/upload/${obj.GOODS_FILE}"
										alt="feature-collection-image" height="200">
									<div class="caption">
										<h3>${obj.GOODS_NAME}</h3>
										<small>${obj.GOODS_PRICE}</small>
									</div>
									<div class="masking">
										<a href="${root}/goods/detail?goods_idx=${obj.GOODS_IDX}" class="btn viewBtn">View
											Products</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				
			</div>
		</section>

		<!-- LIGHT SECTION -->
		<section class="lightSection clearfix">
			<div class="container">
				<div class="owl-carousel partnersLogoSlider">
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-01.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-02.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-03.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-04.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-05.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-01.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-02.png"
								alt="partner-img">
						</div>
					</div>
					<div class="slide">
						<div class="partnersLogo clearfix">
							<img src="${root}/assets/img/home/partners/partner-03.png"
								alt="partner-img">
						</div>
					</div>
				</div>
			</div>
		</section>

		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</div>

	<script src="${root}/assets/plugins/jquery/jquery.min.js"></script>
	<script src="${root}/assets/plugins/jquery/jquery-migrate-3.0.0.min.js"></script>
	<script src="${root}/assets/plugins/jquery-ui/jquery-ui.js"></script>
	<script src="${root}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${root}/assets/plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${root}/assets/plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
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

