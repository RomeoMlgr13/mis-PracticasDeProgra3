<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="http://code.jquery.com/jquery-latest.js">
    </script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('#carga').click(function(event){
          var  btn = $('carga').val();
          $.post('ServeletControler',{


          },function(respose){
          let datos = JSON.parse(respose);
          //console.log(datos);

          var tablad = document.getElementById('tablaDatos');
          for(let item of datos){
              
              tabladatos.innerHTML +=`
              <tr>
              <td>${item.id}</td>
              <td>${item.nombreProducto}</td>
              <td>${item.precioProducto}</td>
              <td>${item.cantidadProducto}</td>
              <td>${item.totalProducto}</td>


              


              </tr>
              
              `
          }

        });

        });


        

    });
    
    </script>

    

<body>
<h2>Hello World!</h2>
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

    <input type="submit" name="btn" value="agregar">
    <input type="submit" name="btn" value="eliminar">
    <input type="submit" name="btn" value="modificar">
    <input type="submit" name="btn" value="CARGAR" id="carga">

    <table class="table table-dark" id="tablaDatos">
        <thead>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>PRECIO</th>
            <th>CANTIDAD</th>
            <th>TOTAL</th>
        
        </thead>
        <tbody>
             
        </tbody>

    </table>





</body>
</html>
