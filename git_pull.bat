echo 要下载代码,这是个危险动作,确定吗?
:input
set /p confirm=请输入y(确定) n(否)：
if not defined confirm goto input
set confirm=%confirm:"=%
if %confirm%==y goto _continue
pause
exit
:_continue
git checkout .
git status
git pull
pause