<%@ include file="./cabecalhoFinal.jsp" %>
<link rel="stylesheet" href="./css/cabecalho123.css">
	<div class="container">
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <h1>Reserve</h1>
                <form action="ReserveReg" method="post">
                        <input type="hidden" name="id_user" id="id_user" value="<%out.print(session.getAttribute("id_user"));%>">
                    <div class="mb-3">
                    	<p>Entry Date</p>
                       <input type="date" name="dia_entrada" id="dia_entrada" min="2017-04-01" required />
    			   		<span class="validity"></span>
                    </div>                   
                    <div class="mb-3">
                        <p>Departure Date</p>
                        <input type="date" name="dia_saida" id="dia_saida" min="2017-04-01" required />
    			   		<span class="validity"></span>
                    </div>
                    <div class="mb-3">
						<p>Quantity People</p>
						<input id="quantidade_pessoas" type="number" name="quantidade_pessoas" min="1" max="10">                   
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>             
            </div>
        </div>
    </div>    	 
  <%@ include file="./footerFinal.jsp" %>  
    <script>
    //Fabiano Soares - 26/04/2017 - Só poderá agenda para a partir dos próximos 5 dias
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //Janeiro é 0, então somamos + 1 para trabalhar com calendário conhecido
    var yyyy = today.getFullYear();
    // Data de hoje mais 5 dias
    dd = dd + 0;
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
    //Fabiano Soares - 26/04/2017 - Só poderá agenda para a partir dos próximos 5 dias
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //Janeiro é 0, então somamos + 1 para trabalhar com calendário conhecido
    var yyyy = today.getFullYear();
    // Data de hoje mais 5 dias
    dd = dd + 1;
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
    document.getElementById("dtAgenda1").setAttribute("min", today);
    today = dd + '/' + mm + '/' + yyyy;
    var div = document.getElementById("divDtFutura");
    div.innerText =  today ;
  </script>
