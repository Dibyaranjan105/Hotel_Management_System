<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="homepage.jsp"><i class="fa-solid fa-hotel"></i></i>Hotel</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
                <a class="nav-link active" href="roombook.jsp" style="color: white; text-decoration: none;" onmouseover="this.style.color='Yellow'; this.style.textDecoration='underline';" onmouseout="this.style.color='white'; this.style.textDecoration='none';">Book Room</a>
                </li>
             </ul>
			
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false"> Reception
				
					</button>
					 <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
						<li><a class="dropdown-item" href="ReceptionLogin.jsp">Reception</a></li>
						<li><a class="dropdown-item" href="Login.jsp">ADMIN Dashboard</a></li>
					 </ul>
				</div>
			</form>
		</div>
	</div>
</nav>
