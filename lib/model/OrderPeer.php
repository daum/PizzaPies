<?php

class OrderPeer extends BaseOrderPeer
{
  public static function createOrder($email,$name,$invitees)
  {
    $userId=UserPeer::getUserIdForOrder($email);
    
    $order=new Order();
    $order->setName($name);
    $order->setTimeOpen(time());
    $order->setUserId($userId);
    return $order->save();    
    
  }
}
