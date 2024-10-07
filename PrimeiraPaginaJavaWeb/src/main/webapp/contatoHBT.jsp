<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>
<link rel="shortcut icon" href="./imagem/hotel.jpg" type="image.jpg">
<link rel="stylesheet" href="./css/indexContato.css">
<meta charset="UTF-8">
<title>Contact HBT</title>
</head>
<body>
	<div class="container">
		<div class="form-img">
			<img src="./imagem/undraw_shopping_re_hdd9.svg" alt="">
		</div>
		<div class="form">
			<form action="#">
				<div class="form-header">
					<div class="title">
						<h1>Contact HBT</h1>
					</div>
					<div class="login-button">
						<button><a href="./login.jsp">Login </a></button>
					</div>
				</div>
				
				<div class="input-group">
					<div class="input-box">
						<label for="firstname">Name</label>
						<input id="firstname" type="text" name="firstname" placeholder="Enter your name" required>
					</div>
					
					
					
					<div class="input-box">
						<label for="email">Enter your email</label>
						<input id="email" type="email" name="email" placeholder="Enter your email" required>
					</div>
					
					<div class="input-box">
						<label for="number">Phone</label>
						<input id="number" type="tel" name="number" placeholder="(xxx) xxx xxx xxx" required>
					</div>
					
					<div class="input-box">
						<label for="text-area">Type your message</label>
						<textarea id="story" name="story" rows="5" cols="33">          							
							
						</textarea>
					</div>
					
					
				</div>
				
				
				 <div class="continue-button">
				 	<button><a href="#">Submit</a></button>
				 </div>
			</form>
		</div>
	</div>
</body>
</html>