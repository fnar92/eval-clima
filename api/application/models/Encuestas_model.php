<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Encuestas_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('preguntas_model');
        
    }
    
    public function iniciar() {
        $this->db->select('e.*');
        $this->db->from('encuesta e');
        $this->db->where('e.borrado', 0);
        $this->db->where('DATE(now()) BETWEEN DATE(e.fecha_inicio) AND DATE(e.fecha_fin)');
        $encuestas=$this->db->get()->result();
        foreach ($encuestas as $e) {
            if($e->id_estatus_encuesta==='2'){
                $this->db->where('id_encuesta', $e->id_encuesta);
                $this->db->set('id_estatus_encuesta', 3);
                $this->db->update('encuesta');
                $this->ordenaEncuesta($e->id_encuesta);
            }
            /*if($e->id_estatus_encuesta==='1'||$e->id_estatus_encuesta==='2'){
                $evals= $this->getEvaluados($e->id_encuesta);
                $detalle= $this->getEncuestaDetalle($e->id_encuesta);
                if(count($detalle)>0&&count($evals)>0){
                    $this->db->where('id_encuesta', $e->id_encuesta);
                    $this->db->set('id_estatus_encuesta', 3);
                }
            }*/
            
        }
        
        $this->db->select('e.*');
        $this->db->from('encuesta e');
        $this->db->where('e.borrado', 0);
        $this->db->where('DATE(now()) > DATE(e.fecha_fin)');
        $encuestas=$this->db->get()->result();
        foreach ($encuestas as $e) {
            if($e->id_estatus_encuesta==='3'){
                $this->db->where('id_encuesta', $e->id_encuesta);
                $this->db->set('id_estatus_encuesta', 4);
                $this->db->update('encuesta');
            }
            /*if($e->id_estatus_encuesta==='1'||$e->id_estatus_encuesta==='2'){
                $evals= $this->getEvaluados($e->id_encuesta);
                $detalle= $this->getEncuestaDetalle($e->id_encuesta);
                if(count($detalle)>0&&count($evals)>0){
                    $this->db->where('id_encuesta', $e->id_encuesta);
                    $this->db->set('id_estatus_encuesta', 3);
                }
            }*/
            
        }
        return true;
    }
    
    public function getEvaluados($id) {
        $this->db->select('i.*, ei.id_institucion_encuesta, e.id_encuesta, e.id_estatus_encuesta');
        $this->db->where('i.borrado', 0);
        $this->db->where('ei.borrado', 0);
        $this->db->where('e.borrado', 0);
        $this->db->from('institucion i');
        $this->db->join('encuestas_instituciones ei', 'ei.id_institucion=i.id_institucion');
        $this->db->join('encuesta e', 'ei.id_encuesta=e.id_encuesta');
        $this->db->where('e.id_encuesta', $id);
        return $this->db->get()->result();
        //return $this->db->last_query();
    }
    
    public function getEncuestas() {
        $this->db->where('borrado', 0);
        $this->db->order_by('id_encuesta');
        return $this->db->get('encuesta')->result();
    }
    
    public function ordenaEncuesta($id) {
        $this->db->where('borrado', 0);
        $this->db->where('id_encuesta', $id);
        $this->db->order_by('id_detalle_encuesta');
        $data=$this->db->get('encuesta_detalle')->result();
        
        $i=1;
        foreach ($data as $e) {
            $this->db->where('id_detalle_encuesta', $e->id_detalle_encuesta);
            $this->db->set('consecutivo', $i);
            $this->db->update('encuesta_detalle');
            $i++;
        }
        return true;
    }
    
    public function getEncuesta($id) {
        $this->db->where('borrado', 0);
        $this->db->where('id_encuesta', $id);
        return $this->db->get('encuesta')->row();
    }
    
    public function guardarEncuesta($data) {
        $this->db->insert('encuesta', $data);
        return $this->db->insert_id();
    }
    
    public function actualizarEncuesta($data) {
        if($data['borrado']==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_encuesta', $data['id_encuesta']);
        unset($data['id_encuesta']);
        return $this->db->update('encuesta', $data);
    }
    
    public function getEncuestaDetalle($idEncuesta) {
        $CI =& get_instance();
        $det=$this->getTemasEncuesta($idEncuesta);
        $temas=array();
        $return=array();
        foreach ($det as $tema) {
            $t=$CI->preguntas_model->getTema($tema->id_tema);
            $t->id_encuesta=$tema->id_encuesta;
            array_push($temas, $t);
        }
        foreach ($temas as $tema) {
            $preguntas=$this->getPreguntasEncuesta($tema->id_encuesta, $tema->id_tema);
            $pregu=array();
            foreach ($preguntas as $pregunta) {
                $pregunta->info=$CI->preguntas_model->getPregunta($pregunta->id_pregunta);
                $pregunta->escalas=$CI->preguntas_model->getEscalas();
                array_push($pregu, $pregunta);
            }
            $tema->preguntas=$pregu;
            array_push($return, $tema);
        }
        return $temas;
    }
    
    public function getTemasEncuesta($idEncuesta) {
        $this->db->where('id_encuesta', $idEncuesta);
        $this->db->where('borrado', 0);
        $this->db->group_by('id_tema');
        return $this->db->get('encuesta_detalle')->result();
    }
    
    public function getPreguntasEncuesta($idEncuesta, $idTema) {
        $this->db->where('id_encuesta', $idEncuesta);
        $this->db->where('id_tema', $idTema);
        $this->db->where('borrado', 0);
        $this->db->order_by('id_detalle_encuesta');
        $this->db->order_by('id_pregunta');
        return $this->db->get('encuesta_detalle')->result();
    }
    
    public function eliminarDetalleEncuesta($data) {
        $this->db->where('id_encuesta', $data['id_encuesta']);
        $this->db->where('id_tema', $data['id_tema']);
        $this->db->where('id_pregunta', $data['id_pregunta']);
        $this->db->where('borrado', 0);
        $this->db->set('borrado', 1);
        return $this->db->update('encuesta_detalle');
    }
    
    public function agregarDetalleEncuesta($data) {
        return $this->db->insert('encuesta_detalle', $data);
    }
    
    public function getCatalogoEstatus() {
        $this->db->where('borrado', 0);
        return $this->db->get('cat_estatus_encuestas')->result();
    }
    
    public function guardarEvaluadoEncuesta($data) {
        return $this->db->insert('encuestas_instituciones', $data);
    }
    
    public function actualizarEvaluadoEncuesta($data) {
        if(isset($data['borrado'])==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_encuesta', $data['id_encuesta']);
        $this->db->where('id_institucion', $data['id_institucion']);
        unset($data['id_encuesta']);
        unset($data['id_institucion']);
        return $this->db->update('encuestas_instituciones', $data);
    }
    
    public function guardarInstitucion($data) {
        $data['clave']= $this->randomPassword();
        $this->db->insert('institucion', $data);
        return $this->db->insert_id();
    }
    
    public function actualizarIntitucion($data) {
        if(isset($data['borrado'])==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_institucion', $data['id_institucion']);
        unset($data['id_institucion']);
        return $this->db->update('institucion', $data);
    }
    
    public function getInstitucion($id) {
        $this->db->where('id_institucion', $id);
        return $this->db->get('institucion')->row();
    }
    
    public function randomPassword() {
        $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
        $pass = array(); //remember to declare $pass as an array
        $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
        for ($i = 0; $i < 8; $i++) {
            $n = rand(0, $alphaLength);
            $pass[] = $alphabet[$n];
        }
        return implode($pass); //turn the array into a string
    }
}
    