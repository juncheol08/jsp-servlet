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
    <title>$Title$</title>
  </head>
  <body>
  <div class="container">
    <h2>천재교육</h2>
    <%
      setName("김기태");
      String addr = "가산동";
    %>
    <hr>
    <p>이름 : <%=getName() %></p>
    <p>주소 : <%=addr %></p>
    <a href="test01.jsp">test01</a>
  </div>
  </body>
</html>
