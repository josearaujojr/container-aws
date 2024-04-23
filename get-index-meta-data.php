<?php
  $urlRoot="http://169.254.169.254/latest/meta-data/";
  echo "InstanceId: " . file_get_contents($urlRoot .'instance-id')."";
  echo "<br>";
  echo "Availability Zone: " . file_get_contents($urlRoot . 'placement/availability-zone')."";
?>