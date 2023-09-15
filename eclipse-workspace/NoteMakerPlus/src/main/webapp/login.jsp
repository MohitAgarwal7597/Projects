<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteMaker:Login</title>
</head>
<body>
<%@include file="css/all_js_css.jsp" %>
    <div class="container">
    <%@include file="Navbar.jsp" %>
        <form action = "LoginServlet" method="post">
    
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input
    name = "emailId"
    type="email"
    class="form-control"
    id="exampleInputEmail1"
    aria-describedby="emailHelp"
    placeholder="Enter email"
      >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input
     name = "pass"
     type="password"
     class="form-control"
     id="exampleInputPassword1"
     placeholder="Password"
       >
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
    
    </div>

</body>
</html>