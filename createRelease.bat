@echo off
rmdir "../Kerbal Space Program" /s /q
xcopy "Kerbal Space Program" "../Kerbal Space Program" /s /i /q
cd ../Kerbal Space Program
del *.txt /s /q
del *.exe /s /q
cd ..
del KerbalSpaceProgram-TurkceYama-*.zip /q
7z a -mx9 -r -sdel KerbalSpaceProgram-TurkceYama-10000.zip -- "Kerbal Space Program\*.*"
rmdir "Kerbal Space Program" /s /q
