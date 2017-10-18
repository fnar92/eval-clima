<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Preguntas_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function getPreguntas() {
        $return=array();
        $temas= $this->getTemas();
        foreach ($temas as $tema) {
            $tema->preguntas= $this->preguntasTema($tema->id_tema);
            array_push($return, $tema);
        }
        return $return;
    }
    
    public function getTemas() {
        $this->db->where('borrado', 0);
        return $this->db->get('temas')->result();
    }
    
    public function getTema($id) {
        $this->db->where('borrado', 0);
        $this->db->where('id_tema', $id);
        return $this->db->get('temas')->row();
    }
    
    public function getPregunta($id) {
        $this->db->where('borrado', 0);
        $this->db->where('id_pregunta', $id);
        return $this->db->get('preguntas')->row();
    }
    
    public function getEscalas() {
        $this->db->where('borrado', 0);
        return $this->db->get('escalas')->result();
    }
    public function preguntasTema($idTema) {
        $this->db->where('id_tema', $idTema);
        $this->db->where('borrado', 0);
        return $this->db->get('preguntas')->result();
    }
    
    public function guardarTema($data) {
        return $this->db->insert('temas', $data);
    }
    
    public function actualizarTema($data) {
        if($data['borrado']==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_tema', $data['id_tema']);
        unset($data['id_tema']);
        return $this->db->update('temas', $data);
    }
    
    public function guardarPregunta($data) {
        return $this->db->insert('preguntas', $data);
    }
    
    public function actualizarPregunta($data) {
        if($data['borrado']==='0'){
            unset($data['borrado']);
        }
        $data['fecha_modificacion']=date("Y-m-d H:i:s");
        $this->db->where('id_pregunta', $data['id_pregunta']);
        $this->db->where('id_tema', $data['id_tema']);
        unset($data['id_pregunta']);
        unset($data['id_tema']);
        $this->db->update('preguntas', $data);
        return $this->db->last_query();
    }
}
    