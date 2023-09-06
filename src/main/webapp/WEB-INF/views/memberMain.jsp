<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--세션의 값 꺼내기 --%>
    로그인 이메일 : ${sessionScope.loginEmail}  <br>
    모델에 담은 이메일 : ${email} <br>

    <a href="/">index로 이동</a>
</head>
<body>

</body>
</html>
