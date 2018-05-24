<?php

class Page_Controller extends ContentController {
  // private static $allowed_actions = array('McFoot');
  // // To deal with the Mailchimp Footer Forms
  // public function McFoot() {
  //   // No validation required for this form.
  //   $fields = new FieldList(
  //     LiteralField::create('EmailLabel','<label for="mce-EMAIL">Sign up for the <strong>Rally Beta</strong> coming soon</label>')
  //       ->setAttribute('for', 'mce-EMAIL'),
  //     EmailField::create('Email')
  //       ->setAttribute('placeholder', 'Email Address')
  //       ->setAttribute('name', 'EMAIL')
  //       ->setAttribute('class', 'email')
  //       ->setAttribute('id', 'mce-EMAIL'),
  //     TextField::create('TextField')
  //       ->setAttribute('name','b_d592b07be736db0947774b787_22e8a5ce04')
  //       ->setAttribute('tabindex','-1')
  //   );
  //   $actions = new FieldList(
  //     // custom submit classes
  //     FormAction::create('mcfootsubmit','Submit')
  //       ->setAttribute('name','subscribe')
  //       ->setAttribute('id','mc-embedded-subscribe')
  //       ->setAttribute('class','mc-button mc-foot-submit button')
  //   );
  //   // Create the form
  //   $mcfootform = new Form($this,'McFoot',$fields,$actions);
  //   // maybe a better way to apply all the attributes here
  //   $mcfootform->setAttribute('action','//rallystudents.us15.list-manage.com/subscribe/post?u=d592b07be736db0947774b787&id=22e8a5ce04');
  //   $mcfootform->setAttribute('name','mc-embedded-subscribe-form');
  //   // $mcfootform->setAttribute('id','mc-embedded-subscribe-form');
  //   $mcfootform->setAttribute('id','mc-foot');
  //   $mcfootform->setAttribute('class','validate');
  //   // Scrict POST method
  //   $mcfootform->setFormMethod('POST',true);
  //   // Return form via $McFoot
  //   return $mcfootform;
  // }
  // public function mcfootsubmit($data, $form) {
  //   // Return true or false based on response code
  //   if(http_response_code() == 200) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
