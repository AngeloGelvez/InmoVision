<%@page pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
  
<%
    Integer valorRecibido = (int) request.getSession().getAttribute("clienteId");

        Statement statement = null;
        Connection cont = null;
        ResultSet result = null;

        try{
          Class.forName("org.mariadb.jdbc.Driver");
          cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

          String consultaSql = "SELECT * FROM cliente WHERE cliente_id = " +valorRecibido+";";

          statement = cont.createStatement();

          result = statement.executeQuery(consultaSql);

          while(result.next()) {
            //result.getString("nombre");
            out.println("<input type='hidden' value='"+result.getString("cliente_id")+", "+result.getString("nombre")+", "+result.getString("apellido")+", "+result.getString("correo")+", "+result.getString("contrasena")+", "+result.getString("estado_civil")+", "+result.getString("telefono")+", "+result.getString("cedula")+"' id='cliente_id' />");   
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
      <div class="row row-cols-1 row-cols-md-3 g-4 container n-5 p-4">

      <%
        statement = null;
        cont = null;
        result = null;

        try{
          Class.forName("org.mariadb.jdbc.Driver");
          cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

          String consultaSql = "SELECT inmueble_id, titulo, direccion, imagen, tipo FROM inmueble;";

          statement = cont.createStatement();

          result = statement.executeQuery(consultaSql);

          while(result.next()) {
            //result.getString("nombre");
            out.println("<div class='col'>");
            out.println("<div class='card h-100'>");
            out.println("<img src='"+result.getString("imagen")+"' class='card-img-top' alt='Skyscrapers'/>");
            out.println("<div class='card-body'>");
            out.println("<h5 class='card-title'>"+result.getString("titulo")+"</h5>");
            out.println("<p class='card-text'>This is a wider card with supporting text below as a natural lead-in toadditional content. This content is a little bit longer. ||"+result.getString("direccion")+"</p>");
            out.println("<form action='inmueble.jsp'><input type='hidden' value="+result.getInt("inmueble_id")+" name='id'><button type='submit' class='btn btn-primary'>Información</button></form>");
            out.println("<div class='card-footer'>");
            out.println("<small class='text-muted'>"+result.getString("tipo")+"</small>");
            out.println("</div>");
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

        <div class="col">
          <div class="card h-100">
            <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/044.webp" class="card-img-top" alt="Skyscrapers"/>
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in toadditional content. This content is a little bit longer.</p>
            </div>
            <div class="card-footer">
              <small class="text-muted">Last updated 3 mins ago</small>
            </div>
          </div>
        </div>

      </div>
    </main>


    <!--FOOTER JSP-->
    <jsp:include page="./footer.jsp" />

    <script>
      const $input = document.getElementById("cliente_id");
      const $a = document.getElementById("usuario");
      localStorage.setItem("user", JSON.stringify($input.value));

      const valores = JSON.parse(localStorage.getItem("user")).split(",");
      console.log($input.value);
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