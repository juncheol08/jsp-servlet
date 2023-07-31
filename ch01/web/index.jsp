<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
  private String name;
  public String getName() {
    return this.name;
  }
  public void setName(String name) {
    this.name = name;
  }
%>
<!DOCTYPE html>
<html>
  <head>
    <title>index</title>
  </head>
  <body>
  <div class="container">
    <h2>천재교육</h2>
    <%
      setName("김기태");
      String addr = "가산동";
    %>
    <hr>
<%--    <p>이름 : <%=getName() %></p>--%>
<%--    <p>주소 : <%=addr %></p>--%>
    <a href="test01.jsp">test01</a><br>
    <a href="test02.jsp">test02</a><br>
    <a href="test03.jsp">설문 조사 화면</a><br>
    <a href="test04.jsp?msg=한시간남았네">요청 정보 및 헤더 정보 화면</a><br>
    <a href="test05.jsp">로그인 폼 - Response (test05)</a><br>
    <a href="test06.jsp">jsp 8 객체 - test06</a>





  </div>
  </body>
</html>
