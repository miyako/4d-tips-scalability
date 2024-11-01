//%attributes = {"invisible":true,"preemptive":"capable"}
#DECLARE($params : Object)

If ($params=Null:C1517)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	QUERY:C277([Table 1:1]; [Table 1:1]Field1:1=1)
	ALL RECORDS:C47([Table 1:1])
	ORDER BY:C49([Table 1:1]; [Table 1:1]Field2:2)
	
End if 