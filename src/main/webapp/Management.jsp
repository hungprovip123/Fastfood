<%-- 
    Document   : Management
    Created on : Jul 13, 2024, 7:53:08 AM
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
            h1 {
                margin-left: -5px;
            }
        </style>
    </head>
    <body>
        <div class="taskbar">
            <a href="#">PE-PRJ301</a>
            <a href="Management">Customer Management</a>
        </div>
        <div class="container">
            <h1>List of Products</h1>
            <a href="/ProductController/Create" class="btn btn-primary mb-3">Add New</a>
            <table class="table table-bordered">

                <tr>
                    <th>ID</th>
                    <th>FullName </th>
                    <th>Gender</th>
                    <th>Birthday</th>
                    <th>Address</th>
                </tr>

                <tr>
                    <td><%= password.getCus_id()%></td>
                    <td><%= password.getCus_name()%></td>
                    <td><%= password.getCus_gender()%></td>
                    <td><%= password.getCus_birthday()%></td>
                    <td><%= password.getCus_address()%></td>
                    <td><%= (category != null) ? category.getCus_name() : "Unknown"%></td>
                    <td>
                        <a href="Delete=<%= password.getCus_id()%>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                <%
                            }
                        }
                    } catch (Exception e) {
                        out.println("<tr><td colspan='7'>Error: " + e.getMessage() + "</td></tr>");
                    }
                %>

            </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>

