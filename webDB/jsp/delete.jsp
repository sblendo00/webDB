<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Elenco giudici XFactor</title>
    </head>
    <body>
     
      <h1>hai cancellato il giudice</h1>
        <% 
            try{
            String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=zuliani.nicolo;password=xxx123#";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection connection = DriverManager.getConnection(connectionUrl);

            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");

			String sql2 = "DELETE FROM Giudice where nome = ? AND  cognome = ?";
			PreparedStatement stmt2 = connection.prepareStatement(sql2);
			stmt2.setString(1,nome);
			stmt2.setString(2,cognome);
			stmt2.executeUpdate();
			
		out.println("giudice rimosso");
	        
	        connection.close();
        }catch(Exception e){
            out.println(e);
        }
        %>
    </body>
</html>