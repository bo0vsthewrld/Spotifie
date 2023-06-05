@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if exist "%Appdata%\Spotify\dpapi.dll" ( 
    del /s /q "%Appdata%\Spotify\dpapi.dll" > NUL 2>&1
) 

if exist "%Appdata%\Spotify\Spotify.bak" ( 
    del /s /q "%Appdata%\Spotify.exe" > NUL 2>&1
    move "%Appdata%\Spotify\Spotify.bak" "%Appdata%\Spotify\Spotify.exe" > NUL 2>&1
)


if exist "%Appdata%\Spotify\config.ini" (
    del /s /q "%Appdata%\Spotify\config.ini" > NUL 2>&1
) 


if exist "%Appdata%\Spotify\Apps\xpui.bak" (
    del /s /q "%Appdata%\Spotify\Apps\xpui.spa" > NUL 2>&1
    move "%Appdata%\Spotify\Apps\xpui.bak" "%Appdata%\Spotify\Apps\xpui.spa" > NUL 2>&1
) 


if exist "%Appdata%\Spotify\blockthespot_log.txt" (
    del /s /q "%Appdata%\Spotify\blockthespot_log.txt" > NUL 2>&1
)

if exist "%temp%\Spotifie_Temp*" (
    for /d %%i in ("%temp%\Spotifie_Temp*") do (
        rd /s/q "%%i" > NUL 2>&1
    )
)

echo Đã gỡ cài đặt crack thành công
pause
