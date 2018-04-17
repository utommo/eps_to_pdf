@echo off
IF NOT EXIST ./eps (
	mkdir eps 
	echo /eps folder created
)
IF NOT EXIST ./pdf (
	mkdir pdf 
	echo /pdf folder created
)

for %%f in (eps/*.eps) do (
	IF EXIST "pdf/%%~nf.pdf" (
 		echo Skipping %%~nf.pdf
	) ELSE (    
		echo Converting %%~f ..
		"C:\Program Files\Inkscape\inkscape.exe" --export-pdf="pdf/%%~nf".pdf "%%~f"
	)
) 

echo ............ Conversion complete
pause