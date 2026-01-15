# CONTENT GENERATION TOOL - SETUP GUIDE

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 2.0.0 | 2026-01-15 | Elix Team | Complete rewrite for ticket-based workflow |

## Table of Contents

1. [Overview](#overview)
2. [System Requirements](#system-requirements)
3. [Phase 1: Package Manager Installation](#phase-1-package-manager-installation)
4. [Phase 2: Core Tools Installation](#phase-2-core-tools-installation)
5. [Phase 3: VS Code Configuration](#phase-3-vs-code-configuration)
6. [Phase 4: Workflow Usage](#phase-4-workflow-usage)
7. [Troubleshooting](#troubleshooting)

---

## Overview

This tool provides a standardized workflow for generating academic content (presentations, reports) using AI assistance. The system uses a **ticket-based approach** where users fill in requirements, and an AI Agent generates structured content.

**Core Principles:**

- Decoupling: Separate content creation from presentation formatting
- Standardization: Enforce clear thinking through structured input
- Reproducibility: Consistent environment across all users

**Workflow Summary:**

1. User fills in `ticket.md` with requirements
2. AI Agent processes the ticket
3. System generates output in timestamped folder (`output/YYYYMMDD_HHmm/`)
4. Content follows predefined slide layout schemas

---

## System Requirements

- Operating System: Windows 10/11 (64-bit)
- RAM: Minimum 4GB (8GB recommended)
- Disk Space: Minimum 5GB free space
- Internet connection for initial setup

---

## Phase 1: Package Manager Installation

Chocolatey is a package manager for Windows that automates software installation. This ensures all users have identical environments.

### Step 1.1: Open PowerShell as Administrator

1. Press `Windows + X`
2. Select "Windows PowerShell (Admin)" or "Terminal (Admin)"
3. Click "Yes" when prompted by User Account Control

### Step 1.2: Install Chocolatey

Copy and paste the following command into PowerShell:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Step 1.3: Verify Installation

Close PowerShell and reopen it as Administrator. Run:

```powershell
choco --version
```

Expected output: Version number (e.g., `2.2.2`)

---

## Phase 2: Core Tools Installation

Run the following commands in PowerShell (Admin). Each command installs a required tool.

### Step 2.1: Install Git

Git is required for version control and repository management.

```powershell
choco install git -y
```

Verify installation:

```powershell
git --version
```

### Step 2.2: Install VS Code

Visual Studio Code is the primary editor for this workflow.

```powershell
choco install vscode -y
```

After installation, you may need to restart PowerShell or your computer.

### Step 2.3: Install Pandoc

Pandoc converts Markdown to PDF, DOCX, and other formats.

```powershell
choco install pandoc -y
```

Verify installation:

```powershell
pandoc --version
```

### Step 2.4: Install MiKTeX

MiKTeX is a LaTeX distribution required for PDF generation with proper typography.

```powershell
choco install miktex -y
```

**Important:** After installation, open MiKTeX Console and:

1. Go to "Settings"
2. Set "Install missing packages on-the-fly" to "Yes"
3. Click "Check for updates" and install any available updates

### Step 2.5: Install Node.js (Optional)

Required only if you plan to use additional scripting tools.

```powershell
choco install nodejs-lts -y
```

---

## Phase 3: VS Code Configuration

### Step 3.1: Install Required Extensions

Open VS Code and press `Ctrl + Shift + X` to open Extensions panel. Install:

| Extension Name | Purpose |
| --- | --- |
| Markdown All in One | Markdown editing and preview |
| GitLens | Git integration and history |
| Markdown Preview Enhanced | Advanced preview features |

### Step 3.2: Configure Git Identity

Open VS Code Terminal (`Ctrl + Backtick`) and run:

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your.email@example.com"
```

### Step 3.3: Configure VS Code Settings

Press `Ctrl + ,` to open Settings. Search and configure:

| Setting | Value |
| --- | --- |
| `files.autoSave` | `afterDelay` |
| `editor.wordWrap` | `on` |
| `editor.fontSize` | `14` |
| `markdown.preview.fontSize` | `14` |

---

## Phase 4: Workflow Usage

### Step 4.1: Clone or Download Repository

Option A - Clone with Git:

```bash
git clone <repository-url>
cd presentation_tools
```

Option B - Download ZIP:

1. Download the repository as ZIP
2. Extract to a folder of your choice
3. Open the folder in VS Code

### Step 4.2: Create a New Ticket

1. Open `ticket.md` in the root folder
2. Duplicate it or edit directly
3. Fill in all required sections:
   - Project Information
   - Requirements (Topic, Audience, Tone)
   - Constraints (Slide count, Detail level)
   - Key Sections (Outline)
   - Layout Strategy

### Step 4.3: Process Ticket with AI Agent

1. Open GitHub Copilot Chat in VS Code
2. Attach the `ticket.md` file
3. Reference the `schemas/slide_layouts.md` for layout definitions
4. Request content generation following the schema format

### Step 4.4: Review Output

Generated content will be placed in:

```
output/YYYYMMDD_HHmm/
    raw_content.md    # Structured content with layout tags
    metadata.json     # Project metadata
```

### Step 4.5: Build Final Documents

Use VS Code tasks to convert content:

- `Ctrl + Shift + B` - Build PDF (default)
- `Ctrl + Shift + P` then "Tasks: Run Task" then Select format

---

## Troubleshooting

### Problem: Chocolatey command not found

**Solution:** Restart PowerShell after installation. If still not working:

```powershell
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
```

### Problem: Pandoc PDF generation fails

**Solution:** Ensure MiKTeX is installed and configured:

1. Open MiKTeX Console
2. Check for updates
3. Enable "Install missing packages on-the-fly"
4. Try building again

### Problem: Git authentication fails

**Solution:** Configure Git credential manager:

```bash
git config --global credential.helper manager
```

### Problem: VS Code cannot find Pandoc

**Solution:** Add Pandoc to system PATH:

1. Open System Properties then Environment Variables
2. Edit "Path" under System variables
3. Add: `C:\Program Files\Pandoc`
4. Restart VS Code

### Problem: LaTeX fonts missing

**Solution:** Install required fonts via MiKTeX:

1. Open MiKTeX Console
2. Go to "Packages"
3. Search and install: `times`, `fontspec`, `unicode-math`

---

## Project Structure

```
presentation_tools/
    README.md                       # This file (Setup guide)
    ticket.md                       # Input template (bilingual)
    .github/
        copilot-instructions.md     # AI Agent instructions
    schemas/
        slide_layouts.md            # 15 layout definitions
        content_guidelines.md       # Content quality rules
    templates/
        pandoc/
            reference.docx          # DOCX template
    output/
        YYYYMMDD_HHmm/              # Generated content folders
    scripts/
        setup.sh                    # Setup script (Git Bash)
        setup.ps1                   # Setup script (PowerShell)
    examples/
        example_generated_content.md  # Sample output
```

---

## Quick Setup (Automated)

For users who prefer automated setup, run one of these scripts:

**PowerShell (Recommended for Windows):**
```powershell
cd scripts
.\setup.ps1
```

**Git Bash:**
```bash
cd scripts
bash setup.sh
```

---

## References

- Chocolatey Documentation: https://docs.chocolatey.org/
- Pandoc User Guide: https://pandoc.org/MANUAL.html
- MiKTeX Documentation: https://miktex.org/howto
- VS Code Documentation: https://code.visualstudio.com/docs
