<%@ include file="./cabecalhoFinal.jsp" %>
<link rel="stylesheet" href="./css/cabecalho123.css">	
	<div class="container">
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h1>New Account</h1>
                    <a href="login.jsp" class="btn btn-primary">Login</a>
                </div>       
                <form action="UserReg" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <input type="text" class="form-control" id="username" name="username" placeholder="User name" required>
                    </div>
                    <div class="mb-3">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" id="pass" name="pass" placeholder="Password" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" id="Confirmpassword" name="Confirmpassword" placeholder="Confirm Password" >
                    </div>
                    <div class="mb-3">
                        <label for="photo" class="custom-label">Submit Picture</label>
    					<img src="./imagem/pictures.svg" alt="Enviar foto">
    					<input type="file" name="photo" id="photo" accept="image/png, image/jpeg">
                    </div>
                    <button type="submit" value="Upload" class="btn btn-primary">Create</button>
                </form>
            </div>
        </div>
    </div>    
<%@ include file="./footerFinal.jsp" %>	 