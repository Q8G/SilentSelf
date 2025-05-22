@echo off

chcp 65001 > nul
python --version >nul 2>&1
if not %errorlevel% equ 0 (
    echo [31mPython is not installed.[0m
    echo [33mGo to https://www.python.org/downloads/ to download python[0m
    timeout /t 99999 >nul
    exit
)

if not exist requirements.txt (
    pip install discord.py==1.7.3
)

pip install -r requirements.txt

if %errorlevel% neq 0 (
    echo "Failed to install requirements."
) else (
    echo [32mRequirements installed successfully.[0m
    cls
    echo main.py will run after 3s
    timeout /t 1 >nul
    cls
    echo main.py will run after 2s
    timeout /t 1 >nul
    cls
    echo main.py will run after 1s
    timeout /t 1 >nul
    cls
)

echo @echo off > Run.bat
echo main.py >> Run.bat

cls

Run.bat
