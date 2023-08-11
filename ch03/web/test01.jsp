<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전역변수 테스트</title>
    <%
        String userId = application.getInitParameter("userId");
        String memberId = application.getInitParameter("memberId");
        application.setAttribute("sid","kim");
    %>
</head>
<body>
    <%
        String sid = (String) application.getAttribute("sid");
    %>
    <h2><%=userId %>님의 웹 애플리케이션</h2>
    <hr>
    <h2>손님의 아이디는 <%=memberId %> : memberId</h2>
    <hr>
    <h2><%=sid %> : sid</h2>
    <a href="/test02.jsp">전역변수 테스트 : test02.jsp</a>

    <hr>
    <a href="/">메인으로</a>
</body>
</html>
