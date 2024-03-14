<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>

<%
  String email = request.getParameter("email");
  String contra = request.getParameter("contra");

  Statement statement = null;
  Connection cont = null;
  ResultSet result = null;

  try{
    Class.forName("org.mariadb.jdbc.Driver");
    cont = DriverManager.getConnection("jdbc:mariadb://localhost:3307/inmovision_db", "root", "");

    String consultaSql = "SELECT * FROM cliente WHERE cliente.correo = '" + email + "' and cliente.contrasena = '" + contra+"';";

    statement = cont.createStatement();

    result = statement.executeQuery(consultaSql);

    while(result.next()) {
      //result.getString("nombre");
      request.getSession().setAttribute("clienteId", result.getInt("cliente_id"));
      response.sendRedirect("home.jsp");
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