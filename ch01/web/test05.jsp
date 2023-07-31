<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Response - test05</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


</head>
<body>
<form name="login_form" action="response.jsp" method="post">
    <table class="table" id="db1">
        <tr>
            <td><label for="id">아이디</label></td>
            <td><input type="text" name="id" id="id" required autofocus></td>
        </tr>
        <tr>
            <td><label for="pw">비밀번호</label></td>
            <td><input type="password" name="pw" id="pw" required></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="로그인" class="btn btn-primary"> &nbsp;
                <input type="reset" value="취소" class="btn btn-danger">
            </td>
        </tr>
    </table>

</form>

<%
    String msg = request.getParameter("msg");
    String id = (String) session.getAttribute("id");
    String pw = (String) session.getAttribute("pw");
%>
    <div class="container">
        <h2>로그인 정보</h2>
        <%
            if(msg!=null){
        %>
        <p>메시지 : <%=msg %></p>
        <%
            }
        %>
        <% if (id!=null){ %>
        <p>로그인 아이디 : <%=id %></p>
        <p>로그인 비밀번호 : <%=pw %></p>
        <%
            }
        %>



    </div>

</body>
</html>
