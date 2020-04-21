<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>holamundo</h1>
<form action="ServeletControler">
<table align="center">
    <thead></thead>
    <tbody>
        <tr>
            <td>
               
                    <p>id</p><input type="text" name="Id">
                    <p>Nombre producto</p><input type="text" name="Nproductos">
                    <p>Precio producto</p><input type="text" name="Pproductos">
                    <p>Cantidad de producto</p><input type="text" name="Cproductos">
                    <p>Total de producto</p><input type="text" name="Tproductos">
                    <br>
                    <br>
                    
                         </td>
                      </tr>
            </tbody>
            
      </table>
      
      <input type="submit" class="btn btn-info" value="GUARDAR">
      </form>

</body>
</html>