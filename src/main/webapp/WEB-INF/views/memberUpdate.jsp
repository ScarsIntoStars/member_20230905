<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-07
  Time: 오전 8:57
  To change this template use File | Settings | File Templates.
--%>

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

<form action="/update" method="post" name="updateForm">
    <input type="hidden" name="id" value="${$mamberDTO.id}">
    이메일 : <input type="text" name="memberEmail" value="${memberDTO.memberEmail}" readonly> <br>
    비밀번호 : <input type="text" name="memberPassword" value='${memberDTO.memberName}' id="password"> <br>
    이름 : <input type="text" name="memberName" value="${memberDTO.memberName}"> <br>
    생년월일 : <input type="text" name="memberBirth" value="${memberDTO.memberBirth}"> <br>
    전화번호 : <input type="text" name="memberMobile" value="${memberDTO.memberMobile}"> <br>
    <input type="button" value="수정" id="check-email" onclick="update_fn()">
</form>
<%@include file="component/footer.jsp"%>nc

</body>
<script>
const update_fn = () => {
    const checkEmail = document.getElementById("check-password").value;
    const passDB = '${memberDTO.memberPassword}';
    if(passInput == passDB) {
        document.updateForm.submit();
    } else {
        alert("비밀번호가 일치하지 않습니다.")
    }
}

</script>
</html>

