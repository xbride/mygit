/*local procedure(*personal) 1234567890
gernerate qrcode	*
put qr on qrdirectory	*
get newest qr
check time
update qr enterence
broad to www		
*/

/*local procedure(*personal)
		
*/

IniRead, drive, local.ini, path, drive
IniRead, home, local.ini, path, home
IniRead, door, local.ini, path, door

dir=%drive%:\%home%\%door%

;msgbox, %dir%

Loop, Files, %dir%\*.png
{
   FileList = %FileList%%A_LoopFileName%`n

	msgbox, %A_LoopFileTimeModified%
	if(A_LoopFileTimeModified>filemtime)
	{
		filemtime := A_LoopFileTimeModified
		filename := A_LoopFileName
	}
	
}
msgbox, new %filemtime% :%filename%
msgbox, %FileList%

if(filename<>"")
{
	dirto = %drive%:\%home%
	msgbox, copying.. %filename%


	FileCopy, %dir%\%filename%, %dirto%\qr.png, 1
}