<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

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

  <body class="d-flex">

    <jsp:include page="nav-admin.jsp" />

    <div class="container mt-5">
      <aside class="d-flex" style="justify-content:space-between;">
        <h3>Registros Inmuebles</h3>
        <a href="./create-inmueble.jsp" class="btn btn-icon btn-sm btn-success">
          <i class="bi bi-plus fs-5"></i>
        </a>
      </aside>
      <hr>

      <div class="table-responsive small">
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">titulo</th>
              <th scope="col">direccion</th>
              <th scope="col">tipo</th>
              <th scope="col">area</th>
              <th scope="col">precio</th>
              <th scope="col">habitaciones</th>
              <th scope="col">Baños</th>
            </tr>
          </thead>
          <tbody>
            <%
              Statement st = null;
              Connection cont = null;
              ResultSet result = null;

              try{
                Class.forName("org.mariadb.jdbc.Driver");
                cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");
                String consultaSQL = "SELECT * FROM inmueble";
                st = cont.createStatement();

                result = st.executeQuery(consultaSQL);

                while(result.next()) {
                  out.println("<tr class='fw-semibold'>");
                  out.println("<td>"+result.getInt("inmueble_id")+"</td>");
                  out.println("<td>"+result.getString("titulo")+"</td>");
                  out.println("<td>"+result.getString("direccion")+"</td>");
                  out.println("<td>"+result.getString("tipo")+"</td>");
                  out.println("<td>"+result.getInt("area")+"</td>");
                  out.println("<td>"+result.getDouble("precio")+"</td>");
                  out.println("<td>"+result.getInt("habitaciones")+"</td>");
                  out.println("<td>"+result.getInt("banos")+"</td>");
                  out.println("</tr>");
                }

              } catch(SQLException e) {
                out.println("Error al ejecutar la consulta: " + e.getMessage());
              
              } finally {
                if (result != null) {
                    try {
                        result.close();
                    } catch (SQLException e) { /* Ignored */}
                }
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
          </tbody>
        </table>

          <div class="card-body">
            <div class="d-flex justify-content-between">
              <div class="card-info border rounded p-2 shadow-sm p-3 mb-5">
                <p class="card-text bg-info rounded p-1 text-light fw-bold">Cantidad</p>
                <div class="d-flex align-items-end mb-2"> 
                  <h4 class="card-title mb-0 me-2" id="cantidad">-----</h4>
                  <small class="text-success">(Aumento De Inmobiliaria)</small>
                </div>
              </div>
              <div class="card-icon">
                <span class="badge bg-label-primary rounded p-2">
                  <i class="bx bx-trending-up bx-sm"></i>
                </span>
              </div>
            </div>
          </div>  

      </div>
    </div>
    

    <script>
      const $h4 = document.getElementById("cantidad");
      let cantidadRegistros = document.querySelectorAll("tr").length -1;
      
      $h4.innerText = cantidadRegistros;
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>