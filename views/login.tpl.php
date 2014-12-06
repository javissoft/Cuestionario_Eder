<?php

?>
<html>
    <head>

    </head>
    <body>

        <div class="col-sm-4">
        </div>
        <div class="col-sm-4">
            <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><em>NOTA: (*) Campos Obligatorios.</em></h3>
            </div>
            <div class="panel-body">
                <form action='mylogin.net' method='POST' name ='frmdo' id='frmdo' target = '_self'>
                    <table class="table table-bordered" align='center'>
                    <tr><td>*Usuario:</td></td><td><input type='text' name='user'  placeholder='Usuario' ></td></tr>
                    <tr><td>*Password:</td><td><input type='password' name='password'  placeholder='Contraseña'></td></tr>
                    <tr><td colspan=2 align=center><input type='submit' value='Iniciar' class="btn btn-default" ></td></tr>
                    </table>
                </form>
                <br/><center><div id='msg'></div></center></div>
        </div>




    </body>
</html>

