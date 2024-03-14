<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
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
    <link rel="shortcut icon" href="../assets/houses-fill.svg" />

    <link rel="stylesheet" href="../assets/style.css">

    <!--BOOTSTRAP ICONS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!--FONT AWESOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>

  <body>

    <section class="m-5">
      <div class="container-fluid">
          <div class="text-black">
    
            <div class="px-5 ms-xl-4 mt-5">
              <i class="bi bi-houses-fill fa-2x me-3 pt-5 mt-xl-4" style="color: #0f684b;"></i>
              <span class="h1 fw-bold mb-0">InmoVision</span>
            </div>
    
            <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
    
              <form style="width: 55%; margin: auto;" method="POST">
    
                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Registrate en la plataforma</h3>

                <div class="form-outline mb-4">
                  <input type="text" id="form2Example18" class="form-control form-control-lg" name="name"/>
                  <label class="form-label" for="form2Example18">Nombre</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form2Example18" class="form-control form-control-lg" name="lastname"/>
                  <label class="form-label" for="form2Example18">Apellido</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form2Example18" class="form-control form-control-lg" name="email"/>
                  <label class="form-label" for="form2Example18">Correo Electrónico</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form2Example28" class="form-control form-control-lg" name="contra"/>
                  <label class="form-label" for="form2Example28">Contraseña</label>
                </div>

                <div class="form-outline mb-4">
                  <select class="form-control form-control-lg" name="status">
                    <option selected value=""></option>
                    <option value="Casado">Casado</option>
                    <option value="Soltero">Soltero</option>
                    <option value="Divorciado">Divorciado</option>
                    <option value="Viudo">Viudo</option>
                  </select>
                  <label class="form-label" for="form2Example18">Estado Civil</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="number" id="form2Example18" class="form-control form-control-lg" name="phone"/>
                  <label class="form-label" for="form2Example18">Telefono</label>
                </div>
    
                <div class="form-outline mb-4">
                  <input type="number" id="form2Example18" class="form-control form-control-lg" name="cd"/>
                  <label class="form-label" for="form2Example18">Cédula</label>
                </div>
    
    
                <div class="pt-1 mb-4">
                  <button class="btn btn-success btn-lg btn-block" type="submit">Registrarme</button>
                </div>
              </form>
    
            </div>
        </div>
      </div>
    </section>   


    <%
      String nombre = request.getParameter("name");
      String apellido = request.getParameter("lastname");
      String correo = request.getParameter("email");
      String contra = request.getParameter("contra");
      String estadoCivil = request.getParameter("status");
      String telefono = request.getParameter("phone");
      String cedula = request.getParameter("cd");

      Statement st = null;
      Connection cont = null;

      try{
        if(!(nombre == null && apellido == null && correo == null && contra == null && estadoCivil == null && telefono == null && cedula == null)) {
          Class.forName("org.mariadb.jdbc.Driver");
          cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

          st = cont.createStatement();

          String consultaSQL = "INSERT INTO cliente(nombre, apellido, correo, contrasena, estado_civil, telefono, cedula) VALUES('"+nombre+"','"+apellido+"','"+correo+"','"+contra+"','"+estadoCivil+"','"+telefono+"','"+cedula+"');";
          st.execute(consultaSQL);  

          //out.println(consultaSQL);
          response.sendRedirect("login.html");
        }

      }catch (SQLException e) {
        out.println(e);
      }finally {
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) { /* Ignored */}
        }
        if (cont != null) {
            try {
                cont.close();
            } catch (SQLException e) { /* Ignored */}
        }
      }
    %>

    <jsp:include page="footer.jsp" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>