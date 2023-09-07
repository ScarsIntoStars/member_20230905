<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Member Project</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>

<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<h1>[ 멤버 프로젝트 ]</h1>
<h3>[ memberList ]</h3>
<%--<div class="row">--%>
<%--    <div class="row">--%>
<%--    </div>--%>
<%--</div>--%>
  <table>
        <tr>
            <td>이메일</td>
            <td>비밀번호</td>
            <td>이름</td>
            <td>생년월일</td>
            <td>전화번호</td>
            <td>수정</td>
            <td>삭제</td>
        </tr>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.memberEmail}</td>
                    <td>${member.memberPassword}</td>
                    <td>${member.memberName}</td>
                    <td>${member.memberBirth}</td>
                    <td>${member.memberMobile}</td>
                    <td>
                        <button class="btn btn-secondary" onclick="detail_fn('${member.id}')">조회</button>
<%-- <a href="member?id='{member.id}">조회</a>--%>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delete_fn('${member.id}')">삭제</button>
                    </td>


                </tr>
            </c:forEach>
      </table>

<%@include file="component/footer.jsp"%>
</body>
<script>
    const detail_fn = (id) => {
        location.href = "/update?id=" + id;
    }
    const delete_fn = (id) => {
        location.href = "/delete?id=" + id;
    }
</script>
</html>
