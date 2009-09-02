<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="http://bocoup.com/favicon.ico" />
    <!--[if lt IE 8]><link rel="stylesheet" href="/pizza_real/css/ie.css" type="text/css" media="screen, projection" /><![endif]-->
  </head>
  <body>
      <div class="container">
      <?php echo $sf_content ?>
    </div>
      <script type="text/javascript">
  $(document).ready(function(){
    $("#startForm").validate();
  });
  </script>
  </body>
</html>
