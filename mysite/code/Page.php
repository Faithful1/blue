<?php

class Page extends SiteTree {

	private static $db = array(
    'CustomMetaTitle' => 'Text'
	);

	private static $has_one = array(
    'OGImage' => 'Image',
    'TwitterImage' => 'Image'
	);

	public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab('Root.Main.Metadata', new TextField('CustomMetaTitle', $title = 'Meta Title'), $above = 'MetaDescription');
    $fields->addFieldToTab('Root.Main.Metadata', new UploadField('OGImage', $title = 'OG Image'), $above = 'MetaDescription');
    $fields->addFieldToTab('Root.Main.Metadata', new UploadField('TwitterImage', $title = 'Twitter Image'), $above = 'MetaDescription');

    return $fields;
  }
}
