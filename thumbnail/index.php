<?php
define('THUMBNAIL',true);

$path = $_SERVER['REQUEST_URI'];

$map  = preg_match('/\/thumbnail\/([0-9]+)\/([0-9]+)\/(.+)\.(jpg|png|gif|jpeg)/',$path,$match);

if($map){
    $ThumbWidth = $match[1];
    $ThumbHeight = $match[2];
    $ImageLocation = $match[3].'.'.$match[4];

    require './timthumb.php';
    timthumb::start($ThumbWidth, $ThumbHeight, $ImageLocation);
}

exit();

?>