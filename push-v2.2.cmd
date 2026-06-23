@echo off
cd /d "%~dp0"
echo ================================
echo 推送 IRY (I Remember You) V2.2 到 GitHub
echo ================================
echo.

echo [1/3] 复制更新后的文件到仓库...
copy "C:\Users\User\.workbuddy\skills\safe-handoff\IRY (我记得你) AI记忆转移任务交接神器.md" "IRY (I Remember You) AI记忆转移任务交接神器.md" /Y
copy "C:\Users\User\.workbuddy\skills\safe-handoff\feedback.md" feedback.md /Y
echo.

echo [2/3] 添加文件到 Git...
git add .
echo.

echo [3/3] 提交并推送...
git commit -m "rename: 移魂大法 -> IRY (I Remember You) V2.2"
git push origin master
echo.

echo ================================
echo 如果推送失败，请检查：
echo 1. GitHub 认证是否已配置
echo 2. 是否需要手动输入用户名和密码
echo ================================
echo.
pause
