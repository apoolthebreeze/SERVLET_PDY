<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<%@ include file="db/db_conn.jsp" %>

<div class="card bg-white text-brown">
    <img src="image/stylebanner.png" class="card-img" alt="..." width="2000" height="300">
    <div class="card-img-overlay">
        <h5 class="card-title" style="color: white; padding: 5px;">취향저격템은 여기! 내 맘에 쏙 이모티콘 스타일</h5>
        <p class="card-text" style="color: white; padding: 3px;">출처: 카카오 이모티콘샵</p>
    </div>
</div>
<br><br>
<%! String greeting = "스타일 이모티콘"; %>
<div class="container">
    <div class="jumbotron" style="background-color: #FE8048; padding: 5px; text-align: center;">
        <div class="container">
            <h3 class="display-4" style="background-color: #FE8048; padding: 5px; display: inline-block;">
                <%=greeting%>
            </h3>
        </div>
    </div>
</div>

<div class="style__content" style="text-align: center;">
    <!-- 중앙 정렬 스타일 추가 -->
    <div class="series" style="margin: 0 auto; width: 80%;">
        <!-- 중앙 정렬 스타일 추가 -->
        <h3 class="series__header"><span class="series__title">#인기 이모티콘 시리즈</span><span class="ico-common ico-style-arr"></span></h3>
        <ul class="series__list" style="--c-series-link: #fff3f3; --c-series-name: #f97575">
            <li class="series__item">
                <a class="series__link" href="#">
                    <span class="series__name">#댜갸_시리즈</span>
                    <div class="series__emoticons">
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/0fbae0da845c6c65e13cab74053d6078617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/779007922efd8fa3681c30dae2d79457617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/c927dc7294daf48ef199949b2663e6fd617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/a3de41eece1d0c9c585cdc79f7443079617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />

                    </div>
                </a>
            </li>
        </ul>
    </div>

    <div class="series" style="margin: 0 auto; width: 80%;">
        <!-- 중앙 정렬 스타일 추가 -->
        <h3 class="series__header"><span class="series__title">#MD 추천</span><span class="ico-common ico-style-arr"></span></h3>
        <ul class="series__list" style="--c-series-link: #f3faf5; --c-series-name: #63ca84">
            <li class="series__item">
                <a class="series__link" href="#">
                    <span class="series__name">#임티중독자_추천템</span>
                    <div class="series__emoticons">
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/ea6d402ae98f3e73e14939e2e7843fbc617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/e879ddc5b88be2640b2d728191594f6a617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/59d0e3d8457cee2613aa067069a37249617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/6192a039157386ee4922677eda52a65b617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                    </div>
                </a>
            </li>
        </ul>
    </div>

    <div class="series" style="margin: 0 auto; width: 80%;">
        <!-- 중앙 정렬 스타일 추가 -->
        <h3 class="series__header"><span class="series__title">#선물하기 좋은</span><span class="ico-common ico-style-arr"></span></h3>
        <ul class="series__list" style="--c-series-link: #fff3f7; --c-series-name: #f59fc4">
            <li class="series__item">
                <a class="series__link" href="#">
                    <span class="series__name">#커플에게</span>
                    <div class="series__emoticons">
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/4cea89aea3bd5b4e5fa36064405217d8617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/67bd885cabe14b1629e4e1ab2f898321617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/ee3d1b70def8cd1c9ce077c85946b963617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                        <img class="series__emoticon" src="https://item.kakaocdn.net/do/a7a36c6ff6cd4fd21911cb1adfbbbb42617ea012db208c18f6e83b1a90a7baa7" alt="댜갸 시리즈" loading="lazy" />
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>

<br>
<hr>