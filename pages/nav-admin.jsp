<%@page pageEncoding="UTF-8" %>

<!--NAVBAR-->
    <div class="flex-shrink-0 p-3 bg-dark text-light m-2 rounded-4 min-vh-100" style="width: 280px;">
      <a href="/" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
        <i class="bi bi-houses-fill fa-2x me-3" style="color: #0f684b;"></i>
        <span class="fs-5 fw-semibold text-light">InmoVision</span>
      </a>
      <ul class="list-unstyled ps-0 text-light">
        <li class="mb-1">
          <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 text-light" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
            Home
          </button>
          <div class="collapse show text-light container me-5" id="home-collapse" style="">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small container">
              <li><a href="./control.jsp" class="d-inline-flex text-decoration-none rounded text-light">Clientes</a></li>
              <li><a href="./control2.jsp" class="d-inline-flex text-decoration-none rounded text-light">Inmuebles</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Fiadores</a></li>
            </ul>
          </div>
        </li>
        <li class="mb-1 text-light">
          <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed text-light" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
            Opciones
          </button>
          <div class="collapse container" id="dashboard-collapse" style="">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small container">
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Crear</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Editar</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Mostrar</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Eliminar</a></li>
            </ul>
          </div>
        </li>
        <li class="mb-1">
          <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed text-light" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
            Fiadores
          </button>
          <div class="collapse container" id="orders-collapse" style="">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small text-light container">
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">New</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Processed</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Shipped</a></li>
              <li><a href="#" class="d-inline-flex text-decoration-none rounded text-light">Returned</a></li>
            </ul>
          </div>
        </li>
        <li class="border-top my-3"></li>
        <li class="mb-1">
          <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed text-light" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
            Mi Cuenta
          </button>
          
        </li>

        <li class="mb-1">
          <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed text-danger" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
            Cerrar Sesión
          </button>
        </li>
      </ul>
    </div>