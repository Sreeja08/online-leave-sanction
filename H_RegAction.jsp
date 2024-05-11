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
String empid=request.getParameter("empid");
String branch=request.getParameter("branch");

String pwd=request.getParameter("pwd");
try{
    int count=0;
    
  String query="select count(*) from hod where email='"+email+"' or empid='"+empid+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into hod values(null,'"+name+"','"+email+"','"+mobile+"','"+empid+"','"+branch+"','"+pwd+"','waiting')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Register SuccessFully..!!");
           window.location="HODRegister.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("Registration Failed..!!");
           window.location="HODRegister.jsp";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Email or Employee ID Already Exist..!!");
           window.location="HODRegister.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}



%>