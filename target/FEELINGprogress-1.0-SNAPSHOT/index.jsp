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
        <title>FEELING Progress</title>
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
                        <li class="nav-item"><a class="nav-link" href="#contact">Resgístrate</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Iniciar Sesión</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" id="m1">
            <div class="container">
                <div class="masthead-subheading">¡Regítrate en FEELING PROGRESS!</div>
                <div class="masthead-heading text-uppercase">Mira el progreso de tus metas</div>
                <a class="btn btn-primary btn-xl text-uppercase" href="#services">Cuéntame más</a>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Sigue Tu Progreso</h2>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <img src="imgs/ejercicio.jpg"  alt="..." width="150">
                        </span>
                        <h4 class="my-3">Establece Metas</h4>
                        <p class="text-muted">Indicanos cuál es tu estado fí­sico actual y cuentaanos cuál es ese fí­sico al que quieres llegar. Para ello, te pediremos unos datos sobre tu cuerpo.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <img src="imgs/cintura.jpeg"  alt="..." width="150">
                        </span>
                        <h4 class="my-3">Sé Constante</h4>
                        <p class="text-muted">Haznos saber tus avances. Registra tus estadisticas fí­scas para guardarlas por ti y te brindaremos un calculadora para ayudarte con tus calorías</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <img src="imgs/logro.png"  alt="..." width="110">
                        </span>
                        <h4 class="my-3">Observa Tus Avances</h4>
                        <p class="text-muted">Te mostraremos los avances de tus estadisticas fí­sicas hasta que alcances tu meta. Luego te invitamos a que te propongas más metas.</p>
                    </div>
                </div>
                <div class="text-center"><a class="btn btn-primary btn-xl text-uppercase" href="#contact">Me interesa</a></div>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Regístrate Aquí­</h2>
                </div>
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form id="contactForm" data-sb-form-api-token="API_TOKEN" autocomplete="off" action="SvUsuario" method="POST">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <!-- Nombre-->
                                <input class="form-control" id="name" name="name" type="text" placeholder="Nombre Completo *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="name:required">Es necesario un Nombre.</div>
                            </div>
                            <div class="form-group">
                                <!-- Username-->
                                <input class="form-control" id="username" name="username" type="text" placeholder="Crea un Usuario *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="username:required">Necesitas un Usuario.</div>
                            </div>
                            <div class="form-group mb-md-0">
                                <!-- Create Password-->
                                <input class="form-control" id="password1" name="password1" type="password" placeholder="Crea una Contraseña *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="password1:required">Necesitas una Contraseña.</div>
                            </div>
                        </div>
                    </div>
              <!-- Submit Button-->
                    <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Continuar</button></div>
                </form>
            </div>
        </section>
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
