<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteMaker:Registration</title>
</head>
<body>
<%@include file="css/all_js_css.jsp" %>
    <div class="container">
    <%@include file="Navbar.jsp" %>
    <form action = "RegistrationServlet" method="post">
    
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input
    name = "re"
    type="email"
    class="form-control"
    id="re"
    aria-describedby="emailHelp"
    placeholder="Enter email"
      >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input
     name = "rp"
     type="password"
     class="form-control"
     id="rp"
     placeholder="Password"
       >
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
    </div>

</body>
</html>