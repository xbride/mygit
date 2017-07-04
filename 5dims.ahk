^g::
FormatTime, 的, , s
的 := Mod(的, 5)
;ToolTip, %的%
if(的==0){
	ToolTip, %的%
}else if(的==1){
	ToolTip, %的%
}
else if(的==2){ 
	ToolTip, %的%
}
else if(的==3){
	ToolTip, %的%
}
else if(的==4){
	ToolTip, %的%
}
return