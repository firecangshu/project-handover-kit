@echo off
cd /d "%~dp0"
echo ================================
echo 推送  AI记忆转移 重命名到 GitHub
echo ================================
echo.

git status
echo.
git push origin master
echo.
echo 如果上面报错，执行：
echo git push -u origin master
echo.
pause
