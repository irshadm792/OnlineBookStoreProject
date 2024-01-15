<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookDetails</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
</head>
<script>
    function DeleteClick(){
        flag =confirm("Record will be deleted\n Are you sure?");
        if(flag==true){
            alert("Record Deleted");
        }
        else{
        alert("Cnacelled")

        }
    }
</script>

<body class="Container-fluid">
	<h3 class="text-start text-danger">Book Details</h3>
	<%
		ArrayList<BookBean> al =  (ArrayList<BookBean>) session.getAttribute("alist");
		if(al.size()==0){
			out.println("bookDetails Not Available");
			
		}else{
			Iterator<BookBean> it =al.iterator();
			while(it.hasNext()){
			BookBean bb =it.next();		
	%>
	<div class="w-50">
        <table >
            <thead>
                <tr>
                    <th class="pe-5">Code</th>
                    <th class="pe-5">Name</th>
                    <th class="pe-5">Author</th>
                    <th class="pe-5">Price</th>
                    <th class="pe-5">Qty</th>
                </tr>
            </thead>
            <tbody>
                <td><%=bb.getCode() %></td>
                <td><%=bb.getName() %></td>
                <td><%=bb.getAuthor() %></td>
                <td><%=bb.getPrice() %></td>
                <td><%=bb.getQty() %></td>
                <td><button class="btn btn-sm btn-warning"><a href="edit?bcode="<%bb.getCode(); %>>Edit</a></button></td>
                <td  class="ps-5"><button class="btn btn-sm btn-danger" onclick="DeleteClick()" id="delete"><a href="delete?bcode="<%bb.getCode(); %>>Delete</a></button></td>
            </tbody>
        </table>
    </div>
	<%
			}
		}
	%>
</body>
</html>