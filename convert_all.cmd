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
	echo Converting %%~f ..
	"C:\Program Files\Inkscape\inkscape.exe" --export-pdf="pdf/%%~nf".pdf "eps/%%~f"
) 
echo ............ Conversion complete
pause