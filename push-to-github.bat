@echo off
cd /d "%~dp0"
REM Ensure Git is installed
ngit --version >nul 2>&1 || (echo Git not found. Install Git and retry. & pause & exit /b 1)

nREM Initialize repo if needed
nif not exist .git (
  git init
)

nREM Add and commit changes
ngit add -A
ngit commit -m "Initial commit: Pixel World editor" 2>nul || echo No changes to commit.

nREM Ensure main branch and remote
ngit branch -M main
ngit remote remove origin 2>nul
ngit remote add origin https://github.com/BurhanYslmn/Pixel-World-Fish-size-editor.git

necho Pushing to GitHub (you may be prompted for credentials)...
ngit push -u origin main
necho Done.
pause
