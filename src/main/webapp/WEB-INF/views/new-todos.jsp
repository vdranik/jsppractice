<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo's</title>
    <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>

    <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            background-color: #f5f5f5;
        }

        .footer .container {
            width: auto;
            max-width: 680px;
            padding: 0 15px;
        }
    </style>

</head>
<body>

<nav role="navigation" class="navbar navbar-default">

    <div class="">
        <a href="/" class="navbar-brand">JSP</a>
    </div>

    <div class="navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="/list-todo.do">Todos</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout.do">Logout</a></li>
        </ul>
    </div>

</nav>


<div class="container">
    <p>Welcome ${name}</p>
    <p>Your's Todo's are:</p>

    <%--jsp style--%>
    <%--<p>${todos}</p>--%>

    <%--jstl style--%>
    <ol>
        <c:forEach items="${todos}" var="todo">
            <li>${todo.name} &nbsp; &nbsp; &nbsp; <a href="/delete-todo.do?list-todo=${todo.name}">Delete</a></li>
        </c:forEach>
    </ol>

    <form method="post" action="/add-todo.do">
        New Todo : <input name="todo" type="text" /> <input name="add" type="submit" />
    </form>
</div>

<footer class="footer">
    <div class="container">
        <p>footer huyuter</p>
    </div>
</footer>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
