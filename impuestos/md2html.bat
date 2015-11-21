@ECHO OFF 
::CMD will no longer show us what command it’s executing(cleaner)
ECHO To convert MARKDOWN to HTML
:: pandoc 
for %%f in ("*.md") do (

        echo %%f
        pandoc "%%~nf.md" -f markdown -t html -o "%%~nf.html"
    )

ECHO All done. 
::Print some text
PAUSE 
:: Give the user some time to see the results. Because this is our last line, the program will exit and the command window will close once this line finishes.
