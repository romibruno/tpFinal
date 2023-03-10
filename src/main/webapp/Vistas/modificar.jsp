<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Socio</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="resources/CSS1/estilo.css" rel="stylesheet" content="text/css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    </head>

    <body class="fondoMod">
        <header > 
            <nav class="navbar bg-dark bg-body-tertiary p-4 color-bg">
                <div class="container">
                    <a href="SociosController?accion=listar" id="marca">SILVERBACK<span>FITNESS</span></a>  
                </div>
            </nav>         
        </header>   

        <main>
            <div class="logoImg">
                <img src="resources/img/logo.jpeg" alt="Logo gimnasio" id="bg">

                <div class="container" id="formulario" >
                    <h1 class="text-right" id="titulo">Modificar Socio</h1>
                    <div class="row" >
                        <%
                            String id = request.getParameter("id");
                            int mid;
                            mid = Integer.parseInt(id);
                            Socios resultado = null;
                            SociosDAO socio = new SociosDAO();
                            resultado = socio.mostrarSocio(mid);
                        %>
                        <form class="p-5" method="POST" action="SociosController?accion=actualizar">
                            <div class="mb-2">
                                <label for="idSocio" class="form-label" >id</label>
                                <input type="text" class="form-control" id="idSocio" name="idSocio" readonly="true" value=<%=resultado.getIdSocio()%>>                          
                            </div> 
                            <div class="mb-2">
                                <label for="nombre" class="form-label" >Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required="" value=<%=resultado.getNombre()%>>                       

                            </div> 
                            <div class="mb-2">
                                <label for="apellido" class="form-label" >Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" required="" value=<%=resultado.getApellido()%>>                       
                            </div> 
                            <div class="mb-2">
                                <label for="direccion" class="form-label" >Direcci??n</label>
                                <input type="text" class="form-control" id="direccion" name="direccion" required="" value=<%=resultado.getDireccion()%>>                          
                            </div> 
                            <div class="mb-2">
                                <label for="localidad" class="form-label" >Localidad</label>
                                <input type="text" class="form-control" id="localidad" name="localidad" required="" value=<%=resultado.getLocalidad()%>>                          
                            </div> 
                            <div class="mb-2">
                                <label for="fNac" class="form-label" >Fecha Nac</label>
                                <input type="date" class="form-control" id="fnac" name="fNac" required="" value=<%=resultado.getfNac()%>>                          
                            </div> 
                            <div class="mb-2">
                                <label for="mail" class="form-label" >EMail</label>
                                <input type="text" class="form-control" id="mail" name="mail" required="" value=<%=resultado.getMail()%>>                          
                            </div>  
                            <div class="mb-2">
                                <label for="telefono" class="form-label" >Tel??fono</label>
                                <input type="text" class="form-control" id="telefono" name="telefono" required="" value=<%=resultado.getTelefono()%>>                          
                            </div> 

                            <button type="submit" class="btn btn-outline-danger btn-lg mt-4 estBoton" >Modificar </button>
                        </form>                
                    </div>
                </div> 
            </div>
        </main>                     
    </body>
</html>

