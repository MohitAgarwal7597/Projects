<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="css/all_js_css.jsp" %>
<title>Add Note</title>
</head>
<body>
	<div class = "container-fluid">
	<%@include file="Navbar.jsp" %>
	
	<!-- This is the form for adding note-->
	<form action="SaveNoteServlet" method="post">
  <div class="form-group">
  
    <label for="title">Note Title</label>
    <input 
    name = "title"
    type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter Note Title" 
    required>
    
  </div>
  
  <div class="form-group">
  
    <label for="content">Note</label>
    
    <textarea
    name = "note"
    required  
    id = "content" 
    placeholder="Enter Your Note Here.." 
    class = "form-control" 
    style="height: 300px"></textarea>
    
  </div>
  
  <div class = "container text-center">
  <button type="submit" class="btn btn-primary ">Add</button>
  </div>
  
</form>
	</div>
</body>
</html>