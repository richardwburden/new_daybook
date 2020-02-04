<?php 
class Test
{
    function a(&$id)
    {
        $id++;
		print $id;
    }
	public function tryit ()
	{
		$count = 1;
		$this->a($count);
		print "<br />";
		$this->a($count);
		print "<br />";
	}
}
print "<h1>Hello dammit!</h1>";

$it = new Test;
$it->tryit();
$it->tryit();
 ?>
