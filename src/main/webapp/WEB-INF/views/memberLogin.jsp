<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h1>[ 멤버 프로젝트 ]</h1>
    <h3>[ memberLogin ]</h3>

    <form action="/login" method="post">
        이메일 : <input type="text" name="memberEmail">
        비밀번호 : <input type="text" name="memberPassword">
        <input type="submit" value="로그인">
    </form>

</body>
<head>
    <title>Member Project</title>
</head>
</html>
