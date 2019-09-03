@echo off
git status
git add *
git status
echo|set /p="Base Game Percentage: "
cd "Kerbal Space Program\GameData\Squad\Localization"
Diff dictionary.cfg "..\..\..\..\dictionary - Orijinal.cfg"
cd ..\..\..\..
echo.
if exist "dictionary - MakingHistory Orijinal.cfg" (
	echo|set /p="Making History Percentage: "
	cd ".\Kerbal Space Program\GameData\SquadExpansion\MakingHistory\Localization"
	Diff dictionary.cfg "..\..\..\..\..\dictionary - MakingHistory Orijinal.cfg"
	cd ..\..\..\..\..
	echo.
) else echo No Making History DLC yet.
if exist "dictionary - BreakingGround Orijinal.cfg" (
	echo|set /p="Breaking Ground Percentage: "
	cd ".Kerbal Space Program\GameData\SquadExpansion\Serenity\Localization"
	Diff "dictionary.cfg" "..\..\..\..\..\dictionary - BreakingGround Orijinal.cfg"
	cd ..\..\..\..\..
	echo.
) else echo No Breaking Ground DLC yet.
set /p msg="Enter commit message: "
git commit -m "%msg%"
git push origin master
pause
