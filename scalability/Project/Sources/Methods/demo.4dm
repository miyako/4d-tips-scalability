//%attributes = {}
#DECLARE($params : Object)

If ($params=Null:C1517)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	$w:=Open form window:C675([Table 1:1]; "dialogform")
	DIALOG:C40([Table 1:1]; "dialogform"; *)
	
End if 