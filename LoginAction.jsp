

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String rollno=request.getParameter("rollno");
String pwd=request.getParameter("pwd");
try{
    
    String query="select * from register where rollno='"+rollno+"'and password='"+pwd+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    if(r.next()){
    String status=r.getString("status");
    if(status.equals("waiting")){
        %>
       <script type="text/javascript">
           window.alert("You Are Not Authorized By The Admin..!!");
           window.location="Student.jsp";
           </script>
          <%
    }else{
session.setAttribute("rollno",rollno);
session.setAttribute("email",r.getString("email"));
session.setAttribute("branch",r.getString("branch"));
session.setAttribute("guardian",r.getString("Guardian"));
session.setAttribute("gemail",r.getString("Guardian_email"));
       %>
       <script type="text/javascript">
           window.alert("Login SuccessFully..!!");
           window.location="StudentHome.jsp";
           </script>
          <%
    }
}else{
 %>
       <script type="text/javascript">
           window.alert("Login Failed..!!");
           window.location="Student.jsp";
           </script>
          <%
}
    
    
}catch(Exception e){
  out.println(e);  
}




%>