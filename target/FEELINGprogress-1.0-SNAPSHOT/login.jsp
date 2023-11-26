<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar de Sesión FEELING Progress </title>
    <link rel="icon" type="image/x-icon" href="imgs/FP.png" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body id="placeLogin">
    <section>
        <div class="text-center" id="logo"><img src="imgs/FEELING.png" alt="..." width="500"></div>
        <div class="text-center">
            <form id="contactForm" data-sb-form-api-token="API_TOKEN" autocomplete="off" action="SvUsuario" method="GET">
                <div class="row align-items-stretch mb-5">
                    <div class="col-md-6" >
                        <div class="form-group" id="datos">
                            <!-- Username-->
                            <input class="form-control" id="username" type="text" name="user" placeholder="Usuario *" data-sb-validations="required" />
                        </div>
                        <div class="form-group" id="datos">
                            <!-- Password-->
                            <input class="form-control" id="password" type="password" name="password"placeholder="Contraseña *" data-sb-validations="required" />
                        </div>
                    </div>
                </div>
                <!-- Submit Button-->
                <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Iniciar Sesión</button>
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
</body>
</html>