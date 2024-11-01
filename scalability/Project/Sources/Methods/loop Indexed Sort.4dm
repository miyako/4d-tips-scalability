//%attributes = {"invisible":true}
var $2 : Integer
nbiter:=$1
Open window:C153(20+(($2-1)*150); 100; 10+($2*150); 300; 0)
$t:=Milliseconds:C459
For (i; 1; nbiter)
	ALL RECORDS:C47([Table 1:1])
	ORDER BY:C49([Table 1:1]; [Table 1:1]Field2:2; <)
	$t2:=Milliseconds:C459
	MESSAGE:C88(String:C10($t2-$t)+Char:C90(13))
	$t:=$t2
	var $p : Object
	$p:=Storage:C1525.p
	Use ($p)
		$p.nbpass:=$p.nbpass+1
	End use 
End for 
CLOSE WINDOW:C154
