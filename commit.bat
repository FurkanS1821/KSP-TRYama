@echo off
git status
git add *
git status
echo.
Diff "Base Game" "Kerbal Space Program\GameData\Squad\Localization" "{0}\dictionary.cfg" "{0}\..\..\..\..\dictionary - Orijinal.cfg" "MH" "Kerbal Space Program\GameData\SquadExpansion\MakingHistory\Localization" "{0}\dictionary.cfg" "{0}\..\..\..\..\..\dictionary - MakingHistory Orijinal.cfg" "BG" "Kerbal Space Program\GameData\SquadExpansion\Serenity\Localization" "{0}\dictionary.cfg" "{0}\..\..\..\..\..\dictionary - BreakingGround Orijinal.cfg"
set /p msg="Enter commit message: "
git commit -m "%msg%"
git push origin master
pause
