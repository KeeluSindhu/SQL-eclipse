<%@page import="dbconnection.studentdb"%>
<%@page import="services.studentservice"%>
<%@page import="models.student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href=register.jsp>
<button>REGISTER</button>
</a>
<table border = 1>
 <thead>
 <tr>
 <th>ID</th>
 <th>PIN</th>
 <th>NAME</th>
  <th>EMAIL</th>
   <th>BRANCH</th>
  
   <th> ACTIONS</th>
   </tr> 
 </thead>
 <tbody>
 <%
 studentservice service = new studentservice(studentdb.conn());
 List<student> st = service.fetchall();
 for(student s:st){
 %>
 <tr>
 <td><%=s.getPinnumber()%></td>
<td><%=s.getName() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getBranch() %></td>
 <td>
<button>UPDATE</button>
</td>
<td>
<button>DELETE</button>
</td>
 </tr>
 <% } %>
 </tbody>
 </table>
</body>
</html>