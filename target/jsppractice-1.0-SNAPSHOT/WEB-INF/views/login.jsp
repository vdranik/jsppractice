<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/header.jspf"%>

<nav class="navbar navbar-default">

    <a href="/" class="navbar-brand">JSP</a>

    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/list-todos.do">Todos</a></li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
        <li><a href="/login.do">Login</a></li>
    </ul>

</nav>

<div class="container">
    <form action="/login.do" method="post">
        <p>
            <font color="red">${errorMessage}</font>
        </p>
        Name: <input type="text" name="name" /> Password:<input
            type="password" name="password" /> <input type="submit"
                                                      value="Login" />
    </form>

</div>

<%@ include file="../common/footer.jspf"%>