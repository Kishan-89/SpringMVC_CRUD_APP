<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Add Book</title>
</head>
<body>


	<div class="container mt-5 text-center">

		<h1 class="text-center">Enter Book Details</h1>


		<form class="needs-validation mt-5" novalidate
			action="${pageContext.request.contextPath}/processBook" method="post">

			<div class="col-md-12 text-center ">
				<label for="validationCustom01">Book Id <br></label> <input
					type="text" value="${book.bookId}"  name="bookId" required>
			</div>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationCustom01">Book Name</label> <input
						type="text" class="form-control" id="validationCustom01"
						placeholder="Book name" value="${book.bookName}" name="bookName"
						required>
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationCustom02">Author's Name</label> <input
						type="text" class="form-control" id="validationCustom02"
						placeholder="Author name" value="${book.authorName}"
						name="authorName" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationCustomUsername">Published date</label>
					<div class="input-group">
						<div class="input-group-prepend"></div>
						<input type="text" name="publishedDate" class="form-control"
							id="validationCustomUsername" value="${book.publishedDate}"
							placeholder="yyyy" aria-describedby="inputGroupPrepend"
							required>
						<div class="invalid-feedback">Please fill the details
							accordingly</div>

					</div>
				</div>
			</div>

			<div class="col-md-6 offset-md-3">
				<label for="validationCustomUsername">Book Description</label>
				<textarea class="form-control" name="bookDescription"
					id="description" rows="5" cols="8"> ${book.bookDescription}</textarea>
			</div>


			<button class="btn btn-primary mt-5" type="submit">Update</button>
		</form>
	</div>

	<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>


