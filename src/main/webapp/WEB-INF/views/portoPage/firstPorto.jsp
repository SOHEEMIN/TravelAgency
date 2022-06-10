<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.98.0">
    <title>SH Travel Agency</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/">
    <%--    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        a {
            text-decoration-line: none;
        }

        @font-face {
            font-family: 'IM_Hyemin-Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/IM_Hyemin-Bold.woff2') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        input {
            border-radius: 5px;
        }
    </style>


</head>
<body>
<header>
    <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-md-6 py-6">
                    <p class="text-muted">Portuguese Republic is a country whose mainland is located on the Iberian
                        Peninsula of Southwestern Europe</p>
                </div>
                <div class="col-sm-2 offset-md-0.1 py-0.1">
                    <h4 class="text-white" style="font-family: 'Pacifico', cursive;font-size: 30px">Trip</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white" style="font-size: 18px">Trip to Porto</a></li>
                        <li><a href="#" class="text-white" style="font-size: 18px">Trip to Lisbon</a></li>
                    </ul>
                </div>
                <div class="col-sm-2 offset-md-0.1 py-0.1">
                    <h4 class="text-white" style="font-family: 'Pacifico', cursive; font-size: 30px">Reservation</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white" style="font-size: 18px">Manage Booking</a></li>
                        <li><a href="#" class="text-white" style="font-size: 18px">Cart</a></li>
                    </ul>
                </div>
                <div class="col-sm-2 offset-md-0.1 py-0.1">
                    <h4 class="text-white" style="font-family: 'Pacifico', cursive; font-size: 30px">members</h4>
                    <ul class="list-unstyled">
                        <c:if test="${sessionScope.loginMemberId == null}">
                            <li><a href="/member/login" class="text-white" style="font-size: 18px">Login</a></li>
                            <li><a href="/member/saveFile" class="text-white" style="font-size: 18px">Join us</a></li>
                        </c:if>
                        <c:if test="${sessionScope.loginMemberId != null}">
                            <li><a href="/member/logout" class="text-white" style="font-size: 18px">Logout</a></li>
                        </c:if>
                        <li><a href="/board/paging" class="text-white" style="font-size: 18px">Notice</a></li>
                        <li><a href="#" class="text-white" style="font-size: 18px">Event</a></li>
                        <c:if test="${sessionScope.loginMemberId == 'admin'}">
                            <li><a href="/board/saveFile" class="text-white" style="font-size: 18px">Manage notice</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="/" class="navbar-brand d-flex align-items-center">

                <strong style="font-family: 'Pacifico', cursive; font-size: 35px">SH Travel Agency</strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                    aria-controls="offcanvasRight" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        </div>
    </div>
