
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="icon" href="./img/core-img/favicon.ico">
<link rel="stylesheet" href="../css/style2.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
.star_rating {
	font-size: 0;
	letter-spacing: -4px;
}

.star_rating a {
	font-size: 22px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #777;
}

.seller-info {
	margin-top: 1.2em;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/module/headerAndNavi.jsp"></jsp:include>
	<div class="container-fluid mt-5">
		<div class="row pt-5 ">
			<div class="col-2">왼쪽</div>
			<div class="col-8">
				<!-- 상품정보 전체내용 -->
				<div class="container">
					<div class="row">

						<!-- 이미지 칼럼 -->
						<div class="col-5 ">
							<div class="row ml-3 border">
								<!-- 캐러셀 -->
								<div class="col-12 ">

									<div>
										<div class=" py-4">
											<img class="d-block w-100 view" src="${dto.shop_imagepath1 }"
												alt="First slide" style="height: 20em">
										</div>

									</div>

									<!-- 	밑에 이미지 3개 -->
									<div class="row pb-3 pt-4 ">
										<div class="col-4 border pt-2 pb-2">
											<img class="imgCa" src="${dto.shop_imagepath1 }" alt="또안됌"
												style="height: 6em">
										</div>
										<div class="col-4 border pt-2 pb-2">
											<img class="imgCa" src="${dto.shop_imagepath2 }" alt="또안됌"
												style="height: 6em">
										</div>
										<div class="col-4 border pt-2 pb-2">
											<img class="imgCa" src="${dto.shop_imagepath3 }" alt="또안됌"
												style="height: 6em">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-1 "></div>
						<div class="col-6">

							<div class="row pb-4 border-bottom">
								<div class="col-12">
									<strong>[판매자 브랜드 ] ${dto.shop_title }</strong>
								</div>

							</div>

							<div class="row pb-3 mt-4 border-bottom">
								<div class="col-4">판매가</div>
								<div class="col-8">
									<p>
										<strong>${dto.shop_price }</strong>
									</p>

								</div>
							</div>


							<div class="row pb-3 mt-4  border-bottom">
								<div class="col-4">판매 단위</div>
								<div class="col-8">
									<p>
										${dto.shop_quantity } <strong> (개)</strong>
									</p>

								</div>
							</div>




							<div class="row pb-3 mt-4 border-bottom">
								<div class="col-4">유통기한</div>
								<div class="col-8">
									<p>
										<strong>${dto.shop_expiration }</strong>
									</p>

								</div>
							</div>

							<div class="row pb-3 mt-4 border-bottom">
								<div class="col-4">지역</div>
								<div class="col-8">
									<p>
										<strong>${dto.shop_location }</strong>
									</p>

								</div>
							</div>

							<!-- 테이블 추가요망 -->
							<div class="row pb-3 mt-4  border-bottom">
								<div class="col-4">알레르기 정보</div>
								<div class="col-8">
									<p>
										<strong>-밀,계란,우유,밤,함유(공주밤 몽블랑)</strong>
									</p>

								</div>
							</div>

							<div class="row pb-3 mt-4 border-bottom-0">
								<div class="col-12" style="text-align: center"
									style="font-wight:600">

									<a href="/shopboard/shopBoard_buyProc" class="btn akame-btn">구
										매 하 기 </a> <a href="#" class="btn akame-btn"><i
										class="icon_cart"></i>장 바 구 니</a>

								</div>
							</div>

						</div>
					</div>


				</div>


			</div>
			<div class="col-2">오른쪽</div>
		</div>
		<div class=" pb-5">
			<div class=" col-12"></div>
		</div>
	</div>
	<section class=" bg-gray">
	<div class="container">
		<div class="row my-2">
			<div class="col-12 order-lg-2">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a href="" data-target="#profile"
						data-toggle="tab" class="nav-link active font-weight-bold">상품
							정보</a></li>
					<li class="nav-item"><a href="" data-target="#messages"
						data-toggle="tab" class="nav-link font-weight-bold">리뷰 작성</a></li>
					<li class="nav-item"><a href="" data-target="#edit"
						data-toggle="tab" class="nav-link font-weight-bold">판매자 정보</a></li>
				</ul>
				<div class="tab-content py-4">
					<div class="tab-pane active" id="profile">
						<div class="col-lg-12">
							<p>소 개</p>
						</div>

						<!--/row-->
					</div>
					<div class="tab-pane" id="messages">
						<div class="alert alert-info alert-dismissable">
							<a class="panel-close close" data-dismiss="alert">×</a> This is
							an <strong>.alert</strong>. Use this to show important messages
							to the user.
						</div>

					</div>
					<div class="tab-pane " id="edit">

						<div class="row border p-2">
							<div class="col-2 font-weight-bold seller-info">상호 / 대표자</div>
							<div class="col-4 border-right seller-info">
								<p>최정현</p>
							</div>
							<div class="col-2 font-weight-bold seller-info">브랜드</div>
							<div class="col-4 seller-info">
								<p>마이페이지에서 추가하자 멤버테이블에 칼럼추</p>
							</div>
						</div>
						<div class="row border p-2 ">
							<div class="col-2 font-weight-bold seller-info">사업자번호</div>
							<div class="col-4 border-right seller-info">
								<p>하드코딩</p>
							</div>
							<div class="col-2 font-weight-bold seller-info">통신사판매신고번호</div>
							<div class="col-4  seller-info">
								<p>하드코딩</p>
							</div>

						</div>
						<div class="row border p-2">
							<div class="col-2 font-weight-bold seller-info">연락처</div>
							<div class="col-4 border-right seller-info">
								<p>010-6471-3589</p>
							</div>
							<div class="col-2 font-weight-bold seller-info">E-mail</div>
							<div class="col-4 seller-info">
								<p>cwg94@naver.com</p>
							</div>

						</div>
						<div class="row border p-2">
							<div class="col-2 font-weight-bold seller-info">영업 소재지</div>
							<div class="col-10 seller-info">
								<p>부용로 236 11773 번지 금오주공 9단지 903동 902호</p>
							</div>
						</div>


						<div class="row mt-5 border rounded" style="height: 10em">
							<div class="col-12 h-50 " style="background-color: #D8D8D8">
								<div class="mt-2 ">
									<h1 class="font-weight-bold display-5">반송지 정보</h1>
								</div>
							</div>

							<div class="col-2 h-50" style="margin-top: 0.3em">
								<div class="mt-4 font-weight-bold ">
									<p>교환 / 반품 주소</p>
								</div>
							</div>

							<div class="col-10 h-50" style="margin-top: 0.3em">
								<div class=" mt-4">
									<p>부용로 236 11773 번지 금오주공 9단지 903동 902호</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
	</section>
	<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	<script>
		// 	이미지 클릭시 이미지 확대	
		$(".imgCa").on("click", function() {
			var imgSrc = $(this).attr("src");
			$(".view").attr("src", imgSrc);
		})

		//별점
		$(".star_rating a").click(function() {
			$(this).parent().children("a").removeClass("on");
			$(this).addClass("on").prevAll("a").addClass("on");
			return false;
		});
		// 		//아임포트 API
		// 		$("buy_btn").on("click", function() {

		// 			IMP.init('imp50043848'); // 가맹점 식별 코드
		// 			IMP.request_pay({
		// 				pg : 'cacaopay', // version 1.1.0부터 지원.
		// 				pay_method : 'card',
		// 				merchant_uid : '가맹점에서 관리하는 고유번호' + new Date().getTime(),
		// 				name : '주문명:결제테스트',
		// 				amount : '${shop_price}',
		// 				buyer_email : '${id.member_id}',
		// 				buyer_name : '${id.member_name}',
		// 				buyer_tel : '${id.member_phone}',
		// 				buyer_addr : '서울특별시 강남구 삼성동',
		// 				buyer_postcode : '123-456',
		// 				m_redirect_url : '/board/shopBoard_import'
		// 			}, function(rsp) {
		// 				if (rsp.success) {
		// 					var msg = '결제가 완료되었습니다.';
		// 					msg += '고유ID : ' + rsp.imp_uid;
		// 					msg += '상점 거래ID : ' + rsp.merchant_uid;
		// 					msg += '결제 금액 : ' + rsp.paid_amount;
		// 					msg += '카드 승인번호 : ' + rsp.apply_num;
		// 				} else {
		// 					var msg = '결제에 실패하였습니다.';
		// 					msg += '에러내용 : ' + rsp.error_msg;
		// 				}
		// 				alert(msg);
		// 			});
		// 		})
		
	</script>
</body>
</html>
