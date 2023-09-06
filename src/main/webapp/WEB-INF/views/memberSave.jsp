
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Project</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">

</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<h1>[ 멤버 프로젝트 ]</h1>
<h3>[ memberSave ]</h3>

<form action="/save" method="post">
    이메일 : <input type="text" name="memberEmail"> <br>
    비밀번호 : <input type="text" name="memberPassword"> <br>
    이름 : <input type="text" name="memberName"> <br>
    생년월일 : <input type="text" name="memberBirth"> <br>
    전화번호 : <input type="text" name="memberMobile"> <br>
    <input type="submit" value="전송">
</form>
<%@include file="component/footer.jsp"%>nc

</body>
</html>
