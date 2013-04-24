<?php  
class ControllerInformationEnquiry extends Controller {
	private $error = array(); 

	public function index() {
    	$this->language->load('information/enquiry');
 
		$this->document->setTitle($this->language->get('heading_title')); 

		$this->load->model('catalog/product');

		if (!isset($this->session->data['mylist'])) {
			$this->session->data['mylist'] = array();
		}

		$this->data['mylist_products'] = array();
		$info = "";
	
		foreach ($this->session->data['mylist'] as $key => $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			if ($product_info) { 

				$info .= $product_info['name'];
				$info .= "<br />";
														
				$this->data['mylist_products'][] = array(
					'product_id' => $product_info['product_id'],
					'name'       => $product_info['name'],
					'href'       => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
				);
			} else {
				unset($this->session->data['mylist'][$key]);
			}
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->config->get('config_email'));
	  		$mail->setFrom($this->request->post['email']);
	  		$mail->setSender($this->request->post['name']);
	  		$mail->setSubject("Enquiry");
	  		$msg_body = "<table border='1' cellpadding='2' cellspacing='1'><tr><td>Name</td><td>:</td><td>" . $this->request->post['name'] . "</td></tr><tr><td>Email</td><td>:</td><td>" . $this->request->post['email'] . "</td></tr><tr><td>Contact Number</td><td>:</td><td>" . $this->request->post['contact_number'] . "</td></tr><tr><td>My List</td><td>:</td><td>" . $info . "</td></tr><tr><td>Comments or Enquiries</td><td>:</td><td>" . $this->request->post['message'] . "</td></tr></table>";
	  		$mail->setHtml($msg_body);
      		$mail->send();

	  		$this->redirect($this->url->link('information/enquiry/success'));
    	}

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/enquiry'),      	
        	'separator' => $this->language->get('text_separator')
      	);	
		
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	if (isset($this->error['name'])) {
    		$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}
 		if (isset($this->error['captcha'])) {
			$this->data['error_captcha'] = $this->error['captcha'];
		} else {
			$this->data['error_captcha'] = '';
		}

		if (isset($this->request->get['path']) && isset($this->request->get['product_id'])) {
			$this->data['action'] = $this->url->link('information/enquiry', '&path=' . $this->request->get['path'] . '&product_id=' . $this->request->get['product_id']);
		} else {
			$this->data['action'] = $this->url->link('information/enquiry');
		}		

		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {
			$this->data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['contact_number'])) {
			$this->data['contact_number'] = $this->request->post['contact_number'];
		} else {
			$this->data['contact_number'] = '';
		}
		
		if (isset($this->request->post['message'])) {
			$this->data['message'] = $this->request->post['message'];
		} else {
			$this->data['message'] = '';
		}

		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}		
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/enquiry.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/enquiry.tpl';
		} else {
			$this->template = 'default/template/information/enquiry.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render());		
	}

	public function success() {
		$this->language->load('information/enquiry');

		$this->document->setTitle($this->language->get('heading_title')); 

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/enquiry'),
        	'separator' => $this->language->get('text_separator')
      	);	
		
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_message'] = $this->language->get('text_message');

    	$this->data['button_continue'] = $this->language->get('button_continue');

    	$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success.tpl';
		} else {
			$this->template = 'default/template/common/success.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render()); 
	}
	
  	protected function validate() {
    	if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
      		$this->error['name'] = $this->language->get('error_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}

    	if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
      		$this->error['captcha'] = $this->language->get('error_captcha');
    	}
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  	  
  	}

	public function captcha() {
		$this->load->library('captcha');
		
		$captcha = new Captcha();
		
		$this->session->data['captcha'] = $captcha->getCode();
		
		$captcha->showImage();
	}	
}
?>