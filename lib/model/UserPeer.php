<?php

class UserPeer extends BaseUserPeer
{
  public static function retrieveByEmail($email)
  {
    $c=new Criteria();
    $c->add(self::EMAIL,$email);
    return self::doSelectOne($c);
  }
  public static function createUser($email)
  {
    $user=new User();
    $user->setEmail($email);
    $user->save();
    return $user;
  }
  public static function getUserIdForOrder($email)
  {
    if($user=self::retrieveByEmail($email))
      return $user->getId();
    $user=self::createUser($email);
    return $user->getId();
  }
}
