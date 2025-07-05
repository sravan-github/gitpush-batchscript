@echo off
REM ===========================================
REM Batch script to push files to GitHub
REM ===========================================

REM ----------- LOAD CONFIG -------------------

REM Path to config file
call git-config-vars.bat

REM ----------- END CONFIG --------------------

REM Change to source folder
cd /d "%SOURCE_FOLDER%"

REM Check if already a git repo
if exist ".git" (
    echo Git repository already exists.
) else (
    echo Initializing new Git repository...
    git init

    REM Set the default branch name to main
    git checkout -b %BRANCH%

    git remote add origin %GIT_REMOTE_URL%
)

REM Add all files
git add .

REM Check if there is anything to commit
git diff --cached --quiet
IF %ERRORLEVEL% EQU 0 (
    echo Nothing new to commit.
) ELSE (
    git commit -m "%COMMIT_MSG%"
)

REM Push to GitHub
git push -u origin %BRANCH%

echo.
echo Push completed.
pause
