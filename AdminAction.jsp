<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");

try{
    
    if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
        %>
        <script type="text/javascript">
            window.alert("Login Success");
            window.location="AdminHome.jsp";
            </script>
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("Login Failed");
            window.location="Admin.jsp";
            </script>
        <%
}
    
    
}catch(Exception e){
   out.println(e); 
}


%>