<html>
<head>
      <script>
        history.forward();
      </script>
</head>
<body>

<%
 session.setAttribute("userid",null);
 session.invalidate();
 response.sendRedirect("index.jsp");
%>
</body>
</html>