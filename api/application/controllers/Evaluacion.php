<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header('Content-Type: application/json');
class Evaluacion extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function validarEvaluacion($idIns) {
        echo json_encode($this->evaluacion_model->validarEvaluacion($idIns));
    }
    
    public function guardarRespuestaEncuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['id_respuesta_encuesta'])){
            echo json_encode($this->evaluacion_model->actualizarRespuestaEncuesta($data));
        }else{
            $id=$this->evaluacion_model->guardarRespuestaEncuesta($data);
            echo json_encode($this->evaluacion_model->getRespuestaEncuesta($id));
        }
        
    }
    
    public function guardarRespuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        echo json_encode($this->evaluacion_model->guardarRespuesta($data));
    }
    
    public function obtenerEvaluacionesInstitucion() {
        $data = json_decode(file_get_contents('php://input'),true);
        echo json_encode($this->evaluacion_model->obtenerEvaluacionesInstitucion($data));
    }
    
    public function descargarResultados($e, $i) {
        $this->evaluacion_model->descargarResultados($e, $i);
    }
}
