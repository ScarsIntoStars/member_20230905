
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Project</title>
<%--    <link rel="stylesheet" href="/resources/css/main.css">--%>
</head>
<body>
    <h1>[ 멤버 프로젝트 ]</h1>

    <a href="/save"> [ 회원가입 ]</a> <br>
    <a href="/login"> [ 로그인 ]</a>
    <a href="/findAll"> [ 회원목록 ]</a> <br>

    로그인 이메일 : ${sessionScope.loginEmail} <br>
    모델에 담은 이메일 : ${email} <br>

</body>
</html>
