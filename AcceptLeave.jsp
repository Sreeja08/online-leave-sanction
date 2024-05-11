<%-- 
    Document   : AcceptLeave
    Created on : Feb 16, 2020, 6:22:02 PM
    Author     : Acer
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    
    String id=request.getParameter("id");
    
    int i=Queries.getExecuteUpdate("update sleaves set status='Accepted' where id='"+id+"'");
    if(i>0){
      %>
      <script type="text/javascript">
          window.alert("Leave Accepted Successfully");
          window.location="F_LeaveRequest.jsp";
      </script>
      <%
    }else{
%>
      <script type="text/javascript">
          window.alert("Failed To Accept Leave");
          window.location="F_LeaveRequest.jsp";
      </script>
      <%
}
    
}catch(Exception e){
 out.println(e);   
}




%>