@echo off
setlocal enabledelayedexpansion

pushd c:\some_dir

for %%f in (*) do (
   set "filename=%%~f"

   for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do (
      set "filename=!filename:%%a=%%a!"
   )
    ren "%%f" "!filename!" >nul 2>&1
)
endlocal