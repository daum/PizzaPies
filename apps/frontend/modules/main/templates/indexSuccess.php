<hr class="bigspace" />
<div class="prepend-8">
  <h1>Start an order</h1>
  <form id="startForm" name="" action="<?php echo url_for('main/index'); ?>" method="post">
    <label class="span-3">Your Email</label>    <input type="text" name="email" class="span-5 large required email" id="" minlength="1" />
    <hr class="space" />
    <label class="span-3">Order Name</label>    <input type="text" name="name"  class="span-5 large required" id="" />
    <hr class="space" />
    <label class="span-3">Invite people</label> <textarea name="invitees"       class="span-5 large"></textarea>
    <hr class="space" />
    <input class="push-6 span-2" type="submit" value="Yum &rarr;" />
  </form>
</div>

