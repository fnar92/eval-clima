<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header('Content-Type: application/json');
class Encuestas extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function iniciar() {
        echo json_encode($this->encuestas_model->iniciar());
    }
    
    public function getEncuestas() {
        echo json_encode($this->encuestas_model->getEncuestas());
    }
    
    public function ordenaEncuesta($id) {
        echo json_encode($this->encuestas_model->ordenaEncuesta($id));
    }
    public function getEncuesta($id) {
        echo json_encode($this->encuestas_model->getEncuesta($id));
    }
    
    public function guardarEncuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['id_encuesta'])){
            echo json_encode($this->encuestas_model->actualizarEncuesta($data));
        }else{
            $id=$this->encuestas_model->guardarEncuesta($data);
            echo json_encode($this->encuestas_model->getEncuesta($id));
        }
    }
    
    public function getEncuestaDetalle($id) {
        echo json_encode($this->encuestas_model->getEncuestaDetalle($id));
    }
    
    public function eliminarDetalleEncuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        echo json_encode($this->encuestas_model->eliminarDetalleEncuesta($data));
    }
    
    public function agregarDetalleEncuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        echo json_encode($this->encuestas_model->agregarDetalleEncuesta($data));
    }
    
    public function getCatalogoEstatus() {
        echo json_encode($this->encuestas_model->getCatalogoEstatus());
    }
    
    public function getEvaluados($idEncuesta) {
        echo json_encode($this->encuestas_model->getEvaluados($idEncuesta));
    }
    
    public function guardarEvaluadoEncuesta() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['id_encuesta'])&&isset($data['id_institucion'])&&isset($data['id_institucion_encuesta'])){
            echo json_encode($this->encuestas_model->actualizarEvaluadoEncuesta($data));
        }else{
            echo json_encode($this->encuestas_model->guardarEvaluadoEncuesta($data));
        }
    }
    
    public function guardarInstitucion() {
        $data = json_decode(file_get_contents('php://input'),true);
        if(isset($data['id_institucion'])){
            echo json_encode($this->encuestas_model->actualizarInstitucion($data));
        }else{
            $id=$this->encuestas_model->guardarInstitucion($data);
            echo json_encode($this->encuestas_model->getInstitucion($id));
        }
    }
    
}
