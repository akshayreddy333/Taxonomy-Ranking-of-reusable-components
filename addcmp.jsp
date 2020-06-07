<html>
<head>
<title>Add component </title>
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


<body background="images/test.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:720px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:3px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Enter the attributes for the component to be retrieved</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 100px">

<form method="post" action="addcmp2.jsp" name="" target="_top">
<table>
<tr><td>Component Name:</td>  
   <td><input type="text" name="cname" ></td>
</tr>


<tr><td>Return Type:</td>
   <td><input type="text" name="rtype" >
   </td>
</tr>



<tr><td>Number of Arguments:</td><td><input type="number" name="acount" ></td></tr>

<tr><td>Programming Language:</td>
    <td><input type="text" name="plang" >
    </td>
</tr>

<tr><td>Operating System:</td>
    <td><input type="text" name="os">
    </td>
</tr>

<tr><td>Time Complexity:</td>
    <td><input type="text" name="tcomp">
    </td>
</tr>


<tr><td>Space Complexity:</td>
    <td><input type="text" name="scomp" > 
    </td>
</tr>
<tr><td>choose file:</td><td><input type="file" name="cfile" value="open"/>
<%-- <input type="submit" value="upload" > --%>
<%-- <progress></progress></td></tr> --%>
<tr><td>&nbsp;</td><td><input type="submit" value="save" formaction="addcmpdb.jsp"></td>
<tr><td>&nbsp;</td><td><input type="submit" value="Back" formaction="aoptions.jsp"></td></tr>



</table>
<%! String act; %>
<% String type=(String)session.getAttribute("ut"); 
 if(type.equals("A"))
act="aoptions.jsp";
else if(type.equals("B"))
 act="uoptions.jsp";
%>
<%-- <input type="submit" value="Back" formaction="<%=act%>"/> --%>

</form>
</body>
</html>
