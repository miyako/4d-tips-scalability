//%attributes = {"invisible":true,"executedOnServer":true,"preemptive":"capable"}
For (i; 1; 1000000)
	CREATE RECORD:C68([Table 1:1])
	[Table 1:1]Field1:1:=i
	[Table 1:1]Field2:2:=i
	SAVE RECORD:C53([Table 1:1])
End for 

