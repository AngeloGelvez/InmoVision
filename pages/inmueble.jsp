<%@page pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>

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

    <link rel="stylesheet" href=".././assets/style.css">

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
            <a class="fw-bold" aria-current="page" href="../index.jsp">Home</a>
            <a href="./home.jsp">Hogares</a>
            <li class="nav-item dropdown" style="list-style:none;">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="usuario">
                --------
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Perfil</a></li>
                <li><a class="dropdown-item" href="#">Configuración</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#" onclick="cerrarSesion();">Cerrar Sesión</a></li>
              </ul>
            </li>
          </div>  
        </div>
      </div>
    </nav>

    <main class="container nt-5"> 
      <%
        Statement statement = null;
        Connection cont = null;
        ResultSet result = null;

        try{
          Class.forName("org.mariadb.jdbc.Driver");
          cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

          String consultaSql = "SELECT * FROM inmueble WHERE inmueble_id = "+ request.getParameter("id")+";";

          statement = cont.createStatement();

          result = statement.executeQuery(consultaSql);

          while(result.next()) {
            //result.getString("nombre");
            out.println("<div class='row g-0 m-5 p-5'>");
            out.println("<div class='col-md-4 container'>");
            out.println("<img src='"+ result.getString("imagen") +"' class='img-fluid rounded-start shadow-lg mb-5 bg-body-tertiary rounded' alt='Wild Landscape'/>");
            out.println("</div>");
            out.println("<div class='col-md-8 container border py-3 shadow-sm p-3 mb-5 bg-body-tertiary rounded'>");
            out.println("<div class='card-body'>");
            out.println("<h5 class='card-title fs-3 fw-bold'>"+ result.getString("titulo")+"</h5>");
            out.println("<hr/>");
            out.println("<p class='card-text'>This is a wider card with supporting text below as a natural lead-in to additionalcontent. This content is a little bit longer.</p>");
            out.println("<p class='card-text'>"+result.getString("direccion")+"</p>");
            out.println("<p class='card-text'>Precio: "+result.getDouble("precio")+"</p>");
            out.println("<p class='card-text'>Area en metros cuadrados: "+result.getInt("area")+"</p>");
            out.println("<p class='card-text'>Habitaciones: "+result.getInt("habitaciones")+"</p>");
            out.println("<p class='card-text'>Baños: "+result.getInt("banos")+"</p>");
            out.println("<p class='card-text d-flex justify-content-between'>");
            out.println("<small class='text-muted'>"+result.getString("tipo")+"</small>");
            out.println("<a class='btn btn-primary'>Solicitar</a>");
            out.println("</p>");

            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
          }
          
        }catch(SQLException e) {
          out.println(e.getMessage());
          //response.sendRedirect("login.html");
        }finally {
          if (result != null) {
              try {
                  result.close();
              } catch (SQLException e) { /* Ignored */}
          }
          if (statement != null) {
              try {
                  statement.close();
              } catch (SQLException e) { /* Ignored */}
          }
          if (cont != null) {
              try {
                  cont.close();
              } catch (SQLException e) { /* Ignored */}
          }
        }
      %>

      <!--
      <div class="card mb-3">
        <img src="https://mdbcdn.b-cdn.net/img/new/slides/041.webp" class="card-img-top" alt="Wild Landscape"/>
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additionalcontent. This content is a little bit longer.</p>
          <p class="card-text">
            <small class="text-muted">Last updated 3 mins ago</small>
          </p>
        </div>
      </div>
      -->
    </main>


    <!--FOOTER JSP-->
    <jsp:include page="./footer.jsp" />


    <script>
      const $a = document.getElementById("usuario");
      const valores = JSON.parse(localStorage.getItem("user")).split(",");
      $a.innerText = valores[1] + " " + valores[2];


      //console.log(JSON.parse(localStorage.getItem("user")).split(","));

      function cerrarSesion() {
        localStorage.removeItem("user");
        location.href="http://localhost:8080/InmoVision/";
      }
    </script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>