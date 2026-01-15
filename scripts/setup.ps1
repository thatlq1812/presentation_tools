# =============================================================================
# CONTENT GENERATION TOOL - SETUP SCRIPT (PowerShell)
# =============================================================================
# Version: 2.0.0
# Date: 2026-01-15
# Author: Elix Team
# Description: Automated setup for Windows PowerShell
# Usage: Run as Administrator
# =============================================================================

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  CONTENT GENERATION TOOL - SETUP" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

# Check if running as Administrator
function Test-Administrator {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

if (-not (Test-Administrator)) {
    Write-Host "WARNING: Not running as Administrator." -ForegroundColor Yellow
    Write-Host "Some installations may require admin privileges." -ForegroundColor Yellow
    Write-Host ""
}

# Function to check if command exists
function Test-Command {
    param($Command)
    $oldPreference = $ErrorActionPreference
    $ErrorActionPreference = 'stop'
    try {
        if (Get-Command $Command) { return $true }
    }
    catch { return $false }
    finally { $ErrorActionPreference = $oldPreference }
}

# Step 1: Check/Install Chocolatey
Write-Host "[1/6] Checking Chocolatey..." -ForegroundColor Yellow
if (Test-Command choco) {
    Write-Host "  Chocolatey is installed." -ForegroundColor Green
}
else {
    Write-Host "  Installing Chocolatey..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    Write-Host "  Chocolatey installed. Please restart PowerShell and run again." -ForegroundColor Yellow
    exit
}

# Step 2: Check/Install Git
Write-Host ""
Write-Host "[2/6] Checking Git..." -ForegroundColor Yellow
if (Test-Command git) {
    $gitVersion = git --version
    Write-Host "  Git is installed: $gitVersion" -ForegroundColor Green
}
else {
    Write-Host "  Installing Git..." -ForegroundColor Yellow
    choco install git -y
    Write-Host "  Git installed. Please restart PowerShell." -ForegroundColor Yellow
}

# Step 3: Check/Install VS Code
Write-Host ""
Write-Host "[3/6] Checking VS Code..." -ForegroundColor Yellow
if (Test-Command code) {
    Write-Host "  VS Code is installed." -ForegroundColor Green
}
else {
    Write-Host "  Installing VS Code..." -ForegroundColor Yellow
    choco install vscode -y
    Write-Host "  VS Code installed." -ForegroundColor Green
}

# Step 4: Check/Install Pandoc
Write-Host ""
Write-Host "[4/6] Checking Pandoc..." -ForegroundColor Yellow
if (Test-Command pandoc) {
    $pandocVersion = pandoc --version | Select-Object -First 1
    Write-Host "  Pandoc is installed: $pandocVersion" -ForegroundColor Green
}
else {
    Write-Host "  Installing Pandoc..." -ForegroundColor Yellow
    choco install pandoc -y
    Write-Host "  Pandoc installed." -ForegroundColor Green
}

# Step 5: Check/Install MiKTeX
Write-Host ""
Write-Host "[5/6] Checking MiKTeX (for PDF export)..." -ForegroundColor Yellow
if (Test-Command xelatex) {
    Write-Host "  MiKTeX/XeLaTeX is installed." -ForegroundColor Green
}
else {
    Write-Host "  Installing MiKTeX..." -ForegroundColor Yellow
    choco install miktex -y
    Write-Host "  MiKTeX installed." -ForegroundColor Green
    Write-Host "  IMPORTANT: Open MiKTeX Console and enable 'Install missing packages on-the-fly'" -ForegroundColor Yellow
}

# Step 6: Configure Git
Write-Host ""
Write-Host "[6/6] Configuring Git..." -ForegroundColor Yellow
$gitName = git config --global user.name 2>$null
$gitEmail = git config --global user.email 2>$null

if ([string]::IsNullOrEmpty($gitName)) {
    $name = Read-Host "  Enter your full name for Git"
    git config --global user.name "$name"
    Write-Host "  Git user.name set." -ForegroundColor Green
}
else {
    Write-Host "  Git user.name: $gitName" -ForegroundColor Green
}

if ([string]::IsNullOrEmpty($gitEmail)) {
    $email = Read-Host "  Enter your email for Git"
    git config --global user.email "$email"
    Write-Host "  Git user.email set." -ForegroundColor Green
}
else {
    Write-Host "  Git user.email: $gitEmail" -ForegroundColor Green
}

# Verify project structure
Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  VERIFYING PROJECT STRUCTURE" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

$projectRoot = $PSScriptRoot | Split-Path -Parent

# Create output folder
$outputPath = Join-Path $projectRoot "output"
if (-not (Test-Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath -Force | Out-Null
    New-Item -ItemType File -Path (Join-Path $outputPath ".gitkeep") -Force | Out-Null
    Write-Host "  Created: output/" -ForegroundColor Green
}
else {
    Write-Host "  Exists: output/" -ForegroundColor Green
}

# Verify key files
$keyFiles = @("ticket.md", "README.md", "schemas\slide_layouts.md", "schemas\content_guidelines.md")
foreach ($file in $keyFiles) {
    $filePath = Join-Path $projectRoot $file
    if (Test-Path $filePath) {
        Write-Host "  Verified: $file" -ForegroundColor Green
    }
    else {
        Write-Host "  MISSING: $file" -ForegroundColor Red
    }
}

# Install VS Code extensions
Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  INSTALLING VS CODE EXTENSIONS" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

if (Test-Command code) {
    $extensions = @(
        "GitHub.copilot",
        "GitHub.copilot-chat",
        "yzhang.markdown-all-in-one",
        "shd101wyy.markdown-preview-enhanced",
        "bierner.markdown-mermaid",
        "streetsidesoftware.code-spell-checker"
    )

    foreach ($ext in $extensions) {
        Write-Host "  Installing: $ext" -ForegroundColor Gray
        code --install-extension $ext --force 2>$null
    }
    Write-Host "  Extensions installed." -ForegroundColor Green
}
else {
    Write-Host "  VS Code not found. Skipping extensions." -ForegroundColor Yellow
}

# Summary
Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  SETUP COMPLETE" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Next steps:" -ForegroundColor White
Write-Host "  1. Open this folder in VS Code: code ." -ForegroundColor White
Write-Host "  2. Fill in ticket.md with your requirements" -ForegroundColor White
Write-Host "  3. Use AI Agent to generate content" -ForegroundColor White
Write-Host "  4. Find output in output/YYYYMMDD_HHmm/ folder" -ForegroundColor White
Write-Host ""
Write-Host "  For PDF export: Ctrl+Shift+B in VS Code" -ForegroundColor White
Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
