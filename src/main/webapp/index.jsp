<%-- 
    Document   : index
    Created on : Jul 13, 2024, 7:37:14 AM
    Author     : tvhun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product Management</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
            .taskbar {
                background-color: black;
                color: white;
                padding: 10px;
            }
            .taskbar a {
                color: #999;
                text-decoration: none;
                margin-right: 15px;
            }
            .taskbar a:hover {
                color: white;
            }
            .container {
                margin-top: 20px;
            }
            h2 {
                margin-left: -5px;
            }
        </style>
    </head>
    <body>
        <div class="taskbar">
            <a href="#">PE-PRJ301</a>
            <a href="/CustomerController">Customer Management</a>
        </div>
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <form method="post" action="Login" class="border p-4">
                        <h2 class="text-center mb-4">Login Page</h2>
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" name="txtUS" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" name="txtPWD" id="password" class="form-control" required>
                        </div>

                        <button type="submit" name="bntLogin" class="btn btn-primary btn-block">Login</button>
                        <button type="reset" name="Reset" class="btn btn-danger btn-block">Reset</button>

                    </form>
                </div>
            </div>
        </div>
    </body>

</html>
