<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="test.AdminBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminHome</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
  
</head>
    <style>
        .con{
            height: 100vh;
        }
        
    </style>
<body class="container-fluid bg-dark">
    <header class="d-flex justify-content-between bg-success text-white p-2 sticky-top">
        <div class="h3">BookStore.</div>
        <div>
            <span class="me-3">Home</span>
            <span class="me-3">Categories</span>
            <span class="me-3">Notification</span>
            <span class="me-3">Account</span>
        </div>
        <div 
       <%  AdminBean ab =(AdminBean) session.getAttribute("abean");%>
        class="h5">Welcome <%=ab.getfName()+" "+ab.getlName() %>
        </div> 
        <div>
            <span class="bi bi-search me-3"></span>
            <span class="bi bi-heart me-3"></span>
            <span class="bi  bi-shop"></span>
        </div>
      </header>
      <div class=" con d-flex justify-content-around align-items-center">
        <div>
            <button class="btn btn-lg bg-info text-light"><a href="AddBookDetails.html">AddBookDetails</a></button>
        </div>
        <div><button class="btn btn-lg bg-info text-light"><a href="ViewBookDetails">VewBookDetails</a></button></div>
        <div><button class="btn btn-lg bg-info text-light"><a href="logout">logout</a></button></div>
    </div>
</body>
</html>