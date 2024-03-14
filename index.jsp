<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>InmoVision</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="shortcut icon" href="assets/houses-fill.svg" />

    <link rel="stylesheet" href="assets/style.css">

    <!--BOOTSTRAP ICONS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!--FONT AWESOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>

  <body class="bg-light">
    <nav class="navbar bg-white p-3">
      <div class="container-fluid container">
        <a class="navbar-brand fw-bold cl-green"> InmoVision</a>

        <div>
          <div class="rm-a-style" style="display: flex !important;">
            <a class="fw-bold" aria-current="page" href="./index.jsp">Home</a>
            <a href="./pages/all-inmuebles.jsp">Hogares</a>
            <a href="#contacto">Contacto</a>
            <a style="border: thin solid #3b8952; border-radius: 50px;" href="./pages/login.html">Inicia Sesión</a>
          </div>  
        </div>
      </div>
    </nav>

    <main class="d-flex">
        <div class="container cont-text">
          <h1 class="cl-green title">¡Bienvenido a InmoVision!</h1>
          <p class="fs-5">Tu aliado en el mundo inmobiliario! Nuestra plataforma ha sido diseñada para simplificar <br/>y potenciar tu experiencia en la gestión de propiedades.</p>

          <br>
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Busca la casa de tus sueños." aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Buscar</button>
          </form>
        </div>
        <div class="cont-img">
          <img src="assets/main-photo.jpg" alt="hora en la colina">
        </div>
    </main>

    <div class="bg-green-black">
      <p class="container p-5 text-light fw-lighter fs-5 text-center">Tu aliado en el mundo inmobiliario! Nuestra plataforma ha sido diseñada para simplificar y potenciar tu experiencia en la gestión de propiedades. Con una interfaz intuitiva y poderosas herramientas, te ofrecemos la solución integral que necesitas para optimizar tus operaciones, gestionar tus propiedades de manera eficiente y aumentar tus resultados. Únete a nuestra comunidad y descubre cómo InmoVision puede llevar tu negocio al siguiente nivel.</p>
    </div>

    <!--CARACTERISTICAS-->

    <div class="container mt-5">
      <div class="container px-4 py-5">
        <h2 class="pb-2 border-bottom">Características Principales</h2>
    
        <div class="row row-cols-1 row-cols-md-2 align-items-md-center g-5 py-5">
          <div class="col d-flex flex-column align-items-start gap-2">
            <h2 class="fw-bold text-body-emphasis">Potencia tu negocio inmobiliario con nuestras herramientas inteligentes</h2>
            <p class="text-body-secondary">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum quos illo saepe dolore officia inventore deleniti pariatur perferendis molestias magnam eveniet magni minima a veritatis, fugiat, architecto cupiditate! Cupiditate, corrupti?</p>
            <a href="#" class="btn btn-success bg-green-black">Quiero Saber Más</a>
          </div>
    
          <div class="col">
            <div class="row row-cols-1 row-cols-sm-2 g-4">
              <div class="col d-flex flex-column gap-2">
                <h4 class="fw-semibold mb-0 text-body-emphasis">Gestión centralizada de propiedades</h4>
                <p class="text-body-secondary">Organiza y administra todas tus propiedades de manera eficiente en una sola plataforma.</p>
              </div>
    
              <div class="col d-flex flex-column gap-2">
                <h4 class="fw-semibold mb-0 text-body-emphasis">Seguimiento de clientes</h4>
                <p class="text-body-secondary">Mantén un registro detallado de tus clientes, seguimientos y comunicaciones para mejorar tus relaciones comerciales.</p>
              </div>
    
              <div class="col d-flex flex-column gap-2">
                <h4 class="fw-semibold mb-0 text-body-emphasis">Agenda integrada</h4>
                <p class="text-body-secondary">Coordina fácilmente citas, visitas y tareas con una agenda integrada que te ayuda a mantener tu día organizado..</p>
              </div>
    
              <div class="col d-flex flex-column gap-2">
                <h4 class="fw-semibold mb-0 text-body-emphasis">Análisis de datos</h4>
                <p class="text-body-secondary">Obtén información valiosa sobre el rendimiento de tus propiedades y el mercado inmobiliario para tomar decisiones más informadas.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--CONTACT-->
    <div class="container mb-5" id="contacto">
      <div class="row mb-5">
        <div class="col-xl-10">
          <!-- Title -->
          <h1>Contáctanos y conozcámonos</h1>
          <p class="lead mb-0">Estamos comprometidos a ayudarte a encontrar el hogar perfecto. Nuestro equipo de expertos en bienes raíces está aquí para guiarte en cada paso del camino. ¿Buscas comprar, vender o alquilar una propiedad? ¡Nosotros te cubrimos</p>
        </div>
      </div>
  
      <!-- Contact info -->
      <div class="row g-4">
  
        <!-- Contact item START -->
        <div class="col-md-6 col-xl-4">
          <div class="card card-body shadow text-center align-items-center h-100 rounded-4">
            <!-- Icon -->
            <div class="icon-lg bg-info bg-opacity-10 text-info rounded-circle mb-2 p-3"><i class="bi bi-telephone-inbound-fill p-2"></i></div>
            <!-- Title -->
            <h5>LLamanos</h5>
            <p>Imprudence attachment him his for sympathize. Large above be to means.</p>
            <!-- Buttons -->
            <div class="d-grid gap-3 d-sm-block">
              <button class="btn btn-sm btn-primary-soft"><i class="bi bi-phone me-2"></i>+123 456 789</button>
              <button class="btn btn-sm btn-light"><i class="bi bi-telephone me-2"></i>+(222)4567 586</button>
            </div>
          </div>
        </div>
        <!-- Contact item END -->
  
        <!-- Contact item START -->
        <div class="col-md-6 col-xl-4">
          <div class="card card-body shadow text-center align-items-center h-100 rounded-4">
            <!-- Icon -->
            <div class="icon-lg bg-danger bg-opacity-10 text-danger rounded-circle mb-2 p-3"><i class="bi bi-inboxes-fill fs-5 p-2"></i></div>
            <!-- Title -->
            <h5>Nuestro Email</h5>
            <p>Large above be to means. Him his for sympathize.</p>
            <!-- Buttons -->
            <a href="#" class="btn btn-link text-decoration-underline p-0 mb-0"><i class="bi bi-envelope me-1"></i>inmovision@gmail.com</a>
          </div>
        </div>
        <!-- Contact item END -->
  
        <!-- Contact item START -->
        <div class="col-xl-4 position-relative">
          <div class="card card-body shadow text-center align-items-center h-100 rounded-4">
            <!-- Icon -->
            <div class="icon-lg bg-warning bg-opacity-10 text-warning rounded-circle mb-2 p-3"><i class="bi bi-globe2 fs-5 p-2"></i></div>
            <!-- Title -->
            <h5>Redes Sociales</h5>
            <p>Sympathize Large above be to means.</p>
            <!-- Buttons -->
            <ul class="list-inline mb-0">
              <li class="list-inline-item"> <a class="btn btn-sm bg-facebook px-2 mb-0" href="#"><i class="fab fa-fw fa-facebook-f"></i></a> </li>
              <li class="list-inline-item"> <a class="btn btn-sm bg-instagram px-2 mb-0" href="#"><i class="fab fa-fw fa-instagram"></i></a> </li>
              <li class="list-inline-item"> <a class="btn btn-sm bg-twitter px-2 mb-0" href="#"><i class="fab fa-fw fa-twitter"></i></a> </li>
              <li class="list-inline-item"> <a class="btn btn-sm bg-linkedin px-2 mb-0" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a> </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!--FOOTER JSP-->
    <jsp:include page="./pages/footer.jsp" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
