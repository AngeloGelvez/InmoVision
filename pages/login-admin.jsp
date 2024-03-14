<%@page pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>

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

  <body class="container mt-5 bg-green-black" style="transform: translateY(25%);">

    <form class="form form-control mx-auto p-5" style="width: 50%;" method="POST">

      <h1 class="mb-5">Login Admin</h1>

      <!-- Email input -->
      <div class="form-outline mb-4">
        <input type="email" id="form2Example1" class="form-control" name="email"/>
        <label class="form-label" for="form2Example1">Correo Electrónico</label>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" id="form2Example2" class="form-control" name="contra"/>
        <label class="form-label" for="form2Example2">Contraseña</label>
      </div>

      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-4">Iniciar Sesion</button>
    </form>

    <%
      String email = request.getParameter("email");
      String pass = request.getParameter("contra");

      Statement statement = null;
      Connection cont = null;
      ResultSet result = null;

      try{
        Class.forName("org.mariadb.jdbc.Driver");
        cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

        String consultaSql = "SELECT * FROM admin WHERE admin.correo = '" + email + "' and admin.contrasena = '" + pass+"';";

        statement = cont.createStatement();

        result = statement.executeQuery(consultaSql);

        while(result.next()) {
          String nombre = result.getString("nombre");
          String correo = result.getString("correo");
          String contra = result.getString("contrasena");

          //out.println(result.getString("nombre"));
          //out.println(result.getString("correo"));
          //out.println(result.getString("contrasena"));
          //out.print("<script> localStorage.setItem('user', JSON.stringify({nombre: "+nombre+", email: "+correo+", contra: "+contra+"})); </script>");

          response.sendRedirect("./control.jsp");
        }

      }catch(SQLException e) {
        //out.println(e);
        out.println("Error al ejecutar la consulta: " + e.getMessage());
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>