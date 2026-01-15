# Project Instructions - Presentation Tools

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Core project guidelines and philosophy |

## 1. Project Philosophy

### Core Principle: "Single Source of Truth"

One Markdown file produces multiple outputs:
- **PDF Report** (via Pandoc or Markdown PDF)
- **Slide Deck** (via Marp)
- **HTML Documentation** (via static site generators)

### Target Users

- High school and university students
- Technical professionals creating presentations
- Anyone who wants to separate **thinking** from **formatting**

## 2. Project Structure

```
presentation_tools/
├── .github/
│   ├── copilot-instructions.md    # AI behavior config
│   └── project-instructions.md    # This file
├── docs/
│   ├── instructions/              # Learning materials
│   ├── guides/                    # How-to guides
│   └── references/                # Reference documentation
├── templates/
│   ├── marp/                      # Slide templates
│   ├── report/                    # Report templates
│   └── prompts/                   # AI prompt templates
├── examples/
│   ├── presentations/             # Example presentations
│   └── reports/                   # Example reports
└── README.md
```

## 3. Workflow Standards

### Standard Presentation Workflow

```
1. SKELETON    → Create heading structure (2-3 min)
2. ANCHOR      → Write first sentence per section
3. EXPAND      → Let Copilot fill details
4. REVIEW      → Human judgment and editing
5. EXPORT      → Generate PDF/PPTX via Marp
```

### Quality Gates

Before export, every document must pass:

| Gate | Check |
| --- | --- |
| Structure | All sections have proper headings |
| Content | No placeholder text remaining |
| Logic | Flow makes sense when read aloud |
| Visual | Diagrams/tables where needed |
| Grammar | No obvious errors |

## 4. AI Usage Guidelines

### DO

- Use AI as a **content architect**
- Provide clear context in prompts
- Review and edit AI output critically
- Use AI for expanding bullet points

### DO NOT

- Let AI decide the main message
- Accept AI output without review
- Use AI for emotional/creative storytelling
- Trust AI for factual accuracy (verify sources)

## 5. Template Categories

### Academic

- Thesis defense
- Research presentation
- Course project report
- Literature review

### Technical

- System architecture
- API documentation
- Technical proposal
- Progress report

### Business

- Project pitch
- Status update
- Proposal presentation

## 6. Output Formats

| Format | Tool | Use Case |
| --- | --- | --- |
| PDF Slides | Marp CLI | Presentation delivery |
| PPTX | Marp CLI | Editable slides |
| PDF Report | Pandoc | Document submission |
| HTML | Marp/Pandoc | Online sharing |

## 7. Extension Requirements

Required VS Code extensions:
- `marp-team.marp-vscode` - Marp for VS Code
- `github.copilot` - GitHub Copilot
- `yzane.markdown-pdf` - Markdown PDF export
- `bierner.markdown-mermaid` - Mermaid diagram support
