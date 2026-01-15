# Presentation Tools

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Initial release |

## Overview

**Presentation Tools** is a complete toolkit designed to help students and professionals create academic presentations and documents **5-10x faster** using modern tools:

- **VS Code** as the primary editor
- **GitHub Copilot** for AI-assisted writing
- **Markdown** for content structure
- **Pandoc** for document conversion (PDF, DOCX)
- **Marp** for slide generation

### Core Principle: "Single Source of Truth"

Write once in Markdown, export to multiple formats:

```
                    ┌─────────────────┐
                    │   Markdown      │
                    │   (.md file)    │
                    └────────┬────────┘
                             │
         ┌───────────────────┼───────────────────┐
         ▼                   ▼                   ▼
┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐
│  PDF Report     │ │  PDF Slides     │ │    DOCX         │
│  (via Pandoc)   │ │  (via Marp)     │ │  (via Pandoc)   │
└─────────────────┘ └─────────────────┘ └─────────────────┘
```

---

## Getting Started Flow

### For First-Time Users

Follow this order:

```
Step 1 ─────────────────────────────────────────────────────────────
│ Setup Complete Guide
│ Install VS Code, Git, Pandoc, MiKTeX, Extensions
│ 📄 docs/guides/00_setup_complete.md
└───────────────────────────────────────────────────────────────────

Step 2 ─────────────────────────────────────────────────────────────
│ Learn Markdown Basics
│ Understand syntax, formatting, diagrams
│ 📄 docs/guides/01_markdown_basics.md
└───────────────────────────────────────────────────────────────────

Step 3 ─────────────────────────────────────────────────────────────
│ Master Pandoc
│ Convert Markdown to PDF, DOCX
│ 📄 docs/guides/02_pandoc_guide.md
└───────────────────────────────────────────────────────────────────

Step 4 ─────────────────────────────────────────────────────────────
│ VS Code Tips & Tricks
│ Shortcuts, Copilot usage, snippets
│ 📄 docs/guides/03_vscode_tips.md
└───────────────────────────────────────────────────────────────────

Step 5 ─────────────────────────────────────────────────────────────
│ Student Workflow
│ The 5-step process: SKELETON → ANCHOR → EXPAND → REVIEW → EXPORT
│ 📄 docs/guides/workflow_student.md
└───────────────────────────────────────────────────────────────────
```

### Quick Start (Experienced Users)

1. Clone this repository
2. Open in VS Code
3. Install recommended extensions (prompt will appear)
4. Start from a template in `templates/`

---

## Project Structure

```
presentation_tools/
├── .github/
│   ├── copilot-instructions.md       # AI behavior configuration
│   └── project-instructions.md       # Project guidelines
├── .vscode/
│   ├── extensions.json               # Recommended extensions
│   ├── settings.json                 # Workspace settings
│   └── tasks.json                    # Build tasks
├── docs/
│   ├── guides/
│   │   ├── 00_setup_complete.md      # Full setup guide
│   │   ├── 01_markdown_basics.md     # Markdown tutorial
│   │   ├── 02_pandoc_guide.md        # Pandoc usage
│   │   ├── 03_vscode_tips.md         # VS Code tips
│   │   ├── quick_start.md            # 10-minute quickstart
│   │   └── workflow_student.md       # Student workflow
│   └── instructions/
│       └── instruction_00.md         # Background discussion
├── templates/
│   ├── marp/
│   │   ├── template_academic.md      # General academic slides
│   │   ├── template_technical.md     # Technical project slides
│   │   └── template_thesis.md        # Thesis defense slides
│   ├── pandoc/
│   │   └── reference.docx            # DOCX template
│   └── prompts/
│       └── prompt_structure.md       # AI prompt templates
├── examples/                          # Example documents
└── README.md
```

---

## Workflow Overview

### The 5-Step Process

