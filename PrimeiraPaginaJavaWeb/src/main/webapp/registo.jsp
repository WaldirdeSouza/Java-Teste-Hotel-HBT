<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-pt">
<head>
<link rel="stylesheet" href="./css/indexRe.css">
<meta charset="UTF-8">
<title>Contato</title>
</head>
<body>
	<section id="container">

        <div class="titulo">
            <h1 class="mover">Contact Form</h1>
            <div class="linha"></div>
            <img src="./imagem/undraw.png" width="100%" height="75%" alt="Formulario_IMG">
        </div>

        <div class="secao_imagem">
            <form method="POST" action="processar_formulario">
                <label for="Nome">Name:</label> <br>
                <input class="inputs" type="text" name="prim_nome" id="prim_nome"> <br>

                <label for="Email">Email:</label> <br>
                <input class="inputs" type="email" name="email" id="email"> <br> 
				<br><br>
				
				<div class="field small">
				<p> Insira a sua data pretendida:</p> <br>
                <h4>Data</h4>
                  <input type="date" name="data" id="dtAgenda" min="2017-04-01" required />
    			   <span class="validity"></span>
                </div> 
               <br><br>
				<label for="quantityAdults">Quantidade de adultos:</label><br>
    			<input class="inputN" type="number" id="quantityAdults" name="quantityAdults" min="1" max="30">
    			<br><br>
                <label for="quantity">Quantidade de crianças:</label>
                <br><br>
    			<input class="inputN" type="number" id="quantity" name="quantity" min="1" max="10">
    			<br>
    			<div id="idades-container">
    			  <%-- Espaço reservado para os campos de idade --%>
    			</div>
    			<input class="botao" type="submit" value="Enviar">

                
            </form>
        </div>

    </section>
    
    <script>
    //Fabiano Soares - 26/04/2017 - Só poderá agenda para a partir dos próximos 5 dias
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //Janeiro é 0, então somamos + 1 para trabalhar com calendário conhecido
    var yyyy = today.getFullYear();
    // Data de hoje mais 5 dias
    dd = dd + 5;
    //se for maior que dia 30 vai para o proximo mês
    if(dd > 30){
      dd = dd - 30;
      mm = mm+1;
    }
    //se for maior que 12 vai para o proximo ano
    if(mm > 12){
      mm = 1;
      yyyy = yyyy + 1;
    }
    // Se for menor que 10 formatamos com um zero na frente Ex: de 9 para 09
    if(dd < 10){
      dd = '0' + dd;
    }
    // Se for menor que 10 formatamos com um zero na frente Ex: de 9 para 09
    if(mm < 10){
      mm = '0' + mm;
    }
    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("dtAgenda").setAttribute("min", today);
    today = dd + '/' + mm + '/' + yyyy;
    var div = document.getElementById("divDtFutura");
    div.innerText =  today ;
  </script>

	<script>
    // Função para criar os campos de idade dinamicamente
    function criarCamposIdade() {
      var quantidadeInput = document.getElementById('quantity');
      var container = document.getElementById('idades-container');
      container.innerHTML = '';

      var quantidade = parseInt(quantidadeInput.value);

      for (var i = 1; i <= quantidade; i++) {
        var label = document.createElement('label');
        label.textContent = 'Idade da criança ' + i + ': ';
        var input = document.createElement('input');
        input.type = 'number';
        input.name = 'idade-' + i;
        input.min = '1';
        input.max = '17';
        input.required = true;
		var id = 'textoCrianca'+i;
        container.appendChild(label);
        container.appendChild(input);
        container.appendChild(document.createElement('br'));
      }
    }

    // Adicionar evento de escuta ao campo de quantidade
    var quantidadeInput = document.getElementById('quantity');
    quantidadeInput.addEventListener('input', criarCamposIdade);

    // Criar campos de idade iniciais (se houver valor preenchido no campo de quantidade)
    criarCamposIdade();
  </script>
</body>
</html>