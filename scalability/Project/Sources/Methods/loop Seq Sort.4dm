//%attributes = {"invisible":true,"preemptive":"capable"}
#DECLARE($params : Object)

$i:=$params.i
$nbpass:=$params.nbpass

$t:=Milliseconds:C459
For ($i; 1; $nbpass)
	ALL RECORDS:C47([Table 1:1])
	ORDER BY:C49([Table 1:1]; [Table 1:1]Field1:1; <)
	$t2:=Milliseconds:C459
	$params.message:=String:C10($t2-$t)+"\r"
	$t:=$t2
	var $p : Object
	$p:=Storage:C1525.p
	Use ($p)
		$p.nbpass:=$p.nbpass+1
	End use 
End for 

KILL WORKER:C1390
