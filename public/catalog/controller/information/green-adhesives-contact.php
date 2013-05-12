<?php  
class ControllerInformationGreenAdhesivesContact extends Controller {
	public function index() {
    	$this->language->load('information/green-adhesives');

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
			'href'      => $this->url->link('information/green-adhesives-contact'),      	
        	'separator' => $this->language->get('text_separator')
      	);	

      	$contact = $this->model_catalog_information->getInformation('12');

      	$this->data['contact'] = html_entity_decode($contact['description'], ENT_QUOTES, 'UTF-8');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/green-adhesives-contact.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/green-adhesives-contact.tpl';
		} else {
			$this->template = 'default/template/information/green-adhesives-contact.tpl';
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