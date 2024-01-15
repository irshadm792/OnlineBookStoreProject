<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

</head>
<style>
    .container-card{
        display: grid;
        grid-template-columns: 2.4fr 2.4fr 2.4fr 2.4fr 2.4fr;
    }
</style>
<body class="container-fluid">
  <%
		CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
		
	%>
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
<h2 class="text-center mt-3">Book Detais</h2>

<div class="container-card">
<%
ArrayList<BookBean> al =(ArrayList<BookBean>)session.getAttribute("alist");
if(al.size()==0){
out.println("bookDetails Not Available");

}else{
Iterator<BookBean> it =al.iterator();
while(it.hasNext()){
    BookBean bb =it.next();
%>
<div class="card p-2 m-2" style="width: 250px;">
    <div class="card-header">
        <img src="/Image/BookStoreImg2.webp"class="card-img-top" style="height: 200px;">
        <p>Book Name: <span><%=bb.getName() %></span></p>
        <p>Author: <%=bb.getAuthor() %></p>
        <p>Available:<span class="text-success"> <%=bb.getQty() %></span></p>
        <h6><span class="text-success"></span>&#8377;<%=bb.getPrice() %></h6>
    </div>
    
    <div class="card-footer">
        <button class="btn btn-info w-100"><span class="bi bi-cart">Add to Cart</span></button>
        <button class="btn btn-warning w-100 mt-2"><span>Buy Now</span></button>
    </div>
</div>
<%
}
}
%>
</div>
        
</body>
</html>