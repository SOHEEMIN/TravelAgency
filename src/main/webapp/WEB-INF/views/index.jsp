<!doctype html>
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
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">


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

        .lead text-muted {
            -webkit-text-stroke: 3px black;
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
                        <li><a href="/booking/findAll?memberId=${sessionScope.loginMemberId}" class="text-white" style="font-size: 18px">Manage Booking</a></li>
                        <li><a href="/cart/findAll" class="text-white" style="font-size: 18px">Cart</a></li>
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
                            <li><a href="/event/saveGoods" class="text-white" style="font-size: 18px">Manage goods</a>
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
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/resources/img/beach.jpg" width="900" height="600" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <section class="py-5 text-center container">
                        <div class="row py-lg-5">
                            <div class="col-lg-8 col-md-8 mx-auto">
                                <h1 class="fw-light"
                                    style="font-family: 'Pacifico', cursive; color: white; font-size: 50px;">SH Travel
                                    Agency</h1><br>
                                <p class="lead text-muted"
                                   style="font-family: 'IM_Hyemin-Bold'; font-size: 30px; -webkit-text-stroke: 1px black;"
                                   ;>
                                    Do you want to have the perfect trip in Portugal? <br> If so, welcome to SH travel
                                    agency </p>
                                <p>
                                    <a href="/item/firstPorto" class="btn btn-info my-2" style="font-weight: bold">Go
                                        Porto!</a>
                                    <a href="/item/firstLisbon" class="btn btn-info my-2" style="font-weight: bold">Go
                                        Lisbon!</a>
                                </p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/resources/img/trip5.png" width="900" height="600" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <section class="py-5 text-center container">
                        <div class="row py-lg-5">
                            <div class="col-lg-11 col-md-8 mx-auto" align="right">
                                <h1 class="fw-light" style="font-family: 'Pacifico', cursive;">SH Travel Agency</h1><br>
                                <p class="lead text-muted" style="font-family: 'IM_Hyemin-Bold'; font-weight:bold; font-size: 19px; -webkit-text-stroke: 1px black;
                                    background-color: rgba( 255, 255, 255, 0.1 )" ;>
                                    포르투갈을 여행하시면 가장
                                    다양하고
                                    흥미로운 목적지를
                                    방문하실 수 있습니다. <br> SH Travel Agency를 이용해 여행하며 알가르브(Algarve) 해변의 백사장, <br>맛있는 포르토 와인
                                    그리고 리스본의 마법 같은
                                    활력을
                                    느껴보세요.<br>
                                    SH Travel Agency가 이 모든 것을 경험하실 수 있는 곳으로 안내합니다.</p>
                                <p>
                                    <a href="/item/firstPorto" class="btn btn-info my-2" style="font-weight: bold">Go
                                        Porto!</a>
                                    <a href="#" class="btn btn-info my-2" style="font-weight: bold">Go Lisbon!</a>
                                </p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/resources/img/plane.jpg" width="900" height="600" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <section class="py-5 text-center container">
                        <div class="row py-lg-5">
                            <div class="col-lg-11 col-md-8 mx-auto" align="right">
                                <h1 class="fw-light" style="font-family: 'Pacifico', cursive;">SH Travel Agency</h1><br>
                                <p class="lead text-muted"
                                   style="font-family: 'IM_Hyemin-Bold'; font-weight:bold; font-size: 19px; -webkit-text-stroke: 1px black;"
                                   ;>
                                    포르투갈을 여행하시면 가장
                                    다양하고
                                    흥미로운 목적지를
                                    방문하실 수 있습니다. <br> SH Travel Agency를 이용해 여행하며 알가르브(Algarve) 해변의 백사장, <br>맛있는 포르토 와인
                                    그리고 리스본의 마법 같은
                                    활력을
                                    느껴보세요.<br>
                                    SH Travel Agency가 이 모든 것을 경험하실 수 있는 곳으로 안내합니다.</p>
                                <p>
                                    <a href="/item/firstPorto" class="btn btn-info my-2" style="font-weight: bold">Go
                                        Porto!</a>
                                    <a href="#" class="btn btn-info my-2" style="font-weight: bold">Go Lisbon!</a>
                                </p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <div class="col">
                    <div class="card shadow-sm">
                        <img src="/resources/img/p2.jpg" onclick="location.href='/item/firstPorto'">
                        <br>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em"
                              style="font-family: 'IM_Hyemin-Bold'; font-size:21px; text-align: center;">🎼재즈와 함께하는 낭만의
                            포르투
                        </text>
                        <div class="card-body">
                            <p class="card-text" style="font-family:'IM_Hyemin-Bold'">
                                포르투의 멋진 야경을 감상하며 재즈를 즐기는 낭만이 가득한 5박 6일 패키지여행 상품입니다.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <a href="/item/firstPorto" class="btn btn-outline-dark">View</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <img src="/resources/img/p4.jpg" onclick="location.href='/item/firstLisbon'">
                        <br>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em" style="font-family: 'IM_Hyemin-Bold'; font-size:21px; text-align: center;">🏹리스본의 오랜 역사 속으로 빠지는 여행</text>
                        <div class="card-body">
                            <p class="card-text" style="font-family:'IM_Hyemin-Bold'">리스본의 고대 역사 및 종교적 의미에 대해 탐구해보는 5박 6일 패키지여행 상품입니다.
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <a href="/item/firstLisbon" class="btn btn-outline-dark">View</a>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c"/>
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
                        </svg>

                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
                Copyrightⓒ 2022 SH All Rights Reserved
            </div>
        </div>
    </section>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
