<?php

class Portfolio extends DataObject {

    private static $db = [
      'CompanyName' => 'Varchar',
      'Initial' => 'Text'
    ];

    private static $has_one = [
      'CompanyImage' => 'Image'
    ];


    private static $summary_fields = [
        'GridThumbnail' => '',
        'CompanyName' => 'CompanyName',
        'Initial' => 'Initial'
      ];

    public function getGridThumbnail() {
      if($this->CompanyImage()->exists()) {
        return
      $this->CompanyImage()->SetWidth(100);
      }

    return ('no image');
  }

}
