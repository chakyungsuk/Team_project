<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.jeonguggu.matnam.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="pizza, delivery food, fast food, sushi, take away, chinese, italian food">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="/resources/user/css/animate.min.css" rel="stylesheet">
    <link href="/resources/user/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/user/css/menu.css" rel="stylesheet">
    <link href="/resources/user/css/style.css" rel="stylesheet">
    <link href="/resources/user/css/responsive.css" rel="stylesheet">
    <link href="/resources/user/css/elegant_font/elegant_font.min.css" rel="stylesheet">
    <link href="/resources/user/css/fontello/css/fontello.min.css" rel="stylesheet">
    <link href="/resources/user/css/magnific-popup.css" rel="stylesheet">
    <link href="/resources/user/css/pop_up.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    
    <!-- Radio and check inputs -->
    <link href="/resources/user/css/skins/square/grey.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >
    
    <!-- glightbox css -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/glightbox/css/glightbox.min.css">

    <!-- One of the following themes -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/@simonwep/pickr/themes/nano.min.css" /> <!-- 'classic' theme -->

    <!-- swiper css -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/swiper/swiper-bundle.min.css">

    <!-- Icons Css -->
    <link href="/resources/chat/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/resources/chat/dist/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/user/css/custom.css" rel="stylesheet">
    <style type="text/css">
    	.login_search:before {
		  content: "";
		  display: block;
		  float: left;
		  margin-right: 28px; 
		  width: 1px;
		  height: 16px;
		  background: #000000; 
		} 
		
		.login_text a:link{
			color: black;
		} 
		
		a:link{
			color: black;
			text-decoration: none;
		}
		
		.city a:link{
			color: black;
			text-decoration: none;
		}
		.city a:hover{
			color: black;
			text-decoration: underline;
		}
		button{
			background:none;
			border:none;
		}
		.on a:link{
			color:blue;
			text-decoration: none;
		}
    </style> 
</head>

