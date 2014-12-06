<?php

 class Usuario{

     public function setPreguntas(){

            echo"<br/>
                    <br><br>
                    <div class=\"panel panel-warning\" >
                     </div>
                     <center><font size=5 color=red>I</font><font size=4 color=black font=family>ndica en cuales de las siguientes oraciones hay que utilizar</font> <font size=4 color=red>'much' / 'many' / 'little' / 'few' o 'a lot of':</font></center><br>
                       <div class=\"panel panel-warning\" >
                        </div><br>
                     <div class=\"col-sm-4\">
                     </div>
                      <div class=\"col-md-6\">


                         <div class=\"panel panel-primary\" >
                             <div class=\"panel-heading\" >
                                <h3 class=\"panel-title\" ><em>Cuestionario.</em></h3>
                             </div>
                             <div class=\"panel-body\">
                                 <form action='respuestas.jsp' method='POST' name = 'frmdo2' id = 'frmdo2' target = '_self'>";


            ECHO"<table class=\"table table-bordered\" align='center'>";


            $rs = mysql_query("SELECT MAX(id) AS id_maximo FROM cuestionario");
            if ($row = mysql_fetch_row($rs)) {
                $max = trim($row[0]);
            }
            $aleatorio = mt_rand(1, $max); //Genereamos aleatorio
            $usados[] = $aleatorio; //Guardamos el primero en un array ya que el primero no puede estar repetido

            for ($i = 1; $i <=10; $i++) {

                $aleatorio = mt_rand(1, $max); //Generamos aleatorio
                while(in_array($aleatorio,$usados)) { //buscamos que no este repetido
                    $aleatorio = mt_rand(1, $max);
                }

                $usados[] = $aleatorio;    //No esta repetido, luego guardamos el aleatorio

                $sql="Select * from cuestionario where id=$aleatorio";
                $consulta = mysql_query($sql)or die("Error de consulta $sql");
                $id_pregunta = mysql_result($consulta,0,'id');
                $pregunta = mysql_result($consulta,0,'pregunta');
                $respuesta = mysql_result($consulta,0,'respuesta');
                ECHO" <tr><td>$i-.<input type=hidden name=id$i value=$id_pregunta></td><td>$pregunta</td><td><input type=hidden name=res2$i value=$respuesta>
                                  <select name=res$i>
                                  <option value=\"nulo\">Selecciona</option>
                                  <option value=\"much\">much</option>
                                  <option value=\"many\">many</option>
                                  <option value=\"little\">little</option>
                                  <option value=\"few\">few</option>
                                  <option value=\"a lot of\">a lot of</option>
                                  </select>
                                  </td></tr>";


            }

            echo"     <tr><td colspan=3 align=center><input type='submit' value='Envíar' class=\"btn btn-primary\" ></td></tr>
                                      </table>
                                 </form>
                                 <br/><center><div id = 'msg'></div></center></div>

                             </div>
                         </div>
                      </div>
                      </div>";





}


 }

?>