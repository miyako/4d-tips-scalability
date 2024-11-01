//%attributes = {"invisible":true,"preemptive":"capable"}
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

procname:=$1
nbprocess:=$2
nbpass:=$3

t:=Milliseconds:C459

ARRAY LONGINT:C221(procs; nbprocess)

For (i; 1; nbprocess)
	procs{i}:=New process:C317(procname; 0; "my process "+String:C10(i); nbpass; i)
End for 

maxpass:=nbprocess*nbpass
While ($p.nbpass<maxpass)
	DELAY PROCESS:C323(Current process:C322; 10)
End while 

t2:=Milliseconds:C459

$0:=t2-t