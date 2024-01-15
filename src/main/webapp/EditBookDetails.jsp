<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
</head>
<style>
    body{
        height: 100vh;.
    }
</style>
<script>
    function DeleteClick(){
        flag =confirm("Record will be Edit\n Are you sure?");
        if(flag==true){
            alert("Record Deleted");
        }
        else{
        alert("Cnacelled")

        }
    }
</script>
<body class="container-fluid d-flex justify-content-center align-items-center">
	<%
		BookBean bb =(BookBean)request.getAttribute("bbean");
	%>
	<form action="update" method="post">
            <dl>
		<input type="hidden" name="bcode" value=<%=bb.getCode()%>>
                <dt>BookPrice</dt>
                <dd><input class="form-control" type="text" name="bprice" value=<%=bb.getPrice() %>></dd>
                <dt>BookQty</dt>
                <dd><input class="form-control" type="text" name="bqty" value=<%=bb.getQty() %>></dd>
		        <input class="bg-warning form-control" type="Submit" onclick="SubmitClick()" value="UpdateBookDetails">
    </dl>
	</form>
</body>
</html>