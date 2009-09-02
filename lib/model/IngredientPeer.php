<?php

class IngredientPeer extends BaseIngredientPeer
{
  public static function getIngredientArray()
  {
    $arr=array();
    $c=new Criteria();
    $c->addAscendingOrderByColumn(self::NAME);
    foreach(self::doSelectJoinCategory($c) as $i)
    {
      $arr[$i->getCategory()->getName()][$i->getId()]=$i->getName();
    }
    return $arr;
  }
}
