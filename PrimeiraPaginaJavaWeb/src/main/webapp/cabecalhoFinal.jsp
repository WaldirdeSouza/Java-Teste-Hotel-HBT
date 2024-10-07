 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>

<meta charset="UTF-8">
<title>HBT</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Roboto+Mono:wght@100&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="./imagem/hotel.jpg" type="image.jpg">
<link rel="stylesheet" href="./css/index.css">
 
</head>
<body>
	<%
		response.addHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.addHeader("Pragma","no-cache");
		response.setDateHeader("Expires",-1);
	%>	
	<%
	 String userName = (String) session.getAttribute("username");
	 String photoName = (String) session.getAttribute("photo");
	 
	%>
  	<header class="cabecalho">
    	<div class="row">
      		<div class="col-sm-4 col-md-2 col-lg-2 logotipo" align="center">
        		<img src="./imagem/hotel.jpg">
      		</div>
          			<% if (userName != null) { %>
          			<div class="col-am-4 col-md-6 col-lg-7 banner" align="center">
       		 			<p>HBT</p>
      				</div>
      				<div class="col-sm-4 col-md-4 col-lg-3 login" align="center">
        				<div class="profile-buttons">
          			<!-- Botão de Menu para usuários logados -->
       		 
     					<div class="btn-group">
  							<button class="btn btn-secondary btn-lg dropdown-toggle cor-menu" type="button" data-bs-toggle="dropdown" aria-expanded="false">
   							 	Menu
  							</button>
  							<ul class="dropdown-menu dropdown-menu-dark lista-ul">
			    				<li><a class="dropdown-item lista-menu" href="./main.jsp#inicio">Home</a></li>
							    <li><a class="dropdown-item lista-menu" href="./main.jsp#sobre">About</a></li>
							    <li><a class="dropdown-item lista-menu" href="./main.jsp#info">Information</a></li>
							    <li><a class="dropdown-item lista-menu" href="./contatoHBT.jsp">Contact</a></li>
							    <li><a class="dropdown-item lista-menu" href="./reserva.jsp">Reserve</a> </li>
							    <li><a class="dropdown-item lista-menu" href="./ListaReservas.jsp">List Reserve</a> </li>
							    <li><hr class="dropdown-divider"></li>
							    <li><a class="dropdown-item lista-menu" href="./logout.jsp">Logout</a></li>
 							 </ul>
						</div>
											
          			<!-- Se o usuário estiver logado, mostre a opção "Restricted Area" -->
					<% if (userName != null) { %>
  						<nav>
  							<ul>  
  							 													  								
  							</ul>
  						</nav>  						
					<% } %>
          			<% } else { %>
          			<div class="col-am-4 col-md-6 col-lg-6 banner" align="center">
       		 			<p>HBT</p>
      				</div>
      					<div class="col-sm-4 col-md-4 col-lg-4 login" align="center">
        				  <div class="profile-buttons">
          						<!-- Opções do menu para usuários não logados -->
          						<nav>
           				  			<ul>
						              <li><a href="./main.jsp#inicio">Home</a></li>
						              <li><a href="./main.jsp#sobre">About</a></li>
						              <li><a href="./main.jsp#info">Information</a></li>
						              <li><a href="./contatoHBT.jsp">Contact</a></li>
						              <!-- Se o usuário não estiver logado, mostre apenas a opção de login -->
						              <li><a href="./login.jsp">Login</a></li>
            			 			</ul>
          			   			</nav>
          			 		<div>
          						<% } %>
				         			<!-- Se houver um nome de arquivo da foto na sessão, mostraremos a foto -->
				         			<!-- Se houver um nome de usuário na sessão, mostraremos uma mensagem de boas-vindas -->					
         						<% if (userName != null && photoName != null) { %>
  									<img class="rounded-image" src="./imagensPerfil\<%= photoName %>" alt="User Photo" width="100">
  									<p class="welcome"><%= userName %></p><br>
								<% } %>
					   	   </div>												
						</div>
					  </div>
				</div>
	</header>

	


