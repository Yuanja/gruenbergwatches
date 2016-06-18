<?php
class ControllerInformationStory extends Controller {
	public function index() {
		//$this->load->language('common/search');
		//$data['text_search'] = $this->language->get('text_search');
		
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$this->response->setOutput($this->load->view('information/story', $data));
	}
}