<%-- 
    Document   : Student
    Created on : Jan 24, 2020, 5:43:22 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Leave Sanction</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link rel="stylesheet" href="style.css" type="text/css" media="all">
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="wrap">
  <header>
    <div class="container">
      <h1><a href="#">Student's site</a></h1>
      <nav>
        <ul>
          <li class="current"><a href="index.html" class="m1">Home Page</a></li>
          <li><a href="Student.jsp" class="m2">Student</a></li>
          <li><a href="Faculty.jsp" class="m3">Faculty</a></li>
          <li><a href="HOD.jsp" class="m4">HOD</a></li>
        
        </ul>
      </nav>
      
    </div>
  </header>
  <div class="container">
    <aside>
      <h3>Categories</h3>
      <ul class="categories">
        <li><span><a href="index.html">Home Page</a></span></li>
        <li><span><a href="Students.jsp">Students</a></span></li>
        <li><span><a href="Faculty.jsp">Faculty</a></span></li>
        <li><span><a href="HOD.jsp">HOD</a></span></li>
       <li><span><a href="Admin.jsp">Admin</a></span></li>
      </ul>
      <img src="images/Faculty-Registration.png" width=250" height="400">
     
    </aside>
    <section id="content">
      <div id="banner">
       
      </div>
      <div class="inside">
       
        <h2>Project<span> Abstract</span></h2>
        <p align="justify"><span class="txt1">This project </span> is aimed at developing an online leave sanction application for students. It is a web-based application that is developed using PHP and MYSQL in which the student can apply for leave in the online for their respective department faculty.</p>
        <div class="img-box" style="text-align:justify;">
            <h2>HOD Register Here</h2>
             <form action="H_RegAction.jsp" method="post">
                 <table>
                     <tR><th>Name: </th><td><input type="text" name="name" required=""></td>
                      <th>Email </th><td><input type="email" name="email" required=""></td></tr>
                       <tR><th>Mobile: </th><td><input type="number" name="mobile" required=""></td></tr>
                         <tR><th>Employee ID: </th><td><input type="text" name="empid" required=""></td>
                                 <th>Branch: </th><td><select name="branch" required="" style="width:174px;height:30px;">
                                             <option></option>
                                             <option value="CSE">CSE</option>
                                             <option value="EEE">EEE</option>
                                             <option value="ECE">ECE</option>
                                               <option value="MECH">MECH</option>
                                                <option value="CIVIL">CIVIL</option>
                                                
                             </select></td></tr>
                     
                     <tR><th>Password: </th><td><input type="password" name="pwd" required=""></td>
                   <th> </th><td><input type="submit" value="Register" required=""> <a href="HOD.jsp">LOGIN</a></td></tr>
                 </table>
             </form>
        
        </div>
        <p class="p0"  align="justify">The leave approval or rejection can be notified to the corresponding student’s guardian. Both the faculty and the student will be able to view their leave history. The faculty can be able to view their corresponding students’ information like attendance, leave history.</p>
      </div>
    </section>
  </div>
</div>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2020 <a href="#"></a> - All Rights Reserved</p>
    <p class="rf">Design by :<a href="#"></a></p>
    <div style="clear:both;"></div>
  </div>
</footer>
<script type="text/javascript"> Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>
</html>
