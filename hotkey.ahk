#Persistent
	SetTimer, CloseMailWarnings, 250
return


alarmmsg()
{
    FormatTime, TimeString, ,hh:mm:ss;
    last := SubStr(TimeString,5 ,1 )
    if(last=="4"||last=="9")
	tooltip, Mon %FormatTime%, 0, 0
    else
	tooltip, 
    return
}


CloseMailWarnings:
	alarmmsg()
return

/*
^F5::
    	msgbox, 1
	alarmmsg()
return
*/

+F5::
FormatTime, TimeString
;MsgBox The current time and date (time first) is %TimeString%.
;send, %TimeString%
clipboardold = %clipboard% 
clipboard = %TimeString%
send, ^v
return
