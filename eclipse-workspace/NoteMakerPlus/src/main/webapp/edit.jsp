<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteMaker:Edit</title>
<%@include file="css/all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid">
    <%@include file="Navbar.jsp" %>
    </div>
    <h1>Edit Your Note</h1>
    <%
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    Session se = FactoryProvider.getFactory().openSession();
    Note note = se.get(Note.class, noteId);
    %>
    
    <form action="EditServlet" method="post">
    <input value = <%=note.getId() %> name = "noteId" type = "hidden">
  <div class="form-group">
  
    <label for="title">Note Title</label>
    <input 
    name = "title"
    type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter Note Title" 
    required
    value=<%=note.getTitle() %>
    >
    
  </div>
  
  <div class="form-group">
  
    <label for="content">Note</label>
    
    <textarea
    name = "note"
    required  
    id = "content" 
    placeholder="Enter Your Note Here.." 
    class = "form-control" 
    style="height: 300px"><%=note.getNote() %>
    </textarea>
    
  </div>
  
  <div class = "container text-center">
  <button type="submit" class="btn btn-success ">Save</button>
  </div>
  
</form>
    
    
</body>
</html>