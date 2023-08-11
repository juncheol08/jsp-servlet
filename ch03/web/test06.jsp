
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL (Expression Language) - 표현 언어</title>
</head>
<body>
<%
    String title = "슬비씨 배고프구나~";
    String[] nayeon = {"까다로우","나이많음","꾸준함","웃김"};
    Map<String ,String> kyo = new HashMap<>();
    kyo.put("name","말짱황");
    kyo.put("age","72");
    kyo.put("nick","교주");

    //EL 사용시에는 데이터를 넘기는 곳에서 setAttribute를 지정해야함.
    request.setAttribute("tit",title );
    request.setAttribute("ny",nayeon );
    request.setAttribute("k", kyo);

%>
    <h2> 표현식 (Expression) </h2>
    <p><%=title %></p>
    <div class="cate">
        <%
            for(String s:nayeon) {
        %>
        <p><%=s %></p>
        <%
            }
        %>
    </div>
<p><%=kyo %></p>
<a href="test07.jsp"?title=<%=title %>%ny=<%=nayeon %>&kyo=<%=kyo %>"></a>
<hr>
<h2>표현언어(Expression Language)</h2>
<p>${tit }</p>
<c:forEach var="s" items="${ny }">
    <p>${s }</p>
</c:forEach>
<p>${k }</p>






</body>
</html>
