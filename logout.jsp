<%
 session=request.getSession(false);
 session.invalidate();
 response.sendRedirect("index.jsp");
%>
<html>
<head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
</head>


   <BODY onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=""/>
</html>
