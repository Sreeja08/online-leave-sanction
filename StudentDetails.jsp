<%-- 
    Document   : Student
    Created on : Jan 24, 2020, 5:43:22 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
          <li><a href="AdminHome.jsp" class="m1">Home Page</a></li>
           <li><a href="Admin.jsp" class="m3">Logout</a></li>
        
        </ul>
      </nav>
      
    </div>
  </header>
  <div class="container">
    <aside>
      <h3>Categories</h3>
      <ul class="categories">
  
        <li><span><a href="StudentDetails.jsp">Students Details</a></span></li>
        <li><span><a href="FacultyDetails.jsp">Faculty Details</a></span></li>
    <li><span><a href="HODDetails.jsp">HOD Details</a></span></li>
      
      </ul>
     
     
    </aside>
    <section id="content">
      <div id="banner">
       
      </div>
      <div class="inside">
       
               <div class="img-box" style="text-align:justify;">
                   <h3>View Student Details</h3>
                   <table>
                       <tr>
                           <th>Name</th> <th>Mobile</th> <th>RollNo</th> <th>Branch</th> <th>Status</th>
                       </tr>
                       <%
                       try{
                          ResultSet r=Queries.getExecuteQuery("select * from register");
                          while(r.next()){
                           String status=r.getString("status");
                              
                           %>
                           <tr>
                               <td><%=r.getString("name")%></td>
                                <td><%=r.getString("mobile")%></td>
                                 <td><%=r.getString("rollno")%></td>
                                  <td><%=r.getString("branch")%></td>
                                  <%
                                  if(status.equals("waiting")){
                                   %>
                                   <td><a href="Activate_Student.jsp?id=<%=r.getString("id")%>">Activate</a></td>
                                   <%
                                  }else{
 %>
                                   <td><%=r.getString("status")%></td>
                                   <%
}
                                  
                                  %>
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
