@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 推送 README 到 GitHub...
git add README.md
git commit -m "docs: 添加中英双语 README"
git push origin master
if %errorlevel% equ 0 (
    echo 推送成功！
) else (
    echo 推送失败，请检查凭据
)
pause