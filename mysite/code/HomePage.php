<?php

class HomePage extends Page {

	public function getCMSFields() {
			$fields = parent::getCMSFields();

			$PlansField = GridField::create(
					'Portfolio',
					'Portfolio',
				Portfolio::get(),
				GridFieldConfig_RecordEditor::create()
			);


			$fields->addFieldToTab('Root.Plans', $PlansField);

			return $fields;
		}

}

class HomePage_Controller extends Page_Controller {

	public function getPortfolio() {
		return Portfolio::get();
	}

	public function LatestPosts() {
		return BlogPost::get()->sort('PublishDate', 'DESC');
	}

	private static $allowed_actions = array('ContactForm');
	// $Form for template
	public function ContactForm() {
		// Create the fields to be filled note the data-validation fields which are
		// dealt with via jquery in the front end.
		$fields = new FieldList(
				TextField::create('Name')
					->setAttribute('placeholder', 'Name')
					->setAttribute('data-validation', 'length')
					->setAttribute('data-validation-length', 'min2')
					->setAttribute('class', 'form-control'),
				EmailField::create('Email')
					->setAttribute('placeholder', 'Email')
					->setAttribute('data-validation', 'email')
					->setAttribute('class', 'form-control emailform'),
				TextareaField::create('Message')
					->setAttribute('placeholder', 'Message')
					->setAttribute('class', 'form-control')
					->setAttribute('data-validation', 'length')
					->setAttribute('data-validation-length', 'min4')
					->setRows('5')
		);
		// create submit button, add classes
		$actions = new FieldList(
				FormAction::create('submit', 'Send Message')
					->setAttribute('class', 'btn btn-contactform')
		);
		// Define the required fields for PHP validation
		$required = new RequiredFields(array(
        'Name', 'Email', 'Message'
    ));
		// Collate info, set ID of form and return the fields
		$contactform = new Form($this, 'ContactForm', $fields, $actions, $required);
		$contactform->setAttribute('id', 'contact-form');
		// Scrict enforce POST as FormMethod
		$contactform->setFormMethod('POST', true);
		return $contactform;
	}


	// Submit function for SendGrid. No fall-back.
	public function submit($data, $form) {
		// Generating SendGrid digestable email based on form input
		$from = new SendGrid\Email(null, "noreply@yatuequity.com.au");
		$subject = "yatuequity.com - Contact Message from {$data['Name']}";
		$to = new SendGrid\Email(null, "ken.yatuequityltd@yahoo.com");

		// Create the message
		$messageBody = "
			<p>Hi yatuequity - You've received a new message on your HomePage contact form:</p>
			<p><strong>From:</strong> {$data['Name']}</p>
			<p><strong>Email:</strong> {$data['Email']}</p>
			<p><strong>Message:</strong> {$data['Message']}</p>
			<p style='border-top: 1px solid grey; padding-top: 20px;'>Lots of love, Red Door.</p>
		";

		// More sendgrid email digestion
		$content = new SendGrid\Content("text/html", $messageBody);
		$mail = new SendGrid\Mail($from, $subject, $to, $content);

		// SendGrid API - need to put key somewhere secure
		$sg = new \SendGrid($apiKey);

		//$response = $sg->client->_("suppression/bounces")->get();
		$response = $sg->client->mail()->send()->post($mail);

		// Below is to get SendGrid responses, for testing.
		// print $response->statusCode();

		// Return true or false based on response code
		if(http_response_code() == 200) {
			return true;
		} else {
			return false;
		}
	}
}
