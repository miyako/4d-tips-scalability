//%attributes = {}
var $2 : Integer
nbiter:=$1
Open window:C153(20+(($2-1)*150); 100; 10+($2*150); 300; 0)
$t:=Milliseconds:C459
For (i; 1; nbiter)
	QUERY:C277([Table 1:1]; [Table 1:1]Field1:1=i)
	$t2:=Milliseconds:C459
	MESSAGE:C88(String:C10($t2-$t)+Char:C90(13))
	$t:=$t2
	<>nbpass:=<>nbpass+1
End for 
CLOSE WINDOW:C154
