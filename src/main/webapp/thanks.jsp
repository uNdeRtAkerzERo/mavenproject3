<%-- 
    Document   : thanks.jsp
    Created on : Aug 22, 2025, 8:20:18 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Java</title>
        <link rel="stylesheet" href="tyles/main.css" type="text/css"><!-- comment -->
    </head>
    
    <body>
        <h1>Thanks for joining our email list</h1>
        
        <p>Here is the information that you entered:</p>
        <label>Email:</label>
        <span>${user.email}</span><br><!-- comment -->
        <label>First Name:</label>
        <span>${user.firstName}</span><br><!-- comment -->
        <label>Last Name:</label>
        <span>${user.lastName}</span>
        
        <p>To enter another email address, click on the Back button in
            your browser or the Return button shown bellow.</p>
        
        <form action="" method="get">
            <input type="hidden" name="action" value="join"><!-- comment -->
            <input type="submit" value="Return">
        </form>
    </body>
</html>
