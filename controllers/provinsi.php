<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * provinsi controller
 *
 * @package App
 * @category Admin_Controller
 * @author niko aditya
 */
class Provinsi extends Admin_Controller
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

        $identity = $this->mgeneral->getAll(tt_provinsi, $order_field="id", $order_tipe="asc");

        $this->data['data_provinsi'] = $identity;
		      $this->template->build('datautamas/data_provinsi/index');
	}


    public function form($idx = null)
	{
		$result = array();
        $encode = base64_decode($idx);

      //  $personil = $this->mgeneral->getAll('tr_personil');

        if(!empty($encode) and isset($encode))
            $result['data_provinsi'] = $this->mgeneral->getrow(array('id'=>$encode),'tt_provinsi');


        $result['nama_provinsi']     = $personil;
        $result['created_by']   = $this->_uid;
        $result['created_date'] = date('Y-m-d');

        $this->data['data'] = $result;
        $this->template->build('datautamas/data_provinsi/form');

	}
}


/* End of file role.php */
/* Location: ./application/modules/acl/controllers/role.php */
