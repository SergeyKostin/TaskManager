<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <head>
       <title>Create task</title>
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   </head>
   <body>
<div class="w3-container">

  <h1>Create task</h1>

  <div class="w3-bar w3-light-grey">
      <a href="${pageContext.request.contextPath}/" class="w3-bar-item w3-button">Dahboard</a>
      <a href="${pageContext.request.contextPath}/create_task" class="w3-bar-item w3-button">Create task</a>
      <a href="${pageContext.request.contextPath}/create_user.jsp" class="w3-bar-item w3-button">Create user</a>
    </div>

  <div class="w3-panel w3-card-4">
      <form class="w3-container" action="${pageContext.request.contextPath}/create_task" method="post">
        <p>
        <label>Summary:</label>
        <input class="w3-input" type = "text" name = "summary"></p>
        <p>
        <label>Priority:</label>
        <select class="w3-select" name = "priority">
            <option>normal</option>
            <option>major</option>
            <option>critical</option>
          </select></p>
        <p>
        <label>Executor:</label>
        <select class="w3-select" name = "user_name">
        <option value="" disabled selected>add executor...</option>
        <c:forEach items="${users}" var="user">
            <option>${user.getName()}</option>
        </c:forEach>
        </select><p>
        <label>Description:</label>
        <input class="w3-input" type="text" name = "description"></p>
         <p><input class="w3-btn w3-teal" type="submit" name = "Create"></p>
      </form>
    </div>

</div>
     </body>
</html>