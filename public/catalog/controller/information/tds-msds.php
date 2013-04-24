<?php  
class ControllerInformationTdsMsds extends Controller {
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('information/tds-msds', '', 'SSL');

			$this->redirect($this->url->link('account/login', '', 'SSL'));
		}
		
    	$this->language->load('information/tds-msds');

    	$this->load->model('catalog/information');
 
		$this->document->setTitle($this->language->get('heading_title')); 

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/tds-msds'),      	
        	'separator' => $this->language->get('text_separator')
      	);	

      	$data = $this->model_catalog_information->getInformation('7');

      	$this->data['description'] = html_entity_decode($data['description'], ENT_QUOTES, 'UTF-8');

      	$this->data['heading_title'] = $this->language->get('heading_title');
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/tds-msds.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/tds-msds.tpl';
		} else {
			$this->template = 'default/template/information/tds-msds.tpl';
		}

		$this->document->addScript('catalog/view/javascript/jquery/tabs.js');
		
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
}
?>