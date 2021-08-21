@echo off
SetLocal EnableExtensions
setlocal EnableDelayedExpansion

set cfg_path="C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
set "files=autoexec.cfg BotPractice.cfg overwatch.cfg"

set folders="functions"
set gitpath=%~dp0

for %%s in (%files%) do ( 
   set filepath=%cfg_path%%%s
   xcopy !filepath! %gitpath% /D /Y /Q
)

for %%s in (%folders%) do ( 
   set filepath=%cfg_path%%%s
   xcopy !filepath! %gitpath%%%s /D /Y /S /Q
)

pause