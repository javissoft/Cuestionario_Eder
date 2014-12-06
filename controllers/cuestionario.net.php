<?php

session_start();

if(isset($_SESSION['sesionUser'])){


$usuario2 = new Usuario();


    $id = $_COOKIE['id'];

    $sql = "SELECT * FROM Usuario WHERE id = $id";

    $consulta = mysql_query($sql)or die("Error de consulta $sql");

    echo"<div class=\"container theme-showcase\" role=\"main\">";

    $nom_usuario = mysql_result($consulta, 0, 'User');


    echo"<div class=\"alert alert-info\" role=\"alert\">";
    echo"<div class='welcome'><h3>Bienvenido: $nom_usuario  <center><a href='index.php' >Salir</a></center></h3></div>";
    echo"</div>";



$variables= array('metodo'=>$usuario2->setPreguntas());

/*nombre del archivo a llamar y manda las variables*/
view('cuestionario',$variables);

}
else{
    echo"<script>alert(' No ha iniciado sesión.');
    location.href = 'login.asp';
</script>";
}

