<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Perfil FEELING Progress </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="imgs/FP.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <% Usuario cliente = (Usuario)request.getSession().getAttribute("cliente");%>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="imgs/FEELING.png" alt="..." width="150"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Cerrar Sesión</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" id="m2">
            <div class="container">
                <div class="masthead-subheading">¡BIENVENIDO!</div>
                <div class="masthead-heading text-uppercase"><%= cliente.getNombre() %></div>
                <div class="masthead-heading text-uppercase"><%=cliente.getId() %></div>
            </div>
        </header>
        <section class="page-section bg-light">
            <div class="text-center" > 
                <h2 class="section-heading text-uppercase">tu progreso</h2>
                <div id="avances">
                    <h3><i>Estadisticas Iniciales:</i></h3>
                        <p class="text-uppercase">Altura: <%= cliente.getAlturaInicial() %> </p>
                        <p class="text-uppercase">Peso: <%=cliente.getPesoInicial() %> </p>
                </div>
                <div id="avances">
                    <h3><i>Objetivo a Alcanzar:</i></h3>
                        <p class="text-uppercase">Altura: <%=cliente.getAlturaMeta() %> </p>
                        <p class="text-uppercase">Peso: <%=cliente.getPesoMeta() %> </p>
                </div>
                <div class="container">
                    <form id="calculatorForm" data-sb-form-api-token="API_TOKEN" action="SvEditar" method="GET">
                        <div class="row align-items-stretch mb-5">
                            <div class="col-md-6" id="datos">
                                <p class="text-muted text-center "><i>Para editar y crear tu registro inicial y tu meta confirma el número ID que se encuentra bajo tu nombre</i></p>
                                <div class="form-group mb-md-0" id="datos">
                                    <input class="form-control" id="Weight" type="number" name="id1" placeholder="Número ID *" />
                                </div>
                            </div>   
                        </div>
                        <div class="col-md-6">
                            <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="calculatorButton">Editar o Crear</button></div>
                        </div>
                    </form>
                    <form id="calculatorForm" data-sb-form-api-token="API_TOKEN" action="SvEliminar" method="POST">
                        <div class="row align-items-stretch mb-5">
                            <div class="col-md-6" id="datos">
                                <p class="text-muted text-center "><i>Para  eliminar el registro confirma el número ID que se encuentra bajo tu nombre</i></p>
                                <div class="form-group mb-md-0" id="datos">
                                    <input class="form-control" id="Weight" type="number" name="id" placeholder="Número ID *" />
                                </div>
                            </div>   
                        </div>
                        <div class="col-md-6">
                            <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="calculatorButton">Eliminar</button></div>
                        </div>
                    </form>
                </div>
       
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="text-center">Copyright &copy; Juan Manuel Areiza Ospina 2023</div>
                   
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
