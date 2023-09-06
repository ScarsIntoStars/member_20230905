
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
<h3>[ memberDetail ]</h3>

<div class="container">
  <div>
    <table class="table table-bordered">
      <tr>
        <td>id</td>
        <td>email</td>
        <td>name</td>
        <td>birth</td>
        <td>mobile</td>
      </tr>
      <tr>
        <td>${memberDTO.id}</td>
        <td>${memberDTO.memberEmail}</td>
        <td>${memberDTO.memberName}</td>
        <td>${memberDTO.memberBirth}</td>
        <td>${memberDTO.memberMobile}</td>
      </tr>
    </table>
    <a href="/findAll">목록으로 돌아가기</a>
  </div>
</div>


<%@include file="component/footer.jsp"%>

</body>
</html>
