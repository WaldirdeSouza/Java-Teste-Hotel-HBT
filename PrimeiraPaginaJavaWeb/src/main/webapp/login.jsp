<%@ include file="./cabecalhoFinal.jsp" %>
<link rel="stylesheet" href="./css/cabecalho123.css">
	<div class="container">
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <h1>Login</h1>
                
                <form action="LoginServlet" method="post">
                
                    <div class="mb-3">
                        <p>Email/User</p>
                        <input type="text" class="form-control" id="email" name="usernameOrEmail" placeholder="Your Email/User" required>
                    </div>
                    
                    <div class="mb-3">
                        <p>Password</p>
                        <input type="password" class="form-control" id="password"  name="password" placeholder="Your Password" required>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
             <div class="mt-3 bnt2">
   				 <a href="./EsqueceuSenha.jsp" >Reset Password</a>
    			 <a href="./criarHBT.jsp" >New Account</a>
			</div>
            </div>
        </div>
    </div>
    
<%@ include file="./footerFinal.jsp" %>	 