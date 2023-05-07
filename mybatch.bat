@echo off

cd /d "C:\Users\MI\Лабораторные\Группа\ФИО"
mkdir batch
cd batch
mkdir "Скрытая папка"
mkdir "Не скрытая папка"
attrib +h "Скрытая папка"
xcopy /?
xcopy /? > "Не скрытая папка\copyhelp.txt"
xcopy "Не скрытая папка\copyhelp.txt" "Скрытая папка\copied_copyhelp.txt"