<body>
    <!-- Header ================================================== -->
    <%@ include file="/WEB-INF/views/user/include/top.jsp"%>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/profileSub.jpg" data-natural-width="1400" data-natural-height="550">
        <div id="subheader">
            <div id="sub_content">
                <h1>맛있는 한 끼를 위한 여정입니다</h1>
                <div><i class="icon_pin"></i> 맛남의 광장</div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="/index/matnamMain">홈</a></li>
                <li><a href="/user/profileView">프로필관리</a></li>
                <li><a href="/user/profileEdit">프로필변경</a></li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
	

		<div class="container margin_60_35">
		    <div class="row justify-content-center">
		        <div class="col-5">
		        	<form id="formList" name="formList" method="post" action="/user/profileUpdt" enctype="multipart/form-data">
						<input type="hidden" id="mnMmSeq" name="mnMmSeq" value="${sessSeq}">
						<input type="hidden" id="photoBackgroundChanged" name="photoBackgroundChanged" value="0">
						<input type="hidden" id="photoChanged" name="photoChanged" value="0">
			            <div class="box_style_2" id="order_process">
			                <h2 class="inner" style="text-align: center;">프로필 변경</h2>
			                <!-- <div class="mb-3 profile-user">
		                        <img src="/resources/chat/dist/assets/images/users/avatar-1.jpg"
		                            class="rounded-circle avatar-lg img-thumbnail user-profile-image" alt="user-profile-image">
		                        <div class="avatar-xs p-0 rounded-circle profile-photo-edit">
		                            <input id="profile-img-file-input" type="file" class="profile-img-file-input">
		                            <label for="profile-img-file-input" class="profile-photo-edit avatar-xs">
		                                <span class="avatar-title rounded-circle bg-light text-body">
		                                    <i class="bx bxs-camera"></i>
		                                </span>
		                            </label>
		                        </div>
		                    </div>
			                <div>
				                <div class="mx-auto col-sm-9 col-md-9 my-5">
				                	 <div class="form-group">
					                    <label>소개 메세지</label>
					                    <input type="text" id="email_booking_2" name="email_order" class="form-control" placeholder="맛을 모르는 자, 일하지 말라">
					                </div>
			                	</div>  
			                </div> -->
			                <!-- Start settings tab-pane -->
				            <div class="tab-pane" id="pills-setting" role="tabpanel" aria-labelledby="pills-setting-tab">
				                <!-- Start Settings content -->
				                <div>
				                    <div class="user-profile-img">
				                        <!-- <img src="/resources/chat/dist/assets/images/small/img-4.jpg" class="profile-img profile-foreground-img" style="height: 220px;" alt=""> -->
				                        <img src="/resources/chat/dist/assets/images/4902908.jpg" class="profile-img profile-foreground-img" style="height: 220px;" alt="">
				                        <div class="overlay-content">
				                            <div>
				                                <div class="user-chat-nav p-3">
				                                    <div class="d-flex w-100 align-items-center">
				                                        <div class="flex-grow-1">
				                                        </div>
				                                        <div class="flex-shrink-0">
				                                            <div class="avatar-xs p-0 rounded-circle profile-photo-edit" data-bs-toggle="tooltip"
				                                                data-bs-trigger="hover" data-bs-placement="bottom" title="Change Background">
				                                                <input id="profile-foreground-img-file-input" name="file" type="file"
				                                                    class="profile-foreground-img-file-input">
				                                                <label for="profile-foreground-img-file-input" class="profile-photo-edit avatar-xs">
				                                                    <span class="avatar-title rounded-circle bg-light text-body">
				                                                        <i class="bx bxs-pencil"></i>
				                                                    </span>
				                                                </label>
				                                            </div>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				
				                    <div class="text-center p-3 p-lg-4 border-bottom pt-2 pt-lg-2 position-relative" style="margin-top:-80px;">
				                        <div class="mb-3 profile-user">
				                            <img src="/resources/chat/dist/assets/images/users/avatar-1.jpg" class="rounded-circle avatar-lg img-thumbnail user-profile-image" style="width:150px; height:150px;" alt="user-profile-image">
				                            <div class="avatar-xs rounded-circle profile-photo-edit" style="position:relative; margin-top:-50px; margin-left:95px;">
				                                <label for="profile-img-file-input" class="profile-photo-edit avatar-xs">
				                                <input id="profile-img-file-input" name="file1" type="file" class="profile-img-file-input">
				                                    <span class="avatar-title rounded-circle bg-light text-body" style="width:50px; height:50px;">
				                                        <i class="bx bxs-camera" style="font-size:40px;"></i>
				                                    </span>
				                                </label>
				                            </div>
				                        </div> 
				                    </div> 
				                    <!-- End profile user -->
				
				                    <!-- Start User profile description -->
				                    <div class="user-setting mt-5" style="height:650px;" data-simplebar>
				                        <div id="settingprofile" class="accordion accordion-flush">
			                                <div id="personalinfo" class="accordion-collapse collapse show" aria-labelledby="headerpersonalinfo"
			                                    data-bs-parent="#settingprofile">
			
		                                        <div>
		                                            <label for="mnMmIntroduce" class="form-label text-muted fs-13">소개글</label>
		                                            <input type="text" class="form-control" id="mnMmIntroduce" name="mnMmIntroduce" value="<c:out value="${rt.mnMmIntroduce}"/>" placeholder="소개글을 입력하세요." >
		                                        </div>
		                                        
		                                        <div class="mt-3">
		                                            <div class="row mt-2">
		                                            	<label for="mnmpNumber" class="form-label text-muted fs-13 col-3">전화번호</label>
		                                            	<div class="float-end offset-4 col-5 row">
			                                            	<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmMobilePublicNy" id="mnMmMobilePublicNy1" value="1" <c:if test="${rt.mnMmMobilePublicNy eq 1}">checked</c:if>>
																<label class="form-check-label text-muted fs-13" for="mnMmMobilePublicNy1">
																	공개
																</label>
															</div>
															<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmMobilePublicNy" id="mnMmMobilePublicNy2" value="0" <c:if test="${rt.mnMmMobilePublicNy eq 0}">checked</c:if>>
																<label class="form-check-label text-muted fs-13" for="mnMmMobilePublicNy2">
																	비공개
																</label>
															</div>
														</div>
		                                            </div>
		                                            <input type="text" class="form-control" id="mnmpNumber" name="mnmpNumber" value="<c:out value="${rt.mnmpNumber}"/>" placeholder="숫자만 입력해주세요." >
		                                        </div>
		
		                                        <div class="mt-3">
		                                            <div class="row mt-2">
			                                            <label for="mnMmEmail" class="form-label text-muted fs-13 col-3">이메일</label>
		                                            	<div class="float-end offset-4 col-5 row">
			                                            	<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmEmailPublicNy" id="mnMmEmailPublicNy1" value="1" <c:if test="${rt.mnMmEmailPublicNy eq 1}">checked</c:if>>
																<label class="form-check-label text-muted fs-13" for="mnMmEmailPublicNy1">
																	공개
																</label>
															</div>
															<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmEmailPublicNy" id="mnMmEmailPublicNy2" value="0" <c:if test="${rt.mnMmEmailPublicNy eq 0}">checked</c:if>>
																<label class="form-check-label text-muted fs-13" for="mnMmEmailPublicNy2">
																	비공개
																</label>
															</div>
														</div>
		                                            </div>
		                                            <input type="text" class="form-control" id="mnMmEmail" name="mnMmEmail" value="<c:out value="${rt.mnMmEmail}"/>" placeholder="이메일을 입력하세요." >
		                                        </div>
		                                        
		                                        <div class="mt-3">
		                                            <div class="row mt-2">
			                                            <label for="mnMmEmail" class="form-label text-muted fs-13 col-3">주소</label>
		                                            	<div class="float-end offset-4 col-5 row">
			                                            	<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmAddressPublicNy" id="mnMmAddressPublicNy1" value="1" <c:if test="${rt.mnMmAddressPublicNy eq 1}">checked</c:if>>
																<label class="form-check-label text-muted fs-13" for="mnMmAddressPublicNy1">
																	공개
																</label>
															</div>
															<div class="form-check col-auto">
																<input class="form-check-input" type="radio" name="mnMmAddressPublicNy" id="mnMmAddressPublicNy2" value="0" <c:if test="${rt.mnMmAddressPublicNy eq 0}">checked</c:if>> 
																<label class="form-check-label text-muted fs-13" for="mnMmAddressPublicNy2">
																	비공개
																</label>
															</div>
														</div>
		                                            </div>
		                                            <input type="text" class="form-control" id="mnmaAddress1" name="mnmaAddress1" value="<c:out value="${rt.mnmaAddress1}"/>" placeholder="간략한 주소를 입력하세요." >
		                                        </div>
		
		                                        <div class="mt-3">
		                                            <div class="row mt-2">
			                                            <label for="mnmaAddress1" class="form-label text-muted fs-13 col-3">지역</label>
		                                            </div>
		                                            <%-- <input type="text" class="form-control" id="mnmaAddress1" name="mnmaAddress1" value="<c:out value="${rt.mnmaAddress1}"/>" placeholder="Location" > --%>
		                                            <!-- <div>
		                                            	<div>
		                                            		<div id="dev_sch_area_name" style="border:1px solid gray;">
		                                            			<span class="hiCity mx-2"></span>
		                                            		</div>
		                                            	</div>
		                                            	<div style="border:1px solid gray;" class="mt-3">
		                                            		<ul style="list-style: none;">
		                                            			<li id="dev_area_gu_code_Q000" class="city"><a href="javascript:sch_area_si_chg('Q000', '고양시')">고양시</a></li>
		                                            		</ul>
		                                            	</div>
		                                            </div> -->
	                                            	<div class="form-group">
														<div class="mb-3">
															<c:set var="listCodeSeoul" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
															<c:forEach items="${listCodeSeoul}" var="itemSeoul" varStatus="statusRegion">
																<input required="required" type="checkbox" class="btn-check" id="itemSeoulCd<c:out value="${itemSeoul.mncdSeq}"/>" name="mnmlLocationCdArray" value="${itemSeoul.mncdSeq}" autocomplete="off">
																<label class="btn btn-outline-primary" for="itemSeoulCd<c:out value="${itemSeoul.mncdSeq}"/>"><c:out value="${itemSeoul.mncdName}"/></label>
															</c:forEach>
														</div> 
														<label for="mnmlLocationCdArray" class="error">최소 한 개 지역을 선택해주세요.</label>
													</div>
		                                        </div>
			                                </div>
			                            </div>
									</div>
								</div>
							</div>
							<div style="text-align: center; padding:10px; "> 
			                	<%-- <button type="button" onclick = "javascript:goUpdt(${sessSeq})" class="btn_1" style="width:200px;">수정</button> --%>
			                	<button type="submit" class="btn_1" style="width:200px;">수정</button>
			                </div>
			            </div><!-- End box_style_1 -->
			            <button type="button" class="btn btn-outline-secondary" onclick = "javascript:goForm(${sessSeq})">돌아가기</button>
					</form>
		        </div><!-- End col -->
		        
		    </div><!-- End row -->
		</div><!-- End container -->


