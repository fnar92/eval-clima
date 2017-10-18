<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header('Content-Type: application/json');
class Preguntas extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function getPreguntas() {
        echo json_encode($this->preguntas_model->getPreguntas());
    }
    
    public function guardarTema() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['preguntas'])){unset($data['preguntas']);}
        if(isset($data['id_tema'])){
            echo json_encode($this->preguntas_model->actualizarTema($data));
        }else{
            echo json_encode($this->preguntas_model->guardarTema($data));
        }
        
    }
    
    public function guardarPregunta() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['id_pregunta'])&&isset($data['id_tema'])){
            echo json_encode($this->preguntas_model->actualizarPregunta($data));
        }else{
            echo json_encode($this->preguntas_model->guardarPregunta($data));
        }
        
    }
}
