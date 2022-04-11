@echo off
git status
git add *
git status
echo.
Diff "Base Game & MH" "Kerbal Space Program\GameData\Squad\Localization" "{0}\dictionary.cfg" "{0}\..\..\..\..\dictionary - Orijinal.cfg" "BG" "Kerbal Space Program\GameData\SquadExpansion\Serenity\Localization" "{0}\dictionary.cfg" "{0}\..\..\..\..\..\dictionary - Serenity.cfg"
set /p msg="Enter commit message: "
git commit -m "%msg%"
git push origin yeni-baslangic
pause
