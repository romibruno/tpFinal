<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/CSS1/estilo.css" rel="stylesheet" content="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>GYM</title>
    </head>

    <body>
        <header>
            <nav class="navbar fixed-top bg-dark text-bg-light navbar-expand-lg bg-body-tertiary" >
                <div class="container">
                    <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon "></span>
                    </button>
                    <a class="navbar-brand" href="" id="logo">SILVERBACK<span>FITNESS</span></a>

                    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="nav-principal">
                            <li class="nav-item">
                                <a class="nav-link " aria-current="page" href="SociosController?accion=listar">Lista de Socios</a>    
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SociosController?accion=nuevo">Agregar Socio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#horarios">Horarios</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#precio">Precios</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>



        <main>
            <!--IMAGEN DE PORTADA -->
            <section class="imagenPortada">
                <div class="cont_portada">
                    <h1>SILVERBACK</h1>
                    <h2>FITNESS</h2>
                </div>
            </section>

            <!-- HORARIOS -->
            <a name="horarios"></a>
            <section id="margen_clases">
                <div class="container">   
                    <h2 class="titulo_horarios">Horarios de Clases</h2>

                    <table class="table table-striped table-bordered table-hover tabla">
                        <thead>
                            <tr>
                                <th></th>
                                <th>LUNES</th>
                                <th>MARTES</th>
                                <th>MIÉRCOLES</th>
                                <th>JUEVES</th>
                                <th>VIERNES</th>
                                <th>SÁBADO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="horario" scope="row">9.00</td>
                                <td><p class="clase">Yoga</p><p>Adriana lopez</p></td>
                                <td><p class="clase" >Localizada</p><p>Javier Garcia</p></td>
                                <td><p class="clase">Body balance</p><p>Adrian Martinez</p></td>
                                <td></td>
                                <td><p class="clase">Zumba</p><p>Dolores Garcia</p></td>
                                <td><p class="clase" >Pilates</p><p>Laura Scaffa</p></td>
                            </tr> 
                            <tr>
                                <td class="horario" scope="row">10.00</td>
                                <td></td>
                                <td><p class="clase">Yoga</p><p>Adriana lopez</p></td>
                                <td><p class="clase" >Funcional</p><p>Emma Urso</p></td>
                                <td><p class="clase">Zumba</p><p>Dolores Garcia</p></td>
                                <td></td>
                                <td><p class="clase">Body balance</p><p>Adrian Martinez</p></td>
                            </tr>
                            <tr>
                                <td class="horario" scope="row">11.00</td>

                                <td><p class="clase" >Localizada</p><p>Javier Garcia</p></td>
                                <td><p class="clase">Body balance</p><p>Adrian Martinez</p></td>
                                <td></td>
                                <td><p class="clase">Yoga</p><p>Adriana lopez</p></td>

                                <td><p class="clase" >Funcional</p><p>Emma Urso</p></td>
                                <td><p class="clase">Zumba</p><p>Dolores Garcia</p></td>
                            </tr>

                            <tr>
                                <td class="horario" scope="row">12.00</td>
                                <td><p class="clase" >Funcional</p><p>Emma Urso</p></td>
                                <td><p class="clase">Zumba</p><p>Dolores Garcia</p></td>
                                <td></td>
                                <td><p class="clase">Body balance</p><p>Adrian Martinez</p></td>
                                <td> <p class="clase">Yoga</p><p>Adriana lopez</p></td>      
                                <td></td>
                            </tr>
                            <tr>
                                <td class="horario">15.00</td>
                                <td><p class="clase">Zumba</p><p>Dolores Garcia</p></td>

                                <td></td>
                                <td> <p class="clase">Yoga</p><p>Adriana lopez</p></td>

                                <td></td>
                                <td><p class="clase" >Body balance</p><p>Adrian Martinez</p></td>
                                <td><p class="clase" >Pilates</p><p>Laura Scaffa</p></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>


            <!-- PRECIOS -->

            <a name="precio"></a>
            <section class="section_precios" id="precios">
                <div class="containers">
                    <div>
                        <h2 class="titulo_precio">Planes y Precios</h2>
                        <p class="subtitulo_precio">Nuestros Paquetes</p>
                    </div> 

                    <section class="container"> 
                        <div class="row justify-content-center">
                            <div class="col-md-12 col-lg-10 col-xl-10">
                                <div class="row row-cols-1 row-cols-md-3 g-5 mt-3">
                                    <div class="col">
                                        <div class="card border-dark card_estilo">
                                            <div class="card-header text-bg-dark text-center">
                                                <i class="bi bi-suit-spade icono"></i>
                                                <h1 class="precio_title">PAQUETE BASICO</h1>
                                                <h2 class="precio_numero">$1500</h2>
                                            </div>
                                            <div class="card-body text-left">
                                                <ul>
                                                    <li class="precio_item"> 
                                                        <i>3 días a la semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i>acceso a las máquinas 3 veces por semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i> acceso a las clases 2 veces por semana</i>
                                                    </li> 
                                                </ul>    
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="card border-danger card_estilo">
                                            <div class="card-header text-white text-center card_color">
                                                <i class="bi bi-suit-heart icono"></i>
                                                <h1 class="precio_title">PAQUETE PREMIUM</h1>
                                                <h2 class="precio_numero">$2500</h2>
                                            </div>
                                            <div class="card-body text-left">
                                                <ul>
                                                    <li class="precio_item"> 
                                                        <i>4 días a la semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i>acceso a las máquinas 4 veces por semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i> acceso a las clases 3 veces por semana</i>
                                                    </li> 
                                                </ul>            
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="card border-dark card_estilo">
                                            <div class="card-header text-bg-dark text-white text-center">
                                                <i class="bi bi-gem icono"></i>
                                                <h1 class="precio_title">PAQUETE DIAMANTE</h1>
                                                <h2 class="precio_numero">$3500</h2>
                                            </div>
                                            <div class="card-body text-left">
                                                <ul>
                                                    <li class="precio_item"> 
                                                        <i>5 días a la semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i>acceso a las máquinas 5 veces por semana </i>
                                                    </li>
                                                    <li class="precio_item"> 
                                                        <i> acceso a las clases 5 veces por semana</i>
                                                    </li> 
                                                </ul>           
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </section> 

                </div>
            </section> 

        </main>


        <footer>

            <div class="social-icons-container">
                <a href="#" class="social-icon"><i class="bi bi-instagram"></i></a>
                <a href="#" class="social-icon"><i class="bi bi-facebook"></i></a>
                <a href="#" class="social-icon"><i class="bi bi-twitter"></i></a>

            </div>
            <div class="copy">
                <span class="copyright" >&copy; 2022 Todos los derechos reservados.</span>
            </div>
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>


