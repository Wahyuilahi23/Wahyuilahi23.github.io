<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	function __construct()
	    {
	        // this is your constructor
	        parent::__construct();
	        $this->load->helper('form');
	        $this->load->helper('url');
	    }

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function Insert()
	{

		if(isset($_POST['add'])) {

        	$this -> load -> database();
			  	$dataInput = array('KodeBuku'=> $this ->input->post('KodeBuku') ,
		                	'NamaBuku'=> $this ->input->post('NamaBuku'),
		                  'NamaPengarang' =>$this ->input->post('NamaPengarang'),
											'Penerbit' => $this ->input->post('Penerbit'),
											'TahunTerbit' => $this ->input->post('TahunTerbit'));
                       $this->db->insert('databuku',$dataInput);
											 redirect('Welcome/Show');
				}


				// var_dump($query);
				// if ($query) {
				//     redirect('/user', 'refresh');
				// }
				// else {
				//     echo "ada yang salah";
				// }

		$this -> load -> view('Insert');
	}


	public function Delete($id = NULL)

	{
	$this -> load -> database();
  $this->db->where('KodeBuku',$id);
  $this->db->delete('databuku');
						 redirect('Welcome/Show');

  }




	public function Show()
	{
		$this -> load -> database();
	  $data['databuku'] =	$this->db->get('databuku')->result();
		$this->load->view('View',$data);
	}

}
