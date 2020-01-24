mkdir c:\Universal
compact /u /s:\Universal
copy /y /z \\argo\Progs\Universal.exe c:\Universal\Universal.exe
copy /y /z \\argo\Progs\gds32.dll c:\Universal\gds32.dll
start c:\Universal\Universal.exe