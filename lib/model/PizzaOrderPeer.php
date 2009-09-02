<?php

class PizzaOrderPeer extends BasePizzaOrderPeer
{
  public static function createOrder($email,$name,$invitees)
  {
    $userId=UserPeer::getUserIdForOrder($email);
    
    $order=new PizzaOrder();
    $order->setName($name);
    $order->setTimeOpen(time());
    $order->setUserId($userId);
    return $order->save();    
    
  }
}
