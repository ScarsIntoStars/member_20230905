<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Project</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
    <div class="row">
        <div class="col">
            <h1 class="text-center">[ 멤버 프로젝트 ]</h1>
            <h3>[ memberLogin ]</h3>

            <form action="/login" method="post">
                이메일 : <input type="text" name="memberEmail"> <br> <br>
                비밀번호 : <input type="text" name="memberPassword">
                <input type="submit" value="로그인">
            </form>
        </div>
    </div>
<%@include file="component/footer.jsp"%>nc

</body>
</html>
