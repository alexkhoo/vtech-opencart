<?php  
class ControllerInformationTellAFriend extends Controller {
	private $error = array(); 

	public function index() {
    	$this->language->load('information/tell-a-friend');
 
		$this->document->setTitle($this->language->get('heading_title')); 

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->request->post['your_friends_email']);
	  		$mail->setFrom($this->request->post['your_email']);
	  		$mail->setSender($this->request->post['your_name']);
	  		$mail->setSubject(" ".$this->request->post['your_name']."  would like to share with you");
	  		$msg_body = "Hi There!\n\nYour friend ".$this->request->post['your_name']."  would like to share our website with you. Check it out right now at\n".$this->request->post['product_url']." !\n\n-------------------------------------\n\n".$this->request->post['message'];
	  		$mail->setText(strip_tags(html_entity_decode($msg_body, ENT_QUOTES, 'UTF-8')));
      		$mail->send();

	  		$this->redirect($this->url->link('information/tell-a-friend/success'));
    	}

    	$this->data['hidden_url'] = $this->url->link('product/product') . '&path=' . $this->request->get['path'] . '&product_id=' .$this->request->get['product_id'];

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/tell-a-friend'),      	
        	'separator' => $this->language->get('text_separator')
      	);	
		
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	if (isset($this->error['your_name'])) {
    		$this->data['error_your_name'] = $this->error['your_name'];
		} else {
			$this->data['error_your_name'] = '';
		}
		
		if (isset($this->error['your_email'])) {
			$this->data['error_your_email'] = $this->error['your_email'];
		} else {
			$this->data['error_your_email'] = '';
		}

		if (isset($this->error['your_friends_email'])) {
			$this->data['error_your_friends_email'] = $this->error['your_friends_email'];
		} else {
			$this->data['error_your_friends_email'] = '';
		}	
		
 		if (isset($this->error['captcha'])) {
			$this->data['error_captcha'] = $this->error['captcha'];
		} else {
			$this->data['error_captcha'] = '';
		}

		if (isset($this->request->get['path']) && isset($this->request->get['product_id'])) {
			$this->data['action'] = $this->url->link('information/tell-a-friend', '&path=' . $this->request->get['path'] . '&product_id=' . $this->request->get['product_id']);
		} else {
			$this->data['action'] = $this->url->link('information/tell-a-friend');
		}		

		if (isset($this->request->post['your_name'])) {
			$this->data['your_name'] = $this->request->post['your_name'];
		} else {
			$this->data['your_name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['your_email'])) {
			$this->data['your_email'] = $this->request->post['your_email'];
		} else {
			$this->data['your_email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['your_friends_email'])) {
			$this->data['your_friends_email'] = $this->request->post['your_friends_email'];
		} else {
			$this->data['your_friends_email'] = '';
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
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/tell-a-friend.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/tell-a-friend.tpl';
		} else {
			$this->template = 'default/template/information/tell-a-friend.tpl';
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
		$this->language->load('information/tell-a-friend');

		$this->document->setTitle($this->language->get('heading_title')); 

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/tell-a-friend'),
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
    	if ((utf8_strlen($this->request->post['your_name']) < 3) || (utf8_strlen($this->request->post['your_name']) > 32)) {
      		$this->error['your_name'] = $this->language->get('error_your_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['your_email'])) {
      		$this->error['your_email'] = $this->language->get('error_your_email');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['your_friends_email'])) {
      		$this->error['your_friends_email'] = $this->language->get('error_your_friends_email');
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