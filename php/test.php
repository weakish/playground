<?php
require_once 'vendor/autoload.php';

use \LeanCloud\Client;
use \LeanCloud\LeanObject;
use LeanCloud\Query;

Client::initialize("r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz", "PT4FpSvABfO0wKCD4WYA0wdK", "EgGgxNEHixJqEVqe1Bwi6G2O");


$query = new Query("TestObject");
$obj = $query->get("5c45436a7565716f24d459ae");

$hello = $obj->get("hello");
echo "hello: $hello";
$obj->set("hello", null);
$obj->set("new_php", null);
$obj->save();


