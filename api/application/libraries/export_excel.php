<?php if (!defined('BASEPATH')) exit('No direct script access allowed');  

class export_excel{

    function to_excel($array, $filename) {
        header('Content-Disposition: attachment; filename='.$filename.'.xls');
        header('Content-type: application/force-download');
        header('Content-Transfer-Encoding: binary');
        header('Pragma: public');
        print "\xEF\xBB\xBF"; // UTF-8 BOM
        
        /*$h = array();
        foreach($array as $row){
            foreach($row as $key=>$val){
                if(!in_array($key, $h)){
                    $h[] = $key;   
                }
            }
        }
        echo '<table><tr>';
        foreach($h as $key) {
            $key = ucwords($key);
            echo '<th style="border:1px #888 solid;background-color:#F00;color:white;">'.$key.'</th>';
        }
        echo '</tr>';

        foreach($array as $row){
            echo '<tr>';
            foreach($row as $val)
                $this->writeRow($val);   
        }
        echo '</tr>';
        echo '</table>';
        
        */
        $i=1;
        echo '<table>';
        echo '<tr>';
        echo '</tr>';
        echo '<tr style="border:1px #888 solid;color:#555;">';
        echo '<td>NO.</td>';
        echo '<td>DATOS.</td>';
        echo '<td><table>';
            echo '<tr>';
        $aux=$array;
        $x=1;
        foreach ($aux as $p) {
            foreach ($p->respuestas as $r) {
                echo '<td>'.$x.'</td>';
                $x++;
            }
            break;
        }
         echo '</tr>';
            echo '</table></td>';
        echo '</tr>';
        
        
        
        foreach ($array as $p) {
            echo '<tr>';
            echo '<td>'.$i.'</td>';
            echo '<td>'.$p->genero.'</td>';
            echo '<td>';
            echo '<table>';
            echo '<tr>';
            
            foreach ($p->respuestas as $r) {
                echo '<td>'.$r->id_escala.'</td>';
            }
            echo '</tr>';
            echo '</table>';
            echo '</td>';
            echo '</tr>';
            $i++;
        }
        echo '</table>';

    }

    function writeRow($val) {
        echo '<td style="border:1px #888 solid;color:#555;">'.$val.'</td>';              
    }

}
?>