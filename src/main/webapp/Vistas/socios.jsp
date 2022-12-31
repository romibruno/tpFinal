<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Socios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="resources/CSS1/estilo.css" rel="stylesheet" content="text/css">
        
     
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>

    <body class="fondoList">
        <header > 
            <nav class="navbar fixed-top bg-dark bg-body-tertiary p-4 color-bg">
                <div class="container">
                    <a href="SociosController?accion=home" id="marca">SILVERBACK<span>FITNESS</span></a>    
                </div>
            </nav>         
        </header> 

        <main class="margen">
            <div class="container">
                <h1 class="text-right" id="titulo">Listado de Socios del Gym</h1>

                <div class="row">   
                    <table class="table table-light table-striped table-bordered table-hover estTabla">
                        <thead>
                        <th>id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dirección</th>
                        <th>Localidad</th>
                        <th>Fecha Nac.</th>
                        <th>Teléfono</th>
                        <th>mail</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                        </thead>

                        <%
                            List<Socios> resultado = null;
                            SociosDAO s1 = new SociosDAO();
                            resultado = s1.listarSocios();

                            for (int i = 0; i < resultado.size(); i++) {
                                String ruta = "SociosController?accion=modificar&id=" + resultado.get(i).getIdSocio();
                                String rutaE = "SociosController?accion=eliminar&id=" + resultado.get(i).getIdSocio();
                        %>                


                        <tr>
                            <td><%=resultado.get(i).getIdSocio()%></td>
                            <td><%=resultado.get(i).getNombre()%></td>
                            <td><%=resultado.get(i).getApellido()%></td>
                            <td><%=resultado.get(i).getDireccion()%></td>
                            <td><%=resultado.get(i).getLocalidad()%></td>
                            <td><%=resultado.get(i).getfNac()%></td>
                            <td><%=resultado.get(i).getTelefono()%></td>
                            <td><%=resultado.get(i).getMail()%></td>

                            <td class="text-center"><a href=<%=ruta%>> <button type="button" class="btn btn-secondary"><i class="bi bi-pencil"></i></button> </a></td>
                            <td class="text-center"><a href=<%=rutaE%>><button type="button" class="btn btn-secondary"><i class="bi bi-trash"></i></button></a></td>

                        </tr>
                        
                        <%
                            }
                        %>
                        
                    </table> 
                </div>
            </div>
        </main>                  
    </body>
</html>

