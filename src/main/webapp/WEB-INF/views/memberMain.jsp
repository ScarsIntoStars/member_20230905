<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <%--세션의 값 꺼내기 --%>
    로그인 이메일 : ${sessionScope.loginEmail}  <br>
    모델에 담은 이메일 : ${email} <br>

    <a href="/">index로 이동</a>
</head>

<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
        <h2>memberMain.jsp</h2>
        로그인이메일: ${sessionScope.loginEmail} <br>
        model에 담은 이메일: '${email}' <br>
        <a href="/logout">로그아웃</a>
        <a href="/">index로 이동</a>



        <%-- 로그인 계정이 admin일 경우에만 회원목록 링크가 보임 --%>
        <c:if test="${sessionScope.loginEmail == 'admin'}">
            <a href="/member">회원목록</a>
        </c:if>

<%@include file="component/footer.jsp"%>nc

</body>
</html>
