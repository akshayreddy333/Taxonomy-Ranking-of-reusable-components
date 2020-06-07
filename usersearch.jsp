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
  
  <div style="width: auto; max-width:720px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Enter the attributes for the component to be retrieved</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 200px">

<form method="post" action="" name="" target="_top">
<table>
<tr><td>component name:</td>  
   <td><select name="cname">
        <option value="armstrong">Armstrong</option>
        <option value="insertionsort">Insertion sort</option>
        <option value="mergesort">Merge sort</option>
        <option value="linearsearch">Linear search</option>
        <option value="binarysearch">Binary search</option>
        <option value="fact">Factorial</option>
        <option value="pallindrome">Pallindrome</option>
       <option value="quicksort">Quick Sort</option>
    </td>
</tr>


<tr><td>Return type:</td>
   <td><select name="rtype">
       <option value="int">Integer</option>
       <option value="float">Float</option>
       <option value="char">Char</option>
       </select>
   </td>
</tr>



<tr><td>Number of Arguments:</td><td><input type="text" name="acount"></td></tr>

<tr><td>programming language:</td>
    <td><select name="plang">
        <option value="c">C</option>
        <option value="c++">C++</option>
        <option value="java">JAVA</option>

        </select>
    </td>
</tr>

<tr><td>operating system:</td>
    <td><select name="os">
        <option value="windowsxp">Windowsxp</option>
        <option value="windows8">Windows8</option>
       <option value="windows7">Windows 7</option>
        <option value="linux">LINUX</option>
        <option value="unix">UNIX</option>
       </select>
    </td>
</tr>

<tr><td>Time complexity:</td>
    <td><select name="tcomp">
        <option value="o(n)">O(n)</option>
        <option value="o(n^2)">O(n^2)</option>
        <option value="o(log(n)base(2))">O(log(n)base(2))</option>
        </select>
    </td>
</tr>


<tr><td>Space complexity:</td>
    <td><select name="scomp">
        <option value="o(n)">O(n)</option>
        <option value="o(n^2)">O(n^2)</option>
        <option value="o(log(n)base(2))">O(log(n)base(2))</option>
        </select>   
    </td>
</tr>




<tr><td>&nbsp;</td><td><input type="submit" value="Download" ></td></tr>


</table>
<%! String act; %>
<% String type=(String)session.getAttribute("ut"); 
 if(type.equals("A"))
act="aoptions.jsp";
else if(type.equals("B"))
 act="uoptions.jsp";
%>
<input type="submit" value="Back" formaction="<%=act%>"/>

</form>
</body>
</html>
