<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>
<meta charset="UTF-8">

<title>Welcome to HBT</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 <link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Roboto+Mono:wght@100&display=swap" rel="stylesheet">
 <link rel="shortcut icon" href="./imagem/hotel.jpg" type="image.jpg">
 <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="./css/index.css">
 
</head>
<body>
	<a name="inicio"></a>
	<header class="cabecalho">
		<div class="row">
			
			<div class="col-sm-4 col-md-2 col-lg-2 logotipo">
				<center>
					<img src="./imagem/hotel.jpg" >
				</center>
			</div>
			
			
			<div class="col-am-4 col-md-6 col-lg-6 banner">
				<center>
					<p>HBT</p>
				</center>
			</div>
			
			
			<div class="col-sm-4 col-md-4 col-lg-4 login">
				<center>
					<nav>
            			<ul>
                			<li><a href="#inicio">Home</a></li>
               				<li><a href="#sobre">About</a></li>
               				<li><a href="#info">Information</a></li>
                			<li><a href="./criarC.jsp">Contact</a></li>
                			<li><a href="./reserva.jsp">Restricte Area</a></li>                			
            			</ul>
       		   		</nav>
       		   		
				</center>
				
			</div>
		</div>			
	</header>
	
	<section id="secao1">
        <div class="texto_1">
        	<div class="imgp">
    				<img class="rounded-image" src="./imagensPerfil/<%= session.getAttribute("photo") %>" alt="User Photo" width="200" height="200">
    				<br> 
   					<p class="welcome"><%= session.getAttribute("username") %></p>   
				</div>
				
            <h1> <span class="cor_titulo1">Divirta-se</span> Na Sua Estadia</h1>
            <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor, eligendi laboriosam.
                Repellendus officia harum eaque.</h3>
            <a href="#">
            <button type="button" class="btn btn-secondary botao">About Our Hotel</button>
        	</a>
        </div>
    </section>
    
    <a name="sobre"></a>
    <div class="secao_imagem">
        <img data-aos="fade-right" src="./imagem/parede.jpg" alt="Imagem do hotel">
        <div class="secao_imagem1">
            <h3 class="titulo"> <span class="cor_titulo2">A História</span> Do Nosso Hotel</h3>
            <p class="descricao">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumenda aliquam dolor
                alias iste autem, quaerat magni unde accusantium qui fuga placeat quidem quo pariatur, voluptatum, ea
                sequi? Corporis, explicabo quisquam dolor placeat praesentium nesciunt mollitia quos nobis natus
                voluptatum asperiores!</p>
                
            <div class="botao2">
                <a href="#" class="botao_read">Read More</a>
            </div>
        </div>
    </div>
    
     
      <a name="info"></a>
    <div class="secao_imagem">
        
        <div class="secao_imagem1">
            <h3 class="titulo"> Um ótimo<span class="cor_titulo2"> ambiente</span></h3>
            <p class="descricao">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumenda aliquam dolor
                alias iste autem, quaerat magni unde accusantium qui fuga placeat quidem quo pariatur, voluptatum, ea
                sequi? Corporis, explicabo quisquam dolor placeat praesentium nesciunt mollitia quos nobis natus
                voluptatum asperiores!</p>
                
            <div class="botao2">
                <a href="#" class="botao_read">Read More</a>
            </div>
        </div>
        <img data-aos="fade-left" src="./imagem/entrada.jpg" alt="Imagem do hotel">
    </div>
    
    <div class="secao_imagem">
		<img data-aos="fade-right" src="./imagem/recep.jpg" alt="Imagem do hotel">
        <div class="secao_imagem1">
            <h3 class="titulo"> Esperamos que goste<span class="cor_titulo2"> do nosso hotel</span></h3>
            <p class="descricao">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumenda aliquam dolor
                alias iste autem, quaerat magni unde accusantium qui fuga placeat quidem quo pariatur, voluptatum, ea
                sequi? Corporis, explicabo quisquam dolor placeat praesentium nesciunt mollitia quos nobis natus
                voluptatum asperiores!</p>
                
            <div class="botao2">
                <a href="#" class="botao_read">Read More</a>
            </div>
        </div>
     
    </div>
    
    <section  class="secao2">
        <div data-aos="flip-left" class="col-sm-4 col-md-2 col-lg-2">
			<a href="./mapa.jsp">
            <img src="./imagem/hotel.jpg" alt="Imagem 1">
            </a>
            <h3>Good Location</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, omnis?</p>
        </div>
        
        <div data-aos="flip-up" class="col-am-4 col-md-8 col-lg-8 cor_diferente">
            <a href="./restauranteF.jsp" target="#blank">
            <img src="./imagem/restaurante.jpg" alt="Imagem 2">
			</a>
            <h3>Free Meals</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, omnis?</p>
        </div>
        <div data-aos="flip-left" class="col-sm-4 col-md-2 col-lg-2">
        	<a href="./ginasio.jsp" target="#blank">
            <img src="./imagem/ginasio.jpg" alt="Imagem 3">
            </a>
            <h3>Gymnasium</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, omnis?</p>
        </div>
    </section>
    
    
    <button id="btn-topo"><a href="#inicio">⬆️</a></button>
    
     <footer>
		 <div class="rodape">
		<p> Rua da Figueira, 00 - 5999-999 Lisboa - Tel. 210 661 547</p>
		
		<a href="https://pt-pt.facebook.com/" target="#blank">
			<img src="./imagem/facebook.jpg" alt="facebook"/>
		</a>
		
		<a href="https://www.instagram.com/" target="#blank">
			<img src="./imagem/instagram.jpg" alt="instagram"/>
		</a>
		
		<a href="https://www.linkedin.com/" target="#blank">
			<img src="./imagem/linkedin.jpg" alt="linkedin"/>
		</a>
		
		<a href="#" target="#blank">
			<img src="./imagem/envelope.gif" alt="email"/>
		</a>
		 
		 <br>
		 <br>
		 
        <p>Hotel BT &copy; 2023, Todos Os Direitos Reservados</p>
        </div>
    </footer>
    
    <script>
        window.onscroll = function () {
            mostrarOcultarBotao();
        };

        function mostrarOcultarBotao() {
            var btn = document.getElementById("btn-topo");
            if (document.body.scrollTop > 40 || document.documentElement.scrollTop > 20) {
                btn.style.display = "block";
            } else {
                btn.style.display = "none";
            }
        }

        function voltarAoTopo() {
            document.documentElement.scrollTop = 0;
        }
    </script>
    
      <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  	<script>
    AOS.init({
    	disable: "mobile"
    });
  </script>
</body>
</html>