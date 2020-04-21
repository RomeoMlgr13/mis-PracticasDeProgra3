<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String idBus=request.getParameter("idBus");
String nombrePr=request.getParameter("Npr");
String cantidadPr=request.getParameter("CantidadPr");
String precioPr=request.getParameter("PrecioPr");
String totalPr=request.getParameter("TotalPr");



%>
<body>
    
<form action="ServeletControler">
<table align="center">
    <thead></thead>
    <tbody>
        <tr>
            <td>
               
                    <p>id</p><input type="text" name="Id" id="idcarga" value="<%=idBus %>>">
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