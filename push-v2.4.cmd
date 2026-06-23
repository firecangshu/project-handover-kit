@echo off
chcp 65001 > nul
echo ==========================================
echo   IRY V2.4 - Slogan 更新推送
echo ==========================================
echo.

cd /d "C:\Users\User\WorkBuddy\2026-06-22-21-03-14\移魂大法-skill"

echo [1/4] 复制更新后的文件...
copy "C:\Users\User\.workbuddy\skills\safe-handoff\IRY (我记得你) AI记忆转移任务交接神器.md" . /Y
copy "C:\Users\User\.workbuddy\skills\safe-handoff\README.md" . /Y
copy "C:\Users\User\.workbuddy\skills\safe-handoff\feedback.md" . /Y

echo.
echo [2/4] 检查 Git 状态...
git status

echo.
echo [3/4] 提交更改...
git add .
git commit -m "V2.4: 更新 Slogan - 中文「换新 AI，它依然记得你」/ 英文「New AI. It still remembers you.」"

echo.
echo [4/4] 推送到 GitHub...
git push origin master

echo.
echo ==========================================
echo   推送完成！
echo ==========================================
echo.
echo 请去 GitHub 修改仓库描述和标签：
echo https://github.com/firecangshu/project-handover-kit/settings
echo.
pause
