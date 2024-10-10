<%@ page import="java.sql.ResultSet" %>
<%@ page import="DAOs.LoginDAO" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="
                https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous">
        </script>
    </head>
    <body class="login-container">
        <%
            Cookie[] cList = null;
            cList = request.getCookies();
            if (cList == null) {
                if (request.getParameter("Login") != null) {
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");

                    boolean loggedIn = LoginDAO.checkLogin(username, password);

                    if (loggedIn) {
                        session.setAttribute("Login", username);
                        Cookie c = new Cookie("Login", username);
                        c.setMaxAge(3 * 24 * 60 * 60);
                        response.addCookie(c);
                        response.sendRedirect("list.jsp");
                    } else {
                        response.sendRedirect("index.jsp");
                    }
                }
            } else {
                String value = "";
                boolean flag = false;
                for (int i = 0; i < cList.length; i++) {
                    if (cList[i].getName().equals("Login")) {
                        value = cList[i].getValue();
                        flag = true;
                        break;
                    }
                }
                if (flag) {
                    response.sendRedirect("list.jsp?username=" + value);
                } else {
                    if (request.getParameter("Login") != null) {
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");

                        boolean loggedIn = LoginDAO.checkLogin(username, password);

                        if (loggedIn) {
                            session.setAttribute("Login", username);
                            Cookie c = new Cookie("Login", username);
                            c.setMaxAge(3 * 24 * 60 * 60);
                            response.addCookie(c);
                            response.sendRedirect("list.jsp");
                        } else {
                            response.sendRedirect("index.jsp");
                        }
                    }
                }
            }
        %> 
        <h2>Login</h2>
        <form method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <br>
            <label for="password">Password: </label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login" name="Login">
        </form>
        <% if (request.getParameter("Login") != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                boolean loggedIn = LoginDAO.checkLogin(username, password);

                if (!loggedIn) { %>
        <div class="text-center mt-3">
            <p class="text-danger">Username or Password wrong</p>
        </div>

        <% }
            }%>
    </body>
</html>

