<%-- 
    Document   : RegAction
    Created on : Jan 18, 2020, 2:53:23 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String rollno=request.getParameter("rollno");
String branch=request.getParameter("branch");
String Guardian=request.getParameter("Guardian");
String gemail=request.getParameter("gemail");
String gmobile=request.getParameter("gmobile");
String pwd=request.getParameter("pwd");
try{
    int count=0;
    
  String query="select count(*) from register where email='"+email+"' or rollno='"+rollno+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into register values(null,'"+name+"','"+email+"','"+mobile+"','"+rollno+"','"+branch+"','"+Guardian+"','"+gemail+"','"+gmobile+"','"+pwd+"','waiting')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Register SuccessFully..!!");
           window.location="Register.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("Registration Failed..!!");
           window.location="Register.jsp";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Email or RollNo Already Exist..!!");
           window.location="Register.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}



%>