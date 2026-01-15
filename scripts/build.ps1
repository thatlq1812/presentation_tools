# ============================================
# Build Script for Presentation Tools
# Converts Markdown to PDF and DOCX using Pandoc
# ============================================

param(
    [Parameter(Mandatory=$true)]
    [string]$InputFile,

    [switch]$PDF,
    [switch]$DOCX,
    [switch]$HTML,
    [switch]$All
)

# Header
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Presentation Tools - Build Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Validate input file
if (-not (Test-Path $InputFile)) {
    Write-Host "[ERROR] File not found: $InputFile" -ForegroundColor Red
    exit 1
}

# Get file info
$FileInfo = Get-Item $InputFile
$BaseName = $FileInfo.BaseName
$Directory = $FileInfo.DirectoryName
$OutputDir = Join-Path $Directory "output"

# Create output directory
if (-not (Test-Path $OutputDir)) {
    Write-Host "Creating output directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

Write-Host "Input file: $InputFile"
Write-Host "Output dir: $OutputDir"
Write-Host ""

# If no specific format selected, build all
if (-not ($PDF -or $DOCX -or $HTML)) {
    $All = $true
}

# Build PDF
if ($PDF -or $All) {
    Write-Host "[Building PDF...]" -ForegroundColor Green

    $OutputPDF = Join-Path $OutputDir "$BaseName.pdf"

    pandoc $InputFile -o $OutputPDF `
        --pdf-engine=xelatex `
        -V geometry:margin=2.5cm `
        -V fontsize=13pt `
        -V "mainfont=Times New Roman" `
        -V "monofont=Consolas" `
        -V linestretch=1.5 `
        --toc `
        --toc-depth=3 `
        -N `
        --highlight-style=tango

    if ($LASTEXITCODE -eq 0) {
        Write-Host "[OK] PDF created: $OutputPDF" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] PDF build failed!" -ForegroundColor Red
    }
    Write-Host ""
}

# Build DOCX
if ($DOCX -or $All) {
    Write-Host "[Building DOCX...]" -ForegroundColor Green

    $OutputDOCX = Join-Path $OutputDir "$BaseName.docx"

    pandoc $InputFile -o $OutputDOCX --toc

    if ($LASTEXITCODE -eq 0) {
        Write-Host "[OK] DOCX created: $OutputDOCX" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] DOCX build failed!" -ForegroundColor Red
    }
    Write-Host ""
}

# Build HTML
if ($HTML -or $All) {
    Write-Host "[Building HTML...]" -ForegroundColor Green

    $OutputHTML = Join-Path $OutputDir "$BaseName.html"

    pandoc $InputFile -o $OutputHTML -s --toc --highlight-style=tango

    if ($LASTEXITCODE -eq 0) {
        Write-Host "[OK] HTML created: $OutputHTML" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] HTML build failed!" -ForegroundColor Red
    }
    Write-Host ""
}

# Summary
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Build completed!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Output files in: $OutputDir" -ForegroundColor Yellow
Get-ChildItem $OutputDir | ForEach-Object {
    Write-Host "  - $($_.Name)"
}
Write-Host ""

<#
.SYNOPSIS
    Build Markdown files to PDF, DOCX, and HTML using Pandoc.

.DESCRIPTION
    This script converts Markdown files to various formats using Pandoc.
    It supports Vietnamese text with proper font handling.

.PARAMETER InputFile
    The Markdown file to convert.

.PARAMETER PDF
    Build PDF output only.

.PARAMETER DOCX
    Build DOCX output only.

.PARAMETER HTML
    Build HTML output only.

.PARAMETER All
    Build all formats (default if no format specified).

.EXAMPLE
    .\build.ps1 document.md
    Build all formats from document.md

.EXAMPLE
    .\build.ps1 document.md -PDF
    Build PDF only

.EXAMPLE
    .\build.ps1 document.md -PDF -DOCX
    Build PDF and DOCX
#>
