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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Passion+One:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


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
                        <li><a href="/member/login" class="text-white" style="font-size: 18px">Login</a></li>
                        <li><a href="/member/saveFile" class="text-white" style="font-size: 18px">Join us</a></li>
                        <li><a href="/board/saveFile" class="text-white" style="font-size: 18px">Notice</a></li>
                        <li><a href="#" class="text-white" style="font-size: 18px">Event</a></li>

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
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light" style="font-family: 'Pacifico', cursive;">SH Travel Agency</h1>
                <p class="lead text-muted" style="font-family: 'IM_Hyemin-Bold'; font-size: 24px;"><br>회원가입<br></p>
                <div class="col col-lg-12">
                    <div id="wrap">
                        <form action="/member/saveFile" method="post" enctype="multipart/form-data">
                            <div align="left"
                                 style="background-color: #f9f2f9; padding:20px; font-family:'IM_Hyemin-Bold'; font-size: 22px; border-radius: 20px;">
                                <br>
                                아이디<br>
                                <input type="text" name="memberId" onblur="duplicateCheck()" placeholder="6~16자 이내로 작성"
                                       id="memberId">
                                <p id="dup-check-result"></p>
                                비밀번호<br>
                                <input type="password" name="memberPassword" placeholder="비밀번호 8~16자 숫자"
                                       id="memberPassword">
                                <p id="password-check-result"></p>
                                비밀번호 재확인<br>
                                <input type="password" name="memberPassword2" onblur="pwCheck2()" placeholder="비밀번호 확인"
                                       id="memberPassword2">
                                <p id="pw-check-result"></p>
                                이름<br> <input type="text" name="memberName" id="memberName" value=""> <br></br>
                                생년월일<br>
                                <input type="hidden" name="memberBirth" id="memberBirth">
                                <select name="year" id="year">
                                    <option value="">-- 선택 --</option>
                                    <option value="1987">1987</option>
                                    <option value="1988">1988</option>
                                    <option value="1989">1989</option>
                                    <option value="1990">1990</option>
                                    <option value="1991">1991</option>
                                    <option value="1992">1992</option>
                                    <option value="1993">1993</option>
                                    <option value="1994">1994</option>
                                    <option value="1995">1995</option>
                                    <option value="1996">1996</option>
                                    <option value="1997">1997</option>
                                    <option value="1998">1998</option>
                                    <option value="1999">1999</option>
                                    <option value="2000">2000</option>
                                </select>
                                <select name="month" id="month">
                                    <option value="">-- 선택 --</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                                <select name="day" id="day" onchange="birth()">
                                    <option value="">-- 선택 --</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                                <br><br>
                                이메일<br><input type="text" id="memberEmail" name="memberEmail" onblur="email_check()">
                                <p id="email_result"></p>
                                <br>휴대전화<br>
                                <input type="text" name="memberPhone" id="memberPhone" onblur="mbCheck()" placeholder="010-****-****">
                                <p id="mobile-check-result"></p>
                                <input type="button" name="certification" value="인증번호 받기"><br></br>
                                <input type="text" name="certification" placeholder="인증번호를 입력하세요">
                                <input type="button" name="certification" value="확인"><br><br>
                                <br><br>
                                <input type="submit" name="" value="제출">
                            </div>
                        </form>
                    </div>
                    </form>
                </div>
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
    function duplicateCheck() {
        const memberId = document.getElementById("memberId").value;
        const checkResult = document.getElementById("dup-check-result");
        const exp = /^(?=.*[a-z])(?=.*\d)[a-z\d]{5,16}$/;
        $.ajax({
            type: "post",
            url: "duplicate-check",
            data: {"memberId": memberId},
            dataType: "text",
            success: function (result) {
                if (result == "ok") {
                    if (memberId.match(exp)) {
                        checkResult.innerHTML = "사용가능한 아이디입니다.";
                        checkResult.style.color = "green";
                    } else if (result == 0) {
                        checkResult.innerHTML = "필수 입력"
                        checkResult.style.color = "red";
                    } else {
                        checkResult.innerHTML = "영문소문자와 숫자를 포함한 5~16글자 입력"
                        checkResult.style.color = "red";
                    }
                } else {
                    checkResult.innerHTML = "이미 사용중인 아이디입니다.";
                    checkResult.style.color = "red";
                }
            }, error: function () {
                alert("형식에 맞지 않은 아이디입니다.");
            }
        });

    }
    function pwCheck2(){
        const memberPassword = document.getElementById("memberPassword").value;
        const memberPassword2 = document.getElementById("memberPassword2").value;
        const checkResult = document.getElementById("pw-check-result");
        if (memberPassword==memberPassword2){
            checkResult.innerHTML = "일치합니다.";
            checkResult.style.color="green";

        }else{
            checkResult.innerHTML = "일치하지않습니다.";
            checkResult.style.color="red";
        }
    }

    function mbCheck() {
        const memberPhone = document.getElementById("memberPhone").value;
        const checkResult = document.getElementById("mobile-check-result");
        const exp = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
        if (memberPhone.match(exp)) {
            checkResult.innerHTML = "사용 가능한 전화번호입니다."
            checkResult.style.color = "green";
        } else {
            checkResult.innerHTML = "다시 입력해주세요.";
            checkResult.style.color = "red";
        }

    }

    function birth(){
        let year = document.getElementById("year").value;
        let month = document.getElementById("month").value;
        let day = document.getElementById("day").value;
        let Birth = year+"-"+month+"-"+day  ;
        console.log(Birth);
        document.getElementById("memberBirth").value = Birth;

    }
    function email_check(){
        let email_check = document.getElementById("memberEmail").value;
        let result = document.getElementById("email_result");
        let exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        if(email_check.match(exp)){
            result.innerHTML = "사용가능한 이메일 입니다.";
            result.style.color = "green";
        }else{
            result.innerHTML = "이메일 주소를 다시 확인해주세요";
            result.style.color = "red";
        }
    }
</script>
</html>
