<?php

/**
 * main actions.
 *
 * @package    pizzaorder
 * @subpackage main
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class mainActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    if($request->isMethod('post')){
      $success=PizzaOrderPeer::createOrder($request->getParameter('email'),
                             $request->getParameter('name'),
                             $request->getParameter('invitees'));
      if($success)
        $this->setTemplate('orderSuccess');
    }
  }
  public function executeGetIngredientJson(sfWebRequest $request)
  {
    $ingredients=IngredientPeer::getIngredientArray();
    return $this->renderText(json_encode($ingredients));
  }
  
  public function executeView(sfWebRequest $request)
  {
    $this->order=$this->getRoute()->getObject();
  }
}
