//%attributes = {"invisible":true,"preemptive":"capable"}
#DECLARE($procname : Text; $nbprocess : Integer; $nbpass : Integer)

var $p : Object

$p:=Storage:C1525.p
If ($p=Null:C1517)
	$p:=New shared object:C1526("nbpass"; Null:C1517)
	Use (Storage:C1525)
		Storage:C1525.p:=$p
	End use 
End if 

Use ($p)
	$p.nbpass:=0
End use 

warmup

$t:=Milliseconds:C459

//ARRAY LONGINT($procs; $nbprocess)

For ($i; 1; $nbprocess)
	//$procs{$i}:=New process($procname; 0; "my process "+String($i); {nbpass: $nbpass; i: $i})
	CALL WORKER:C1389("my process "+String:C10($i); $procname; {nbpass: $nbpass; i: $i})
End for 

$maxpass:=$nbprocess*$nbpass
While ($p.nbpass<$maxpass)
	DELAY PROCESS:C323(Current process:C322; 10)
End while 

$t2:=Milliseconds:C459

$0:=$t2-$t