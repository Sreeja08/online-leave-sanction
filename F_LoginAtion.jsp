

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String empid=request.getParameter("empid");
String pwd=request.getParameter("pwd");
try{
    
    String query="select * from fregister where empid='"+empid+"'and password='"+pwd+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    if(r.next()){
    String status=r.getString("status");
    if(status.equals("waiting")){
        %>
       <script type="text/javascript">
           window.alert("You Are Not Authorized By The Admin..!!");
           window.location="Faculty.jsp";
           </script>
          <%
    }else{
session.setAttribute("rollno",empid);
session.setAttribute("email",r.getString("email"));
       %>
       <script type="text/javascript">
           window.alert("Login SuccessFully..!!");
           window.location="FacultyHome.jsp";
           </script>
          <%
    }
}else{
 %>
       <script type="text/javascript">
           window.alert("Login Failed..!!");
           window.location="Faculty.jsp";
           </script>
          <%
}
    
    
}catch(Exception e){
  out.println(e);  
}




%>