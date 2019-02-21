<?php

class ContactPage extends Page {
    private static $has_one = array (
        'Photo' => 'Image',
        'Brochure' => 'File'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        //...

        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
        $fields->addFieldToTab('Root.Attachments', $brochure = UploadField::create('Brochure','Certificate, optional (PDF only)'));

        $photo->setFolderName('travel-photos');
        $brochure
            ->setFolderName('company-certificate')
            ->getValidator()->setAllowedExtensions(array('pdf'));

        return $fields;
    }
}

class ContactPage_Controller extends Page_Controller {

}
