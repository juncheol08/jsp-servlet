<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<%
    String path = request.getContextPath(); //현재 프로젝트의 위치. (../web)
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scope test</title>
</head>
<body>
<div class="container">
    <header id="id">
        <%@include file="./nav.jsp"%>
    </header>
    <hr>
    <h2 class="title">Scope Test</h2>
    <hr>
    <%
        //page(pageContext) 객체는 현재 페이지에서만 유효함
        String pg = (String) pageContext.getAttribute("pageData");
        String req = (String) request.getAttribute("reqData");
        String ses = (String) session.getAttribute("sesData");
        String app = (String) application.getAttribute("appData");
        String msg = (String) request.getAttribute("msg");
    %>
    <ul class="list">
        <li>pageContext : <%=pg %></li>
        <li>request : <%=req %></li>
        <li>session : <%=ses %></li>
        <li>application : <%=app %></li>
        <li>request : <%=msg %></li>
        <li>img : <img  src="<%=path %>/img/img_main_keyVisual03.jpg"style="width: 200px"> </li>
    </ul>
<p>
    <a href="test6.jsp?req=<%=req %>&msg=<%=msg %>">페이지6로 이동하기</a><br>
    <%
        if(ses!=null) {
    %>
    <a href="logout.jsp">로그아웃</a>
    <%
        } else {
    %>
    <a href="test4.jsp">로그인</a>
    <%
        }
    %>

</p>


</div>


</body>
</html>
