^<?php
 $filename = $_FILES['thumb']['name'];
 $destination = "./".$filename;
 move_uploaded_file($_FILES['thumb']['tmp_name'],$destination);
 echo "upload sucess";
?^>