@echo off
setlocal enabledelayedexpansion

set "root=C:\Users\MI\Лабораторные\Группа\ФИО\Командная строка"
set "total=0"

for /d %%i in ("%root%\*") do (
  set "subdir=%%~nxi"
  set "size=7"

  for /r "%%i" %%f in (*) do (
    set /a "size+=%%~zf"
  )

  set /a "total+=size"
  echo Size of directory "!subdir!": !size! 
)

echo Total size of all directories: %total% 

pause