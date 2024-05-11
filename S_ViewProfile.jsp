<%-- 
    Document   : Student
    Created on : Jan 24, 2020, 5:43:22 PM
    Author     : Acer
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Leave Sanction</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="wrap">
  <header>
    <div class="container">
      <h1><a href="#">Student's site</a></h1>
      <nav>
        <ul>
          <li><a href="StudentHome.html" class="m1">Home Page</a></li>
           <li><a href="Student.jsp" class="m3">Logout</a></li>
        
        </ul>
      </nav>
      
    </div>
  </header>
  <div class="container">
    <aside>
      <h3>Categories</h3>
      <ul class="categories">
  
        <li><span><a href="S_ViewProfile.jsp">View Profile</a></span></li>
        <li><span><a href="S_ApplyLeave.jsp">Apply Leave</a></span></li>
        <li><span><a href="S_LeaveStatus.jsp">Leave Status</a></span></li>
      
      </ul>
     
     
    </aside>
    <section id="content">
      <div id="banner">
       
      </div>
      <div class="inside">
       
               <div class="img-box" style="text-align:justify;">
                   <%
                 String rollno=(String)session.getAttribute("rollno");
String email=(String)session.getAttribute("email");
String gmail=(String)session.getAttribute("gemail");
                   
                   %>
                   <h3>WelCome to <%=rollno%> </h3>
        
                   <table>
                       <tr><th colspan="5">My Profile</th></tr>
                       <tr>
                           <th>Name</th> <th>Mobile</th> <th>RollNo</th> <th>Branch</th> <th>Status</th>
                       </tr>
                       <%
                       try{
                          ResultSet r=Queries.getExecuteQuery("select * from register where rollno='"+rollno+"'");
                          while(r.next()){
                           String status=r.getString("status");
                              
                           %>
                           <tr>
                               <td><%=r.getString("name")%></td>
                                <td><%=r.getString("mobile")%></td>
                                 <td><%=r.getString("rollno")%></td>
                                  <td><%=r.getString("branch")%></td>
                                 
                                   <td><%=r.getString("status")%></td>
                                   
                           </tr>
                           
                           <%
                          }
                        }catch(Exception e){
                          out.println(e);
                       }
                       
                       
                       %>
                   </table>
       
        </div>
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
