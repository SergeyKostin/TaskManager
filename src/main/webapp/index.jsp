<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <head>
       <title>Dahboard</title>
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   </head>
   <body>
<div class="w3-container">
  <h1>Dahboard</h1>
  <div class="w3-bar w3-light-grey">
    <a href="${pageContext.request.contextPath}/" class="w3-bar-item w3-button">Dahboard</a>
    <a href="${pageContext.request.contextPath}/create_task" class="w3-bar-item w3-button">Create task</a>
    <a href="${pageContext.request.contextPath}/create_user.jsp" class="w3-bar-item w3-button">Create user</a>
  </div>
<c:forEach items="${listTask}" var="task">
    <div class="w3-panel w3-card-2 w3-orange w3-hover-red" style="width:500px;">
        <h2>${task.getSummary()}</h2>
        <p>priprity:  ${task.getPriority()}</p>
        <p>executor: ${task.getUser().getName()}</p>
        <p>description:</p>
        <div class="w3-panel w3-border">
        <p>${task.getDescription()}</p>
        </div>
    </div>
</c:forEach>
</div>
     </body>
</html>