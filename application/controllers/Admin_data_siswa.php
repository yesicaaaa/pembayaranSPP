<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_data_siswa extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('admin_model', 'am');
  }

  public function index()
  {
    $data = [
      'user'  => $this->db->get_where('petugas', ['email' => $this->session->userdata('email')])->row_array(),
      'kelas' => $this->db->get('kelas')->result_array(),
      'spp'   => $this->db->get('spp')->result_array(),
      'title' => 'Data Siswa | SMK BPI',
      'css'   => 'assets/css/side-navbar.css'
    ];

    if ($this->input->post('submit')) {
      $data['keyword'] = $this->input->post('keyword');
      $this->session->set_userdata('keyword', $data['keyword']);
    } else {
      $data['keyword'] = $this->session->userdata('keyword');
    }

    //pagination
    $config['base_url'] = 'http://localhost/pembayaranSPP/admin_data_siswa/index/';
    $this->db->like('nama', $data['keyword']);
    $this->db->from('siswa');
    $config['total_rows'] = $this->db->count_all_results();
    $data['total_rows'] = $config['total_rows'];
    $config['per_page'] = 5;

    $this->pagination->initialize($config);

    $data['start'] = $this->uri->segment(3);

    $start = ($data['start'] > 0) ? $data['start'] : 0;
    $data['siswa'] = $this->am->getDataSiswa($config['per_page'], $start, $data['keyword']);

    if (!$this->input->post('submit')) {
      $this->form_validation->set_rules('nisn', 'NISN', 'required|max_length[10]|trim');
      $this->form_validation->set_rules('nis', 'NIS', 'required|max_length[10]|trim');
      $this->form_validation->set_rules('nama', 'Nama', 'required');
      $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
      $this->form_validation->set_rules('id_kelas', 'Kelas', 'required');
      $this->form_validation->set_rules('alamat', 'Alamat', 'required');
      $this->form_validation->set_rules('id_spp', 'SPP', 'required');
      $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[6]|matches[password2]');
      $this->form_validation->set_rules('password2', 'Confirm Password', 'required|trim|min_length[6]|matches[password1]');
    }

    if ($this->form_validation->run() == false) {
      $this->load->view('templates_admin/header', $data);
      $this->load->view('templates_admin/side-navbar', $data);
      $this->load->view('admin/data-siswa', $data);
      $this->load->view('templates_admin/footer', $data);
    } else {
      $this->am->addDataSiswa();
      $this->session->set_flashdata('message', '<div class="alert alert-success" 
          role="alert">Siswa berhasil ditambahkan!</div>');
      redirect('admin_data_siswa');
    }
  }

  public function deleteSiswa($nisn)
  {
    $this->am->deleteSiswa($nisn);
    $this->session->set_flashdata('message', '<div class="alert alert-success" 
          role="alert">Siswa berhasil dihapus!</div>');
    redirect('admin_data_siswa');
  }

  public function getSiswaRow()
  {
    $nisn = $this->input->post('nisn');
    $row = $this->db->get_where('siswa', ['nisn' => $nisn])->row_array();
    echo json_encode($row);
  }

  public function editDataSiswa()
  {
    $data = [
      'user'  => $this->db->get_where('petugas', ['email' => $this->session->userdata('email')])->row_array(),
      'kelas' => $this->db->get('kelas')->result_array(),
      'spp'   => $this->db->get('spp')->result_array(),
      'title' => 'Data Siswa | SMK BPI',
      'css'   => 'assets/css/side-navbar.css'
    ];

    if ($this->input->post('submit')) {
      $data['keyword'] = $this->input->post('keyword');
      $this->session->set_userdata('keyword', $data['keyword']);
    } else {
      $data['keyword'] = $this->session->userdata('keyword');
    }

    //pagination
    $config['base_url'] = 'http://localhost/pembayaranSPP/admin_data_siswa/index/';
    $this->db->like('nama', $data['keyword']);
    $this->db->from('siswa');
    $config['total_rows'] = $this->db->count_all_results();
    $data['total_rows'] = $config['total_rows'];
    $config['per_page'] = 5;

    $this->pagination->initialize($config);

    $data['start'] = $this->uri->segment(3);

    $start = ($data['start'] > 0) ? $data['start'] : 0;
    $data['siswa'] = $this->am->getDataSiswa($config['per_page'], $start, $data['keyword']);

    if (!$this->input->post('submit')) {
      $this->form_validation->set_rules('nisn', 'NISN', 'required|max_length[10]|trim');
      $this->form_validation->set_rules('nis', 'NIS', 'required|max_length[10]|trim');
      $this->form_validation->set_rules('nama', 'Nama', 'required');
      $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
      $this->form_validation->set_rules('id_kelas', 'Kelas', 'required');
      $this->form_validation->set_rules('alamat', 'Alamat', 'required');
      $this->form_validation->set_rules('id_spp', 'SPP', 'required');
    }

    if ($this->form_validation->run() == false) {
      $this->load->view('templates_admin/header', $data);
      $this->load->view('templates_admin/side-navbar', $data);
      $this->load->view('admin/data-siswa', $data);
      $this->load->view('templates_admin/footer', $data);
    } else {
      $this->am->editDataSiswa();
      $this->session->set_flashdata('message', '<div class="alert alert-success" 
          role="alert">Siswa berhasil ditambahkan!</div>');
      redirect('admin_data_siswa');
    }
  }

  public function refresh()
  {
    $this->session->unset_userdata('keyword');
    redirect('admin_data_siswa');
  }
}