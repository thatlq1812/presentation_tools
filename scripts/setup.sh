#!/bin/bash

# =============================================================================
# CONTENT GENERATION TOOL - SETUP SCRIPT
# =============================================================================
# Version: 2.0.0
# Date: 2026-01-15
# Author: Elix Team
# Description: Automated setup for Windows (Git Bash) and Linux/Mac
# =============================================================================

echo "=============================================="
echo "  CONTENT GENERATION TOOL - SETUP"
echo "=============================================="
echo ""

# Detect OS
detect_os() {
    case "$(uname -s)" in
        Linux*)     OS="Linux";;
        Darwin*)    OS="Mac";;
        CYGWIN*|MINGW*|MSYS*) OS="Windows";;
        *)          OS="Unknown";;
    esac
    echo "Detected OS: $OS"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Chocolatey (Windows only)
install_chocolatey() {
    if [ "$OS" = "Windows" ]; then
        echo ""
        echo "[1/5] Checking Chocolatey..."
        if command_exists choco; then
            echo "  Chocolatey is already installed."
        else
            echo "  Chocolatey not found."
            echo "  Please run the following command in PowerShell (Admin):"
            echo ""
            echo "  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
            echo ""
            echo "  After installation, restart terminal and run this script again."
            exit 1
        fi
    fi
}

# Check Git
check_git() {
    echo ""
    echo "[2/5] Checking Git..."
    if command_exists git; then
        echo "  Git is installed: $(git --version)"
    else
        echo "  Git not found."
        if [ "$OS" = "Windows" ]; then
            echo "  Install with: choco install git -y"
        elif [ "$OS" = "Mac" ]; then
            echo "  Install with: brew install git"
        else
            echo "  Install with: sudo apt-get install git"
        fi
        exit 1
    fi
}

# Check Pandoc
check_pandoc() {
    echo ""
    echo "[3/5] Checking Pandoc..."
    if command_exists pandoc; then
        echo "  Pandoc is installed: $(pandoc --version | head -n 1)"
    else
        echo "  Pandoc not found."
        if [ "$OS" = "Windows" ]; then
            echo "  Install with: choco install pandoc -y"
        elif [ "$OS" = "Mac" ]; then
            echo "  Install with: brew install pandoc"
        else
            echo "  Install with: sudo apt-get install pandoc"
        fi
        exit 1
    fi
}

# Check LaTeX (for PDF generation)
check_latex() {
    echo ""
    echo "[4/5] Checking LaTeX (for PDF generation)..."
    if command_exists xelatex; then
        echo "  XeLaTeX is installed."
    elif command_exists pdflatex; then
        echo "  pdfLaTeX is installed."
    else
        echo "  LaTeX not found."
        if [ "$OS" = "Windows" ]; then
            echo "  Install with: choco install miktex -y"
        elif [ "$OS" = "Mac" ]; then
            echo "  Install with: brew install --cask mactex"
        else
            echo "  Install with: sudo apt-get install texlive-xetex"
        fi
        echo "  (Optional but required for PDF export)"
    fi
}

# Check VS Code
check_vscode() {
    echo ""
    echo "[5/5] Checking VS Code..."
    if command_exists code; then
        echo "  VS Code is installed."
    else
        echo "  VS Code not found."
        if [ "$OS" = "Windows" ]; then
            echo "  Install with: choco install vscode -y"
        elif [ "$OS" = "Mac" ]; then
            echo "  Install with: brew install --cask visual-studio-code"
        else
            echo "  Download from: https://code.visualstudio.com/"
        fi
    fi
}

# Configure Git
configure_git() {
    echo ""
    echo "=============================================="
    echo "  GIT CONFIGURATION"
    echo "=============================================="

    # Check if git user is configured
    GIT_NAME=$(git config --global user.name 2>/dev/null)
    GIT_EMAIL=$(git config --global user.email 2>/dev/null)

    if [ -z "$GIT_NAME" ]; then
        echo ""
        read -p "Enter your full name for Git: " NAME
        git config --global user.name "$NAME"
        echo "  Git user.name set to: $NAME"
    else
        echo "  Git user.name: $GIT_NAME"
    fi

    if [ -z "$GIT_EMAIL" ]; then
        echo ""
        read -p "Enter your email for Git: " EMAIL
        git config --global user.email "$EMAIL"
        echo "  Git user.email set to: $EMAIL"
    else
        echo "  Git user.email: $GIT_EMAIL"
    fi
}

# Create project structure
create_structure() {
    echo ""
    echo "=============================================="
    echo "  VERIFYING PROJECT STRUCTURE"
    echo "=============================================="

    # Create output folder if not exists
    if [ ! -d "output" ]; then
        mkdir -p output
        touch output/.gitkeep
        echo "  Created: output/"
    else
        echo "  Exists: output/"
    fi

    # Create schemas folder if not exists
    if [ ! -d "schemas" ]; then
        mkdir -p schemas
        echo "  Created: schemas/"
    else
        echo "  Exists: schemas/"
    fi

    # Verify key files
    KEY_FILES=("ticket.md" "README.md" "schemas/slide_layouts.md" "schemas/content_guidelines.md")
    for file in "${KEY_FILES[@]}"; do
        if [ -f "$file" ]; then
            echo "  Verified: $file"
        else
            echo "  MISSING: $file"
        fi
    done
}

# Install VS Code extensions
install_extensions() {
    echo ""
    echo "=============================================="
    echo "  VS CODE EXTENSIONS"
    echo "=============================================="

    if command_exists code; then
        echo "  Installing recommended extensions..."

        EXTENSIONS=(
            "GitHub.copilot"
            "GitHub.copilot-chat"
            "yzhang.markdown-all-in-one"
            "shd101wyy.markdown-preview-enhanced"
            "bierner.markdown-mermaid"
            "streetsidesoftware.code-spell-checker"
        )

        for ext in "${EXTENSIONS[@]}"; do
            echo "  Installing: $ext"
            code --install-extension "$ext" --force >/dev/null 2>&1
        done

        echo "  Extensions installed successfully."
    else
        echo "  VS Code not found. Skipping extension installation."
    fi
}

# Summary
print_summary() {
    echo ""
    echo "=============================================="
    echo "  SETUP COMPLETE"
    echo "=============================================="
    echo ""
    echo "  Next steps:"
    echo "  1. Open this folder in VS Code: code ."
    echo "  2. Fill in ticket.md with your requirements"
    echo "  3. Use AI Agent to generate content"
    echo "  4. Find output in output/YYYYMMDD_HHmm/ folder"
    echo ""
    echo "  For PDF export, use: Ctrl+Shift+B in VS Code"
    echo ""
    echo "=============================================="
}

# Main execution
main() {
    detect_os
    install_chocolatey
    check_git
    check_pandoc
    check_latex
    check_vscode
    configure_git
    create_structure
    install_extensions
    print_summary
}

# Run main
main
