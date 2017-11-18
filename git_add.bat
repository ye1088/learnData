:input
set /p message=请输入提交的注释说明：
if not defined message goto input
set message=%message:"=%
git add .
git commit -m "%message%"
git push -u origin master
git status

pause