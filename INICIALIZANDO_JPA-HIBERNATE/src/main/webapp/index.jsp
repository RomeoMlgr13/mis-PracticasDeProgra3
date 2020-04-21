<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <script src="http://code.jquery.com/jquery-latest.js">
</script>

<script type="text/javascript">
    $(document).ready(function(){
     
        	
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
                     <td>
                     <a href="" class="btn btn-warning">ELIMINAR</a>
                     <a href="" class="btn btn-danger">ACTUALIZAR </a> 
                     
                     </td>


                     


                     </tr>
                     
                     `
             }

           });

        });

    });
    
    </script>




<body>

<h2>Hello World!</h2>


      
    <a href="funciones.jsp" class="btn btn-info">AGREGAR</a>
    

    <table class="table table-dark">
        <thead>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>PRECIO</th>
            <th>CANTIDAD</th>
            <th>TOTAL</th>
             <th>OPCIONES</th>
        
        </thead>
        <tbody>
             
        </tbody>

    </table>





</body>
</html>
