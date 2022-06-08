<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        td{
            font-size: 20px;
            height: 100%;
            padding: 10px;
        }
        th{
            font-size: 20px;
            height: 100%;
            border-bottom: 1px solid #444444;
        }
        tr{
            font-size: 20px;
            height: 100%;
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
            <div class="col-lg-8 col-md-8 mx-auto">
                <h1 class="fw-light" style="font-family: 'Pacifico', cursive;">SH Travel Agency</h1>
                <p class="lead text-muted" style="font-family: 'IM_Hyemin-Bold'; font-size: 24px;"><br>공지사항<br></p>
                <div align="center"
                     style="background-color: #f9f2f9; padding:20px; font-family:'IM_Hyemin-Bold'; font-size: 22px; border-radius: 20px;">
                    <table>
                        <tr>
                            <td colspan="2">No: ${board.b_id}</td>
                            <td>Date: ${board.boardCreatedDate}</td>

                        </tr>
                        <tr>
                            <td colspan="3" style="font-weight : bold ;">제목: ${board.boardTitle}</td>
                        </tr>
                        <tr>
                            <td colspan="2">Writer: ${board.memberId}</td>
                            <td>Hits: ${board.boardHits}</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="font-weight : bold ;">${board.boardContents}</td>
                        </tr>
                        <tr>
                            <td colspan="3"><img src="${pageContext.request.contextPath}/upload/${board.boardFileName}"
                                                 alt=""
                                                 height="100"
                                                 width="100"></td>
                        </tr>
                        <tr>
                            <td>
                                <button class="btn btn-info my-2" id="WriteButton4" onclick="paging()" style="font-size: 21px;">글목록</button>
                            </td>
                            <c:if test="${sessionScope.loginMemberId eq board.memberId}">
                                <td>
                                    <button class="btn btn-info my-2" id="WriteButton1" onclick="boardUpdate()" style="font-size: 21px;">글수정
                                    </button>
                                </td>
                                <td>
                                    <button class="btn btn-info my-2" id="WriteButton2" onclick="boardDelete()" style="font-size: 21px;">글삭제
                                    </button>
                                </td>
                            </c:if>
                        </tr>
                        <tr>
                            <td><input type="text" id="memberId" class="form-control"
                                       value="${sessionScope.loginMemberId}" style="width: 135px;"
                                       readonly></td>
                            <td><input type="text" id="commentContents" class="form-control" placeholder="댓글"
                                       style="width: 200px;"></td>
                            <td>
                                <button id="comment-write-btn" class="btn btn-danger">write</button>
                            </td>
                        </tr>
                    </table>
                    <div id="comment-list">
                        <table class="table">
                            <tr>
                                <th>NO.</th>
                                <th>작성자</th>
                                <th>내용</th>
                                <th>작성시간</th>
                            </tr>
                            <c:forEach items="${commentList}" var="comment">
                                <tr>
                                    <td>${comment.c_id}</td>
                                    <td>${comment.memberId}</td>
                                    <td>${comment.commentContents}</td>
                                    <td>${comment.commentCreatedDate}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
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
    $("#comment-write-btn").click(function () {
        //댓글 작성자, 내용을 가져오고 ajax 문법을 활용하여 /comment/save 주소로 post방식으로 작성자, 내용, 글번호
        //세개의 값을 보내는 코드를 작성하시오
        const memberId = document.getElementById("memberId").value;
        const commentContents = $("#commentContents").val();
        const b_id = '${board.b_id}';
        console.log(memberId, commentContents, b_id)
        $.ajax({
            type: "post",
            url: "/comment/save",
            data: {
                "memberId": memberId,
                "commentContents": commentContents,
                "b_id": b_id
            },
            dataType: "json",
            success: function (result) {
                console.log(result);
                let output = "<table class='table'>";
                output += "<tr><th>no</th>";
                output += "<th>작성자</th>";
                output += "<th>내용</th>";
                output += "<th>작성시간</th></tr>";
                for (let i in result) {
                    output += "<tr>";
                    output += "<td>" + result[i].c_id + "</td>";
                    output += "<td>" + result[i].memberId + "</td>";
                    output += "<td>" + result[i].commentContents + "</td>";
                    output += "<td>" + result[i].commentCreatedDate + "</td>";
                    output += "</tr>";
                }
                output += "</table>";
                document.getElementById('comment-list').innerHTML = output;
                document.getElementById('memberId').value = '';
                document.getElementById('commentContents').value = '';
            },
            error: function () {
                alert("오류");
            }
        });
    });
    const paging = () => {
        location.href = "/board/paging?page=${page}";
    }
    const boardUpdate = () => {
        location.href = "/board/update?b_id=${board.b_id}";
    }
    const boardDelete = () => {
        location.href = "/board/delete?b_id=${board.b_id}";
    }
</script>
</html>
