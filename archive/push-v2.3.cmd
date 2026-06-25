@echo off
chcp 65001 >nul
echo ================================================
echo  IRY V2.3 - README 结构重构推送
echo ================================================
echo.

cd /d "C:\Users\User\WorkBuddy\2026-06-22-21-03-14\移魂大法-skill"

echo [1/3] 复制更新后的文件...
copy "C:\Users\User\.workbuddy\skills\safe-handoff\IRY (我记得你) AI记忆转移任务交接神器.md" . /Y
copy "C:\Users\User\.workbuddy\skills\safe-handoff\feedback.md" . /Y
copy "C:\Users\User\.workbuddy\skills\safe-handoff\README.md" . /Y

echo.
echo [2/3] 提交到 Git...
git add .
git commit -m "V2.3: README 结构重构 - 痛点前置+产品理念+核心能力+使用效果"

echo.
echo [3/3] 推送到 GitHub...
git push origin master

echo.
echo ================================================
echo  推送完成！请检查 GitHub 仓库：
echo  https://github.com/firecangshu/project-handover-kit
echo ================================================
pause
