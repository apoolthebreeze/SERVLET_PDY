<%@ page contentType="text/html; charset=utf-8"%>
<html>

<head>
    <style>
        .bg-brown {
            background-color: #3B170B;
            color: white;
        </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>

    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron text-center">
            <div class="container">
                <h1 class="display-3">회원가입</h1>
            </div>
        </div>
        <div class="container" align="center">
            <div class="col-md-6 col-md-offset-3">
                <form action="member_join_process.jsp" method="post">
                    <div class="form-group">
                        <label for="username">아이디:</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">패스워드:</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">패스워드 재입력:</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <div class="form-group">
                        <label for="name">이름:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="gender">성별:</label>
                        <select class="form-control" id="gender" name="gender" required>
                            <option value="male">남성</option>
                            <option value="female">여성</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">메일 주소:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">폰 번호:</label>
                        <input type="text" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="form-group">
                        <label for="address">주소:</label>
                        <input type="text" class="form-control" id="address" name="address" required>
                    </div>
                    <button type="submit" class="btn btn-primary">가입하기</button>
                </form>
            </div>
        </div>
    </body>

    </html>
