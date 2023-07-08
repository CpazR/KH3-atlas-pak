SETLOCAL
@REM @echo off

@REM Path variables
set cookedFilesPath="..\Saved\Cooked\WindowsNoEditor\TresGame\Content"

set destinationFilesPath=".\AtlasPak\KINGDOM HEARTS III\Content"

@REM Package source and destination paths
set packageRootDirectory=".\AtlasPak"

@REM Exclusion
set excludeMaps="Ex.*" "Ex_" "TresGameTitle*"
set excludeFileTypes="*_BuiltData.*"
set excludeFolders="Music" "Common"


@REM Copy cooked files
robocopy %cookedFilesPath% %destinationFilesPath% /mir /xd %excludeFolders% /xf %excludeFileTypes% %excludeMaps%

@REM Run package files
echo/|call UnrealPak-With-Compression.bat %packageRootDirectory%

ENDLOCAL