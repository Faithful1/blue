<?php

class PortfolioPage extends Page {

}

class PortfolioPage_Controller extends Page_Controller {

    public function getPortfolio() {
     return Portfolio::get();
   }

}
