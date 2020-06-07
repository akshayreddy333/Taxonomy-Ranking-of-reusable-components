<%@page import="java.sql.*"%>
<html>
<head>
<title>Delete component </title>
<style type="text/css">
  h1{font-family:Times new roman;
      font-size:50;
      fontweight:bold;
      color:#ffffff;
      background-color:#20B2AA;
      border:thin groove;
      border-radius:10px;
      border: 2px solid #20B2AA
      }
        
   table{font-family:times,serif;
         font-size:15;
         color:191970
     }
  </style>
</head>

<%! String ccode; %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
Statement stmt=con.createStatement();
ccode=request.getParameter("editc");

String query="delete from attributes where ccode='"+ccode+"'";
stmt.executeUpdate(query);

response.sendRedirect("aoptions.jsp");
%>

<body background="images/test.jpg">
<form method="post" action="" name="" target="_top"> 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:720px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Enter the attributes for the component to be retrieved</span></div>
  <div style="background: ; padding: 100px">
</body>
</html>