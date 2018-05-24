<?php

class AboutPage extends Page {

}

class AboutPage_Controller extends Page_Controller {
	private static $allowed_actions = array('AboutForm');
	// $Form for template
	public function AboutForm() {
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
					->setAttribute('class', 'btn btn-aboutform')
		);
		// Define the required fields for PHP validation
		$required = new RequiredFields(array(
        'Name', 'Email', 'Message'
    ));
		// Collate info, set ID of form and return the fields
		$aboutform = new Form($this, 'AboutForm', $fields, $actions, $required);
		$aboutform->setAttribute('id', 'about-form');
		// Scrict enforce POST as FormMethod
		$aboutform->setFormMethod('POST', true);
		return $aboutform;
	}
	// Submit function for SendGrid. No fall-back.
	public function submit($data, $form) {
		// Generating SendGrid digestable email based on form input
		$from = new SendGrid\Email(null, "noreply@rallystudents.com");
		$subject = "RALLYSTUDENTS.COM - Contact Message from {$data['Name']}";
		$to = new SendGrid\Email(null, "sam@rallystudents.com");

		// Create the message
		$messageBody = "
			<p>Hi Rally - You've received a new message on your About Page contact form:</p>
			<p><strong>From:</strong> {$data['Name']}</p>
			<p><strong>Email:</strong> {$data['Email']}</p>
			<p><strong>Message:</strong> {$data['Message']}</p>
			<p style='border-top: 1px solid grey; padding-top: 20px;'>Lots of love, Rally.</p>
		";

		// More sendgrid email digestion
		$content = new SendGrid\Content("text/html", $messageBody);
		$mail = new SendGrid\Mail($from, $subject, $to, $content);

		// SendGrid API - need to put key somewhere secure
		$apiKey = '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';
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
