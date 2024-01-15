<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.CustomerBean, test.* ,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

</head>
<style>
    img{
        height: 400px;
    }
    .container-card{
        display: grid;
        grid-template-columns: 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr;
    }
</style>
<body class="container-fluid">
	<%
		CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
		
	%>
		<a href="CViewBookDetails">ViewAllBookDetails</a>
		<a href="logout">logout</a>
  <header class="d-flex justify-content-between bg-danger text-white p-2">
    <div class="h3">BookStore.</div>
    <div>
        <span class="me-3">Home</span>
        <span class="me-3">Categories</span>
        <span class="me-3">Notification</span>
        <span class="me-3">Account</span>
    </div>
    <div class="h5">Welcome <%out.println(cb.getFname()+"&nbsp&nbsp"+cb.getLname()); %></div> 
    <div>
        <span class="bi bi-search me-3"></span>
        <span class="bi bi-heart me-3"></span>
        <button class="btn btn-light position-relative"><span class="bi bi-cart me-2"></span>Your Cart 
            <span class="badge position-absolute end-0 top-0 rounded-circle bg-danger">0</span></button>
    </div>
  </header>
  <div class="carousel slide carousel-dark mt-2" id="topbanner" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/Image/BookStoreimg.webp" class="w-100 d-block" >
        </div>
        <div class="carousel-item ">
            <img src="/Image/BookStoreImg2.webp" class="w-100 d-block">
        </div>
        <div class="carousel-item">
            <img src="/Image/BookStoreimg.webp" class="w-100 d-block">   
        </div>
    </div>
    <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#topbanner">
        <span class="carousel-control-prev-icon"></span>
    </button>
        <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#topbanner">
            <span class="carousel-control-next-icon"></span>
        </button>
       
      
        </body>
        

</html>