
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
    <h1 class="text-center">[ 멤버 프로젝트 ]</h1>
    <%--        <a class="btn btn-primary" href="/save" role="button">[ 회원가입 ]</a>--%>
    <%--        <button class="btn btn-primary" type="submit"--%>
</div>
<div class="row">
    <div class="col">

        <a href="/save" class="text-center"> [ 회원가입 ]</a>
    </div>
    <div class="col">
        <a href="/login"> [ 로그인 ]</a>
    </div>
    <div class="col">
        <a href="/findAll"> [ 회원목록 ]</a>
    </div>
</div>


<%--    로그인 이메일 : ${sessionScope.loginEmail} <br>--%>
<%--    모델에 담은 이메일 : ${email} <br>--%>
<%@include file="component/footer.jsp"%>
</body>
</html>
