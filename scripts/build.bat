@echo off
REM ============================================
REM Build Script for Presentation Tools
REM Converts Markdown to PDF and DOCX using Pandoc
REM ============================================

echo.
echo ========================================
echo Presentation Tools - Build Script
echo ========================================
echo.

REM Check if input file is provided
if "%~1"=="" (
    echo Usage: build.bat [input.md]
    echo.
    echo Examples:
    echo   build.bat document.md
    echo   build.bat "my report.md"
    echo.
    pause
    exit /b 1
)

REM Set variables
set INPUT=%~1
set BASENAME=%~n1
set OUTPUT_DIR=%~dp1output

REM Create output directory
if not exist "%OUTPUT_DIR%" (
    echo Creating output directory...
    mkdir "%OUTPUT_DIR%"
)

echo Input file: %INPUT%
echo Output dir: %OUTPUT_DIR%
echo.

REM Build PDF
echo [1/3] Building PDF...
pandoc "%INPUT%" -o "%OUTPUT_DIR%\%BASENAME%.pdf" ^
    --pdf-engine=xelatex ^
    -V geometry:margin=2.5cm ^
    -V fontsize=13pt ^
    -V mainfont="Times New Roman" ^
    -V monofont="Consolas" ^
    -V linestretch=1.5 ^
    --toc ^
    --toc-depth=3 ^
    -N ^
    --highlight-style=tango

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] PDF build failed!
) else (
    echo [OK] PDF created: %OUTPUT_DIR%\%BASENAME%.pdf
)

REM Build DOCX
echo.
echo [2/3] Building DOCX...
pandoc "%INPUT%" -o "%OUTPUT_DIR%\%BASENAME%.docx" ^
    --toc

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] DOCX build failed!
) else (
    echo [OK] DOCX created: %OUTPUT_DIR%\%BASENAME%.docx
)

REM Build HTML
echo.
echo [3/3] Building HTML...
pandoc "%INPUT%" -o "%OUTPUT_DIR%\%BASENAME%.html" ^
    -s ^
    --toc ^
    --highlight-style=tango

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] HTML build failed!
) else (
    echo [OK] HTML created: %OUTPUT_DIR%\%BASENAME%.html
)

echo.
echo ========================================
echo Build completed!
echo ========================================
echo.
echo Output files:
echo   - %OUTPUT_DIR%\%BASENAME%.pdf
echo   - %OUTPUT_DIR%\%BASENAME%.docx
echo   - %OUTPUT_DIR%\%BASENAME%.html
echo.

pause
