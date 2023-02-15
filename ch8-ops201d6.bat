@REM Script: Ops 201 Class 8 Ops Challenge Solution
@REM Author: Marco Aliaga
@REM Date of latest revision: 15 FEB 2023
@REM Purpose: Create a script that copies files from a folder into another folder in a diff drive recursevly

@REM Main
@REM run on VM from lab 4 for paths to work

@echo off
robocopy "C:\Users\j,thompson\Desktop\My Project Files" "B:\My Project Files" /M /E
mkdir "C:\Users\j,thompson\Desktop\My Project Files"

@REM End