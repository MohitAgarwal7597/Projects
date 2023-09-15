<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   
    <title>Note Maker:HomePage</title>
  </head>
  <body>
<%@include file="css/all_js_css.jsp" %>
    <div class="container">
    <%@include file="Navbar.jsp" %>
    </div>
<div class = "card py-5">
<img alt="img not found" src="img/notepad.png" class = "img-fluid mx-auto" style = "max-width:400px">
<h1 class = "text-danger text-uppercase text-center mt3">Start Taking Your Notes</h1>
    <div class = "container text-center ">
    <a href="addNote.jsp" class="btn btn-outline-success text-center mt-4">Start Here</a>
</div>
<div class = "container text-center ">
    <a href="login.jsp" class = "btn btn-outline-warning text-center mt-4 mr-2">Login</a>
     <a href="registerUser.jsp" class = "btn btn-outline-danger text-center mt-4 ml-2">Register</a> 
</div>

</div>

  </body>
</html>