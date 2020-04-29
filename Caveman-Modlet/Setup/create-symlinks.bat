@ECHO OFF

setlocal enableextensions disabledelayedexpansion

if exist "C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die\Mods" (
    ECHO "Mods Folder Exists..."
) else (
    ECHO "Mods Folder not detected, creating Mods folder..."
    mkdir "C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die\Mods"
    ECHO "Created C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die\Mods..."
)
ECHO "Linking required files..."
for %%a in ("%cd%\..\..\Caveman-Modlet\") do set "resolvedDir=%%~fa"
ECHO %resolvedDir%
xcopy %resolvedDir% "C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die\Mods\Caveman-Modlet\" /E

PAUSE
