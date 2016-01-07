<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * catpasal controller
 *
 * @package App
 * @category Admin_Controller
 * @author niko aditya
 */
class Catpasal extends Admin_Controller
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

        $identity = $this->mgeneral->getAll(tt_catpasal, $order_field="id", $order_tipe="asc");

        $this->data['data_catpasal'] = $identity;
		      $this->template->build('datautamas/data_catpasal/index');
	}


    public function form($idx = null)
	{
		$result = array();
        $encode = base64_decode($idx);

      //  $personil = $this->mgeneral->getAll('tr_personil');

        if(!empty($encode) and isset($encode))
            $result['data_catpasal'] = $this->mgeneral->getrow(array('id'=>$encode),'tt_catpasal');


        $result['nama_catpasal']     = $personil;
        $result['created_by']   = $this->_uid;
        $result['created_date'] = date('Y-m-d');

        $this->data['data'] = $result;
        $this->template->build('datautamas/data_catpasal/form');

	}
}


/* End of file role.php */
/* Location: ./application/modules/acl/controllers/role.php */
