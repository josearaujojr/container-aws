<?php
header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Date in the past
?><!DOCTYPE html>
<html>
    <H1>
        Minha APP em Dockerzeira
        <br>
        <?php include("get-index-meta-data.php"); ?>
    </H1>
</html>