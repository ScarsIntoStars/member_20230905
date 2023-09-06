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
</head>
<body>
    <h1>[ 멤버 프로젝트 ]</h1>
    <h3>[ memberList ]</h3>
  <table>
        <tr>
            <td>이메일</td>
            <td>비밀번호</td>
            <td>이름</td>
            <td>생년월일</td>
            <td>전화번호</td>  <br>
        </tr>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.memberEmail}</td>
                    <td>${member.memberPassword}</td>
                    <td>${member.memberName}</td>
                    <td>${member.memberBirth}</td>
                    <td>${member.memberMobile}</td>
<%--                    <td><a href="/findById=?id=${member.id}" method="get"></td>--%>
                    <br>
                </tr>
            </c:forEach>
      </table>
</body>
</html>