</header>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-12 col-md-8 mx-auto">
                <h1 class="fw-light" style="font-family: 'Pacifico', cursive;">SH Travel Agency</h1>
                <p class="lead text-muted" style="font-family: 'IM_Hyemin-Bold'; font-size: 24px;"><br>Trip to Porto<br>
                </p>
                <form action="/cart/save" method="post" name="cartSubmitForm">
                    <div align="left"
                         style="background-color: #f9f2f9; padding:20px; font-family:'IM_Hyemin-Bold'; font-size: 22px; border-radius: 20px;">
                        <br>
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../../../resources/img/p1.jpg" height="600" width="600"
                                                     class="d-block w-100" alt="...">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../../../resources/img/tripporto2.jpg" height="600"
                                                     width="600"
                                                     class="d-block w-100" alt="...">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../../../resources/img/tripporto3.jpg" height="600"
                                                     width="600"
                                                     class="d-block w-100" alt="...">
                                            </div>
                                            <button class="carousel-control-prev" type="button"
                                                    data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button"
                                                    data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6"><h1 style="font-weight: bold; font-size: 30px;" >🎼재즈와 함께하는 낭만의
                                    포르투</h1>
                                    <input type="hidden" name="itemTitle" value="재즈와 함께하는 낭만의 포르투">
                                    <p></p>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>상품 번호</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                001
                                                <input type="hidden" name="i_id" value="001">
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>상품 특징</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                포르투의 멋진 야경을 감상하며 재즈를 즐기는 낭만이 가득한 5박 6일 패키지여행 상품입니다.
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>여행 지역</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                포르투 3박 / 코스타노바 2박
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>이용 항공</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                대한항공 [인천출발] 08:00 / 18:40 <br> 대한항공 [리스본출발] 10:30 / 21:05
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>숙박 시설</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                (택1)인터컨티넨탈 포르토 / 쉐라톤 포르토
                                                <select class="form-select form-select-lg mb-3"
                                                        aria-label=".form-select-lg example" onchange="hotel()"
                                                        id="selectHotel" name="Hotel">
                                                    <option value="0" id="basic">호텔 선택</option>
                                                    <option value="200000" id="hotel1" name="인터컨티넨탈">인터컨티넨탈 포르토(+200,000원)</option>
                                                    <option value="0" id="hotel2" name="쉐라톤">쉐라톤 포르토(+0원)</option>
                                                </select>
                                            </div>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>현지 투어</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                (택1)와이너리 투어 / 나타 투어(에그타르트)
                                                <select class="form-select form-select-lg mb-3"
                                                        aria-label=".form-select-lg example" onchange="tour()"
                                                        id="selectTour" name="Tour">
                                                    <option value="0" id="basic2">투어 선택</option>
                                                    <option value="50000" id="wine" name="wine">와이너리 투어(+50,000원)</option>
                                                    <option value="30000" id="nata" name="nata">나타 투어(+30,000원)</option>
                                                    <option value="0" id="no" name="no">투어 선택안함(+0원)</option>
                                                </select>
                                            </div>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>출발 일자</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                <div class="input-group input-daterange">
                                                    <input type="date" class="form-control input1" name="bookingStartDate"
                                                           id="datepicker" placeholder="Start Date" style="height: 50px; font-size: 21px;">
                                                </div>
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>기본 금액</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                <h>2,500,000원</h>
                                            </div>
                                            <p></p>
                                            <input type="hidden" value="2500000" id="price">


                                            <input type="hidden" value="2500000" id="price2">
                                            <div class="col-3" style="font-size: 21px;">
                                                <li>총 금액</li>
                                            </div>
                                            <div class="col-9" style="font-size: 21px;">
                                                <input type="text" id="result" value="0" style="border: none; width: 110px; background: transparent;" name="Price" readonly>원
                                            </div>
                                            <p></p>
                                            <div class="col-3" style="font-size: 21px;">
                                            </div>
                                            <div align="right" class="col-9" style="font-size: 21px;">
                                                <img src="../../../resources/img/icon-twitter.png" onclick="javascript:shareTwitter();">
                                                <img src="../../../resources/img/icon-facebook.png" onclick="javascript:shareFacebook();">
                                                <img src="../../../resources/img/icon-kakao.png" id="kakao" onclick="javascript:shareKakao();">
                                                <button type="button" onclick="cart()" class="btn btn-outline-danger">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
                                                        <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"></path>
                                                        <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                                                    </svg>
                                                    장바구니
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>
<footer class="text-muted py-5">
    <p class="float-end mb-1">
        <a href="#" style="color: #080808">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up"
                 viewBox="0 0 16 16">
                <path d="M3.204 11h9.592L8 5.519 3.204 11zm-.753-.659 4.796-5.48a1 1 0 0 1 1.506 0l4.796 5.48c.566.647.106 1.659-.753 1.659H3.204a1 1 0 0 1-.753-1.659z"/>
            </svg>
            Click! Go Up</a>
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <p class="mb-1" style="font-size: medium; font-weight: bold">주식회사 SH여행사</p>
                <span style="font-size: small">대표이사 : 민소희</span>
                <p class="mb-1" style="font-size: xx-small">
                    SH여행사는 영업보증 보험 - 국외여행업의 기획여행(2억원), 국외여행업(4천만원)에 가입되어 있습니다.<a href="#">(자세히보기)</a>
                </p>
            </div>
            <div class="col-sm-7">
                <ul class="list-unstyled" style="font-size: 12px">
                    <li><br>사업자등록번호: 123-45-6789 &nbsp;| 통신판매업신고: 인천중구 - 0001 | 관광사업자 등록번호: 제 2022 - 000001호</li>
                    <li>개인정보관리책임자: 민소희 | 주소: 인천 중구 영종대로 123길 123호 &nbsp;| 대표번호:&nbsp;<a href="tel:010-1234-5678">010-1234-5678</a>
                    </li>
                    <li>e-mail:&nbsp;<a href="minsohee94@naver.com" target="_blank">minsohee94@naver.com</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                Copyrightⓒ 2022 IOS All Rights Reserved
            </div>
        </div>
    </section>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
