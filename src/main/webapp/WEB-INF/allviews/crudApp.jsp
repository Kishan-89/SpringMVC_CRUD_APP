<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp"%>

</head>
<body>


	<div class="Container">

		<div class="row col-md-12 text-center mt-3">
			<h3>Welcome to Books CRUD Application</h3>

			<div class="col-md-10 offset-md-1 mt-2">
				<table class="table border border-info rounded-pill">
					<thead>
						<tr style="background-color: gray; color: white">
							<th scope="col">#</th>
							<th scope="col">Book Name</th>
							<th scope="col">Author's Name</th>
							<th scope="col">Published Year</th>
							<th scope="col">Description</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${books}" var="bb">
							<tr>
								<th scope="row">${bb.bookId}</th>
								<td>${bb.bookName}</td>
								<td>${bb.authorName}</td>
								<td>${bb.publishedDate }</td>
								<td>${bb.bookDescription }</td>
								<td><a class="mx-2" href="delete/${bb.bookId}"
									style="size: 40px"><i
										class="fa-regular fa-trash-can text-danger"></i></a> <a
									class="mx-2" href="update/${bb.bookId}" style="size: 40px"><i
										class="fa-solid fa-pen "></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<form action="inputForm">
				<button type="submit">Add Book</button>
			</form>
		</div>
	</div>





</body>
</html>