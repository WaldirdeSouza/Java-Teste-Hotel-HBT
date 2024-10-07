<%@ include file="./cabecalhoFinal.jsp" %>
<link rel="stylesheet" href="./css/cabecalho123.css">
	<div class="container">
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h1>New Password</h1>             
                </div>
                <form>                    
                    <div class="mb-3">
                        <input type="password" class="form-control" id="password" placeholder="Password" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" id="password" placeholder="Confirm Password" required>
                    </div>                    
                    <button type="submit" class="btn btn-primary">Recover</button>
                </form>
            </div>
        </div>
    </div>
<%@ include file="./footerFinal.jsp" %>