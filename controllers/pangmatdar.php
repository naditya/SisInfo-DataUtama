<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Agama controller
 *
 * @package App
 * @category Controller
 * @author niko aditya
 */
class Pangmatdar extends Admin_Controller
{
	/**
	 * Constructor
	 */
    protected $_uid;
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('tree');
        $this->_uid = $this->auth->userid();
	}
	
	public function index()
	{

        $identity = $this->mgeneral->getAll(tt_pangdar, $order_field="id", $order_tipe="asc");

        $this->data['data_pangdar'] = $identity;
		$this->template->build('datautamas/data_pangdar/index');
	}


    public function form($idx = null)
	{
		$result = array();
        $encode = base64_decode($idx);

      //  $personil = $this->mgeneral->getAll('tr_personil');

        if(!empty($encode) and isset($encode))
            $result['data_pangdar'] = $this->mgeneral->getrow(array('id'=>$encode),'tt_pangdar');


        $result['nama_pangdar']  = $personil;
        $result['created_by']   = $this->_uid;
        $result['created_date'] = date('Y-m-d');

        $this->data['data'] = $result;
        $this->template->build('datautamas/data_pangdar/form');

	}
}
