<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
   <head>
       <title>Create user</title>
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   </head>
   <body>
<div class="w3-container">

  <h1>Create user</h1>

    <div class="w3-bar w3-light-grey">
      <a href="${pageContext.request.contextPath}/" class="w3-bar-item w3-button">Dahboard</a>
      <a href="${pageContext.request.contextPath}/create_task" class="w3-bar-item w3-button">Create task</a>
      <a href="${pageContext.request.contextPath}/create_user.jsp" class="w3-bar-item w3-button">Create user</a>
    </div>

  <div class="w3-panel w3-card-4">
      <form class="w3-container" action="${pageContext.request.contextPath}/" method="post">
        <p>
        <label>Name</label>
        <input class="w3-input" type="text" name = "name"/></p>
        <p>
        <label>Login</label>
        <input class="w3-input" type="text" name = "login"/></p>
        <p>
        <label>Password</label>
        <input class="w3-input" type="text" name = "password"/></p>
        <p><input class="w3-btn w3-teal" type="submit" name = "Create"></p>
      </form>
    </div>
   </div>
     </body>
</html>