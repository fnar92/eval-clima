<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Evaluacion_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('preguntas_model');
        $this->load->model('encuestas_model');
    }
    
    public function validarEvaluacion($id) {
        $this->db->select('ei.*, e.*, i.*');
        $this->db->from('encuestas_instituciones ei');
        $this->db->join('encuesta e', 'ei.id_encuesta=e.id_encuesta');
        $this->db->join('institucion i', 'i.id_institucion=ei.id_institucion');
        $this->db->where('i.id_institucion', $id);
        $this->db->where('i.borrado', 0);
        $this->db->where('ei.borrado', 0);
        $this->db->where('e.borrado', 0);
        $this->db->where('DATE(now()) BETWEEN DATE(e.fecha_inicio) AND DATE(e.fecha_fin)');
        $this->db->where('e.id_estatus_encuesta', 3);
        return $this->db->get()->result();
    }
    
    public function guardarRespuestaEncuesta($data) {
        $this->db->insert('respuestas_encuestas', $data);
        return $this->db->insert_id();
    }
    
    public function getRespuestaEncuesta($id) {
        $this->db->where('borrado', 0);
        $this->db->where('id_respuesta_encuesta', $id);
        return $this->db->get('respuestas_encuestas')->row();
    }
    
    public function actualizarRespuestaEncuesta($data) {
        if(isset($data['borrado'])==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_respuesta_encuesta', $data['id_respuesta_encuesta']);
        $this->db->where('id_encuesta', $data['id_encuesta']);
        $this->db->where('id_institucion', $data['id_institucion']);
        unset($data['id_respuesta_encuesta']);
        unset($data['id_encuesta']);
        unset($data['id_institucion']);
        $this->db->update('respuestas_encuestas', $data);
        return true;
    }
    
    public function guardarRespuesta($data) {
        $this->db->where('id_respuesta_encuesta', $data['id_respuesta_encuesta']);
        $this->db->where('id_detalle_encuesta', $data['id_detalle_encuesta']);
        $this->db->where('id_encuesta', $data['id_encuesta']);
        $this->db->where('id_institucion', $data['id_institucion']);
        $this->db->where('id_tema', $data['id_tema']);
        $this->db->where('id_pregunta', $data['id_pregunta']);
        $res= $this->db->get('respuestas');
        if($res->num_rows()>0){
            $res=$res->row();
            $this->db->where('id_respuesta_encuesta', $data['id_respuesta_encuesta']);
            $this->db->where('id_detalle_encuesta', $data['id_detalle_encuesta']);
            $this->db->where('id_encuesta', $data['id_encuesta']);
            $this->db->where('id_institucion', $data['id_institucion']);
            $this->db->where('id_tema', $data['id_tema']);
            $this->db->where('id_pregunta', $data['id_pregunta']);
            $this->db->where('id_respuesta', $res->id_respuesta);
            $this->db->set('id_escala', $data['id_escala']);
            $this->db->update('respuestas');
            return $this->db->last_query();
        }else if($res->num_rows()===0){
            $this->db->insert('respuestas', $data);
            return $this->db->last_query();
        }
    }
    
    public function obtenerEvaluacionesInstitucion($data) {
        $e=$data['id_encuesta'];
        $i=$data['id_institucion'];
        $this->db->where('borrado', 0);
        $this->db->where('id_encuesta', $e);
        $this->db->where('id_institucion', $i);
        $this->db->order_by('id_respuesta_encuesta');
        $res=$this->db->get('respuestas_encuestas')->result();
        $return=array();
        
        foreach ($res as $r) {
            $d['id_respuesta_encuesta']=$r->id_respuesta_encuesta;
            $r->respuestas= $this->getRespuestas($d);
            array_push($return, $r);
        }
        return $return;
    }
    
    public function getRespuestas($data) {
        $this->db->select('r.*, d.consecutivo');
        $this->db->where('r.borrado', 0);
        $this->db->where('r.id_respuesta_encuesta', $data['id_respuesta_encuesta']);
        $this->db->where('r.id_pregunta=d.id_pregunta');
        $this->db->from('respuestas r');
        $this->db->join('respuestas_encuestas re', 're.id_respuesta_encuesta=r.id_respuesta_encuesta');
        $this->db->join('encuesta_detalle d', 'd.id_encuesta=re.id_encuesta');
        //$this->db->get()->result();
        $this->db->order_by('d.consecutivo');
        $this->db->order_by('r.id_pregunta');
        //$this->db->order_by('r.id_respuesta');
        //return $this->db->last_query();
        return $this->db->get()->result();
    }
    
    public function descargarResultados($e, $i) {
        $data['id_encuesta']=$e;
        $data['id_institucion']=$i;
                
        $datos= $this->obtenerEvaluacionesInstitucion($data);
        $this->load->library('export_excel');
        $this->export_excel->to_excel($datos, 'test');
    }
}
    