<script>
    function hotel() {
        let selectHotel = document.getElementById("selectHotel").value;
        let hotel1 = document.getElementById("hotel1").value;
        let hotel2 = document.getElementById("hotel2").value;
        let result = document.getElementById("price").value;
        let basic = document.getElementById("basic").value;
        selectHotel = parseInt(selectHotel);
        hotel1 = parseInt(hotel1);
        hotel2 = parseInt(hotel2);
        basic = parseInt(basic);
        if (selectHotel == hotel1) {
            const sum = (hotel1 + parseInt(result));
            document.getElementById("result").value = sum;
            document.getElementById("price2").value = sum;
        } else if (selectHotel == hotel2) {
            const sum = (hotel2 + parseInt(result));
            document.getElementById("result").value = sum;
            document.getElementById("price2").value = sum;
        } else if (selectHotel == basic) {
            const sum = (basic + parseInt(result));
            document.getElementById("result").value = sum;
            document.getElementById("price2").value = sum;
        }
    }

    function tour() {
        let selectTour = document.getElementById("selectTour").value;
        let wine = document.getElementById("wine").value;
        let nata = document.getElementById("nata").value;
        let result2 = document.getElementById("price2").value;
        let basic2 = document.getElementById("basic2").value;
        let no = document.getElementById("no").value;
        selectTour = parseInt(selectTour);
        wine = parseInt(wine);
        nata = parseInt(nata);
        basic2 = parseInt(basic2);
        no = parseInt(no);
        if (selectTour == wine) {
            const sum = (wine + parseInt(result2));
            console.log(sum)
            document.getElementById("result").value = sum;
        } else if (selectTour == nata) {
            const sum = (nata + parseInt(result2));
            document.getElementById("result").value = sum;
        } else if (selectTour == basic2) {
            const sum = (basic2 + parseInt(result2));
            document.getElementById("result").value = sum;
        } else if (selectTour == no) {
            const sum = (no + parseInt(result2));
            document.getElementById("result").value = sum;
        }

    }

    $(function () {
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd'
            , minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        });
        $("#datepicker").datepicker();
        $('#datepicker').datepicker('option', 'minDate', '0');
    });

    function shareWith(){

    }
    function cart(){
        cartSubmitForm.submit(); //노란줄있지만 잘되나..?
        // <a href="/cart/save"></a>
    }

    function shareTwitter() {
        var sendText = "소희 포트폴리오"; // 전달할 텍스트
        var sendUrl = "SOHEEMIN.github.io"; // 전달할 URL
        window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
    }

    function shareFacebook() {
        var sendUrl = "SOHEEMIN.github.io"; // 전달할 URL
        window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
    }

    function shareKakao() {

        // 사용할 앱의 JavaScript 키 설정
        Kakao.init('51197c5fa7b097dab7da52a2e4fa9e48');

        // 카카오링크 버튼 생성
        Kakao.Link.createDefaultButton({
            container: '#kakao', // 카카오공유버튼ID
            objectType: 'feed',
            content: {
                title: "소희의 노션", // 보여질 제목
                description: "소희의 노션입니다.", // 보여질 설명
                imageUrl: "https://notion.so", // 콘텐츠 URL
                link: {
                    webUrl: "https://notion.so"
                }
            }
        });
    }



</script>
</html>