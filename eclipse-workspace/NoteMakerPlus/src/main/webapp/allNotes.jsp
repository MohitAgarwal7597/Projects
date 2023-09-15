<%@page import="java.util.List"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteMaker: All Notes</title>
<%@include file="css/all_js_css.jsp" %>
</head>
<body>
<div class = "container">
  <%@include file="Navbar.jsp" %>
<h1 class="display-1" style="text-align:center">All Notes</h1>
<div class = "row">
	<div class = col-12><%
	Session s = FactoryProvider.getFactory().openSession();
Query q = s.createQuery("from Note");
List<Note> list = q.list();
for(Note note : list){
	%>

	<div class="card mt-3">
  <img class="card-img-top m-4 mx-auto" src="img/notepad.png" style = "max-width: 100px" alt="img not found">
  <div class="card-body px-5">
    <h5 class="card-title text-dark"><%=note.getTitle() %></h5>
    <p class="card-text text-primary">
    <%=note.getNote() %>
    </p>
    <div style="text-align: right;">
    <p><b class = "text-dark"><%=note.getAddedDate() %></p>  </div>
    <div class = "container text-center mt-2">
        <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
       <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
    </div>

</div>
	<%
	}

s.close();

%>

</div>
</div>
</div>
</body>
</html>