<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
	<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
    
     <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->
	
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>

<!-- BootstrapValidator JS -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>

<script>
	$(document).ready(function(){
		<c:forEach items="${regionList}" var="itemRegion" varStatus="statusRegion">
			$("input[id=itemSeoulCd"+${itemRegion.mnmlLocationCd}+"]").prop("checked",true);
		</c:forEach>
	});

    $(function () {
		 'use strict';
        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 15,
            from: 0,
            to:5,
            type: 'double',
            step: 1,
            prefix: "Km ",
            grid: true
        });
    });
    
    goForm = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/profileView");
		$("#formList").submit();
	} 
    goUpdt = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/profileUpdt");
		$("#formList").submit();
	} 
    
    document.querySelector("#profile-foreground-img-file-input").addEventListener("change", function() {
        var e = document.querySelector(".profile-foreground-img"),
            t = document.querySelector(".profile-foreground-img-file-input").files[0],
            a = new FileReader;
        a.addEventListener("load", function() {
            e.src = a.result
        }, !1), t && a.readAsDataURL(t)
    }), document.querySelector("#profile-img-file-input").addEventListener("change", function() {
        var e = document.querySelector(".user-profile-image"),
            t = document.querySelector(".profile-img-file-input").files[0],
            a = new FileReader;
        a.addEventListener("load", function() {
            e.src = a.result
        }, !1), t && a.readAsDataURL(t)
    });
    
    /* function sch_area_si_chg(s_code, s_name){	//구 검색
    	var max_cnt = 5;
		if($("#dev_sch_area_name span").length >= max_cnt) {
			alert("최대 "+ max_cnt +"개까지 선택할 수 있습니다.");
			$("#dev_area_gu_code_"+s_code).attr("checked",false);
		} else {
			if($("#dev_area_gu_code_"+s_code).hasClass("on")==true){
			}else{
				$('<span class="citySelect'+s_code+'">'+s_name+'<button type="button" onclick="sch_area_del(\''+s_code+'\')"><i class="bi bi-x-circle"></i></button></span>').appendTo('.hiCity');
				$('#dev_area_gu_code_'+s_code).addClass("on");
			}
		}
    }
    
    function sch_area_del(d_code){
    	$('.citySelect'+d_code+'').remove();
    	$("#dev_area_gu_code_"+d_code).removeClass("on");
    } */
    
    function sch_area_si_chg(d_code){	//구 검색
    	if(d_code.length == 4 && d_code.substr(1, 3) == "000") { //시,도 전체
    		$("#dev_area_gu_code_"+ d_code).removeClass("on");
    	} else {
    		$("#dev_area_dong_code_"+d_code).attr("checked", false);
    		sch_item_unsel("dev_area_dong_code_"+ d_code);
    	}
    }
    
    $(document).ready(function(){
    	$("#itemSeoulCd97").click(function(){
    		if($("#itemSeoulCd97").is(":checked")) {
    			$("input[type='checkbox']").prop("checked", false);
    			$(this).prop("checked", true);
    		}
    	});
    	
    	$("#profile-foreground-img-file-input").change(function(){
    		$("#photoBackgroundChanged").val(1);
	    });
    	$("#profile-img-file-input").change(function(){
    		$("#photoChanged").val(1);
	    });
    	
    	$("input[type='checkbox']").on("click",function(){
    		let count = $("input:checked[type='checkbox']").length;
    		
    		if(count > 5){
    			$(this).prop("checked", false);
    			alert("5개 이하만 선택 가능합니다.");
    		}
    		
    		if($("#itemSeoulCd97").is(":checked")) {
    			if($(this).attr("id") != "itemSeoulCd97"){
    				$("#itemSeoulCd97").prop("checked", false);
    			}
    		}
    	});
    });
    
    $( document ).ready( function () {
		$( "#formList" ).validate( {
			rules: {
				'mnmlLocationCdArray[]':"required"
			},
			messages: {
				'mnmlLocationCdArray[]':"최소 한개를 선택해주세요."
			},
			errorElement: "div",
			errorPlacement: function ( error, element ) {
				
				if ( element.attr( "type" ) == "checkbox" ) {
					error.appendTo("#errorToShow");
				} else {
					error.insertAfter( element );
				}

			},
			success: function ( label, element ) {
				// Add the span element, if doesn't exists, and apply the icon classes to it.
				if ( !$( element ).next( "span" )[ 0 ] ) {
					$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
				}
			},
			highlight: function ( element, errorClass, validClass ) {
				$( element ).parents( ".col-md-4" ).addClass( "has-error" ).removeClass( "has-success" );
				$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
			},
			unhighlight: function ( element, errorClass, validClass ) {
				$( element ).parents( ".col-md-4" ).addClass( "has-success" ).removeClass( "has-error" );
				$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
			}
		} );
	} );
</script>

</body>
</html>