```
┌─────────────────────────────────────────────────────────────────┐
│  1. SKELETON (2-3 min)                                          │
│     Create heading structure                                    │
│     # Title → ## Section → ### Subsection                       │
├─────────────────────────────────────────────────────────────────┤
│  2. ANCHOR (5-10 min)                                           │
│     Write first sentence for each section                       │
│     This tells AI what direction to go                          │
├─────────────────────────────────────────────────────────────────┤
│  3. EXPAND (10-15 min)                                          │
│     Let Copilot fill in details                                 │
│     Tab to accept, Esc to skip                                  │
├─────────────────────────────────────────────────────────────────┤
│  4. REVIEW (5-10 min)                                           │
│     Read aloud, edit, verify facts                              │
│     Remove AI fluff                                             │
├─────────────────────────────────────────────────────────────────┤
│  5. EXPORT (1-2 min)                                            │
│     pandoc → PDF/DOCX                                           │
│     Marp → Slides                                               │
└─────────────────────────────────────────────────────────────────┘

Total Time: 25-40 minutes (vs 2-3 hours traditional)
```

---

## Documentation Index

### Setup & Basics

| Document | Description | Time |
| --- | --- | --- |
| [Setup Complete](docs/guides/00_setup_complete.md) | Full installation guide | 15-20 min |
| [Markdown Basics](docs/guides/01_markdown_basics.md) | Learn Markdown syntax | 30 min |
| [Pandoc Guide](docs/guides/02_pandoc_guide.md) | Master document conversion | 20 min |
| [VS Code Tips](docs/guides/03_vscode_tips.md) | Editor productivity | 15 min |

### Workflow & Templates

| Document | Description |
| --- | --- |
| [Quick Start](docs/guides/quick_start.md) | Start in 10 minutes |
| [Student Workflow](docs/guides/workflow_student.md) | Complete 5-step process |
| [Prompt Templates](templates/prompts/prompt_structure.md) | AI prompts for content |

### Slide Templates

| Template | Use Case |
| --- | --- |
| [Academic](templates/marp/template_academic.md) | General presentations |
| [Technical](templates/marp/template_technical.md) | Technical projects |
| [Thesis](templates/marp/template_thesis.md) | Thesis defense |

---

## Why This Approach?

| Aspect | Traditional | This Method |
| --- | --- | --- |
| Time | 2-3 hours | 25-40 minutes |
| Sync | Manual copy between report & slides | Auto-sync from one source |
| Formatting | Click buttons repeatedly | Write once, style via templates |
| Version Control | file_v1, file_v2, file_final... | Git history |
| AI Assistance | Copy-paste to ChatGPT | Inline Copilot suggestions |

### Time Savings: **70-80%**

---

## Requirements

### Software

| Software | Purpose | Required |
| --- | --- | --- |
| VS Code | Editor | Yes |
| Git | Clone & version control | Yes |
| Pandoc | Document conversion | Yes |
| MiKTeX/TeX Live | PDF generation | Yes (for PDF) |

### Accounts

| Account | Purpose | Required |
| --- | --- | --- |
| GitHub | Copilot, Git | Yes |
| GitHub Copilot | AI assistance | Recommended |

### Skills

- Basic typing
- No programming required

---

## Installation Quick Commands

### Windows (PowerShell)

```powershell
# Install with winget (if available)
winget install Microsoft.VisualStudioCode
winget install Git.Git
winget install JohnMacFarlane.Pandoc
winget install MiKTeX.MiKTeX
```

### Clone This Repository

```powershell
git clone https://github.com/your-username/presentation_tools.git
cd presentation_tools
code .
```

---

## Build Commands

### Using Pandoc (in terminal)

```powershell
# Markdown → PDF
pandoc document.md -o output.pdf --pdf-engine=xelatex -V mainfont="Times New Roman"

# Markdown → DOCX
pandoc document.md -o output.docx

# With Table of Contents
pandoc document.md -o output.pdf --toc -N --pdf-engine=xelatex
```

### Using VS Code Tasks

`Ctrl+Shift+P` → "Tasks: Run Task" → Select build task

---

## Target Users

- High school students
- University students
- Technical professionals
- Researchers and academics
- Anyone who wants to focus on **content** rather than **formatting**

---

## Contributing

This is an Elix project. Contributions welcome via pull requests.

---

## License

MIT License - Free to use and modify.

---

## Support

If you encounter issues:

1. Check [Troubleshooting](docs/guides/00_setup_complete.md#8-troubleshooting)
2. Read the specific guide for your problem
3. Open an issue on GitHub
