# Hướng Dẫn Sử Dụng VS Code - VS Code Tips & Tricks

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | VS Code guide for efficient document editing |

## Table of Contents

1. [Giao Diện Cơ Bản](#1-giao-diện-cơ-bản)
2. [Keyboard Shortcuts](#2-keyboard-shortcuts)
3. [Làm Việc Với Markdown](#3-làm-việc-với-markdown)
4. [Sử Dụng GitHub Copilot](#4-sử-dụng-github-copilot)
5. [Terminal Tích Hợp](#5-terminal-tích-hợp)
6. [Snippets Tự Tạo](#6-snippets-tự-tạo)
7. [Settings Khuyên Dùng](#7-settings-khuyên-dùng)
8. [Workspace Setup](#8-workspace-setup)

---

## 1. Giao Diện Cơ Bản

### Layout Chính

```
┌─────────────────────────────────────────────────────────┐
│  Menu Bar (File, Edit, View, ...)                       │
├───────┬─────────────────────────────────┬───────────────┤
│       │                                 │               │
│ Side  │       Editor Area               │  Side Panel   │
│ Bar   │    (Files you're editing)       │  (Optional)   │
│       │                                 │               │
├───────┴─────────────────────────────────┴───────────────┤
│  Panel (Terminal, Problems, Output)                     │
├─────────────────────────────────────────────────────────┤
│  Status Bar                                             │
└─────────────────────────────────────────────────────────┘
```

### Side Bar Icons

| Icon | Tên | Phím Tắt | Mô Tả |
| --- | --- | --- | --- |
| 📁 | Explorer | `Ctrl+Shift+E` | Duyệt files |
| 🔍 | Search | `Ctrl+Shift+F` | Tìm kiếm |
| 🔀 | Source Control | `Ctrl+Shift+G` | Git |
| 🐛 | Run and Debug | `Ctrl+Shift+D` | Debug |
| 🧩 | Extensions | `Ctrl+Shift+X` | Extensions |

### Ẩn/Hiện Các Panel

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+B` | Ẩn/hiện Side Bar |
| `Ctrl+J` | Ẩn/hiện Panel (Terminal) |
| `Ctrl+\` | Split editor |
| `F11` | Full screen |
| `Ctrl+K Z` | Zen Mode (focus mode) |

---

## 2. Keyboard Shortcuts

### 2.1. Navigation (Di Chuyển)

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+P` | Quick Open file |
| `Ctrl+G` | Go to line number |
| `Ctrl+Shift+O` | Go to symbol (heading) |
| `Ctrl+Tab` | Switch between open files |
| `Alt+←/→` | Navigate back/forward |
| `Ctrl+Home/End` | Đầu/cuối file |

### 2.2. Editing (Chỉnh Sửa)

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+X` | Cut line (không cần select) |
| `Ctrl+C` | Copy line (không cần select) |
| `Ctrl+Shift+K` | Delete line |
| `Alt+↑/↓` | Move line up/down |
| `Shift+Alt+↑/↓` | Copy line up/down |
| `Ctrl+/` | Toggle comment |
| `Ctrl+D` | Select next occurrence |
| `Ctrl+Shift+L` | Select all occurrences |
| `Ctrl+L` | Select entire line |
| `Ctrl+Enter` | Insert line below |
| `Ctrl+Shift+Enter` | Insert line above |
| `Ctrl+]` | Indent line |
| `Ctrl+[` | Outdent line |

### 2.3. Multi-Cursor (Nhiều Con Trỏ)

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Alt+Click` | Add cursor |
| `Ctrl+Alt+↑/↓` | Add cursor above/below |
| `Ctrl+Shift+L` | Cursor at all selections |
| `Esc` | Exit multi-cursor |

### 2.4. Search & Replace

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+F` | Find in file |
| `Ctrl+H` | Find and replace |
| `Ctrl+Shift+F` | Find in all files |
| `Ctrl+Shift+H` | Replace in all files |
| `F3` / `Shift+F3` | Next/previous match |
| `Alt+Enter` | Select all matches |

### 2.5. View & Layout

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+\` | Split editor |
| `Ctrl+1/2/3` | Focus editor group 1/2/3 |
| `Ctrl+W` | Close tab |
| `Ctrl+K W` | Close all tabs |
| `Ctrl+Shift+T` | Reopen closed tab |
| `Ctrl+K Ctrl+←/→` | Move editor to left/right group |

---

## 3. Làm Việc Với Markdown

### 3.1. Preview Markdown

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+Shift+V` | Open preview |
| `Ctrl+K V` | Open preview to side |

### 3.2. Markdown All in One Extension

Sau khi cài extension này:

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+B` | Bold text |
| `Ctrl+I` | Italic text |
| `Ctrl+Shift+]` | Toggle heading level |
| `Alt+C` | Toggle task checkbox |
| `Ctrl+Shift+V` | Paste image from clipboard |

**Tự động tạo TOC:**
1. Đặt cursor nơi muốn thêm TOC
2. `Ctrl+Shift+P` → "Create Table of Contents"

### 3.3. Marp Preview

| Phím Tắt | Tác Dụng |
| --- | --- |
| `Ctrl+Shift+P` | Mở Command Palette |
| Gõ "Marp: Open Preview" | Xem slide preview |
| Gõ "Marp: Export" | Export slides |

### 3.4. Tips Cho Việc Viết

**Outline View:**
1. View → Open View → Outline
2. Hoặc click icon Outline trong Explorer
3. Xem tất cả headings, dễ navigate

**Breadcrumbs:**
- Hiển thị đường dẫn đến vị trí hiện tại
- Enable: View → Show Breadcrumbs

**Minimap:**
- Overview của file bên phải
- Enable/Disable: View → Show Minimap

---

## 4. Sử Dụng GitHub Copilot

### 4.1. Cách Hoạt Động

Copilot đọc context từ:
- File đang mở
- Các file khác trong project
- Comment và heading
- Câu bạn đang gõ

### 4.2. Inline Suggestions

| Hành Động | Phím |
| --- | --- |
| Chấp nhận gợi ý | `Tab` |
| Bỏ qua gợi ý | `Esc` |
| Xem gợi ý tiếp | `Alt+]` |
| Xem gợi ý trước | `Alt+[` |
| Xem tất cả gợi ý | `Ctrl+Enter` |
| Chấp nhận từng word | `Ctrl+→` |

### 4.3. Copilot Chat

| Hành Động | Phím |
| --- | --- |
| Mở Chat panel | `Ctrl+Alt+I` |
| Inline chat | `Ctrl+I` |

### 4.4. Tips Để Copilot Gợi Ý Tốt Hơn

**1. Viết comment rõ ràng:**

```markdown
<!-- Viết 5 lợi ích của AI trong giáo dục, mỗi điểm kèm ví dụ cụ thể -->

-
```

**2. Viết heading rồi để trống:**

```markdown
## Các Thách Thức Khi Triển Khai AI

```

**3. Bắt đầu một pattern:**

```markdown
| Tiêu chí | Phương án A | Phương án B |
| --- | --- | --- |
| Chi phí |
```

**4. Viết câu mở đầu:**

```markdown
## Kết Luận

Tóm lại, nghiên cứu này đã chứng minh rằng
```

### 4.5. Copilot Slash Commands (trong Chat)

| Command | Tác Dụng |
| --- | --- |
| `/explain` | Giải thích code/text đang chọn |
| `/fix` | Sửa lỗi |
| `/tests` | Viết tests |
| `/doc` | Tạo documentation |

---

## 5. Terminal Tích Hợp

### 5.1. Mở Terminal

| Phím Tắt | Tác Dụng |
| --- | --- |
| `` Ctrl+` `` | Toggle terminal |
| `Ctrl+Shift+`` | New terminal |
| `Ctrl+Shift+5` | Split terminal |

### 5.2. Quản Lý Terminals

- Click `+` để tạo terminal mới
- Click tên terminal để rename
- Click thùng rác để kill terminal

### 5.3. Chạy Pandoc Từ Terminal

```powershell
# Navigate to folder
cd D:\MyProject

# Run Pandoc
pandoc document.md -o output.pdf

# Xem file vừa tạo
start output.pdf
```

### 5.4. PowerShell vs Command Prompt

Trong VS Code, có thể chọn shell:
1. Click mũi tên cạnh `+` trong terminal
2. Chọn shell muốn dùng

**Khuyên dùng**: PowerShell (mạnh hơn)

---

## 6. Snippets Tự Tạo

### 6.1. Tạo Snippet

1. `Ctrl+Shift+P` → "Configure User Snippets"
2. Chọn "markdown.json"
3. Thêm snippet

### 6.2. Ví Dụ Snippets Cho Markdown

```json
{
    "Marp Slide Header": {
        "prefix": "marp",
        "body": [
            "---",
            "marp: true",
            "theme: default",
            "paginate: true",
            "---",
            "",
            "# $1",
            "",
            "$0"
        ],
        "description": "Marp slide header"
    },

    "New Slide": {
        "prefix": "slide",
        "body": [
            "---",
            "",
            "# $1",
            "",
            "- $2",
            "- $3",
            "- $4",
            "",
            "$0"
        ],
        "description": "New Marp slide"
    },

    "Table 3 Columns": {
        "prefix": "table3",
        "body": [
            "| ${1:Header 1} | ${2:Header 2} | ${3:Header 3} |",
            "| --- | --- | --- |",
            "| $4 | $5 | $6 |",
            "| $7 | $8 | $9 |",
            "$0"
        ],
        "description": "Table with 3 columns"
    },

    "Code Block": {
        "prefix": "code",
        "body": [
            "```${1|python,javascript,bash,json,yaml|}",
            "$2",
            "```",
            "$0"
        ],
        "description": "Fenced code block"
    },

    "Mermaid Flowchart": {
        "prefix": "mermaid",
        "body": [
            "```mermaid",
            "graph ${1|TD,LR,TB,RL|}",
            "    A[$2] --> B[$3]",
            "    B --> C[$4]",
            "```",
            "$0"
        ],
        "description": "Mermaid flowchart"
    },

    "Speaker Note": {
        "prefix": "note",
        "body": [
            "<!--",
            "Speaker notes:",
            "$1",
            "-->",
            "$0"
        ],
        "description": "Marp speaker note"
    },

    "Document Header": {
        "prefix": "docheader",
        "body": [
            "# ${1:Document Title}",
            "",
            "| Version | Date | Author | Description |",
            "| --- | --- | --- | --- |",
            "| 1.0.0 | ${CURRENT_YEAR}-${CURRENT_MONTH}-${CURRENT_DATE} | ${2:Author} | ${3:Initial version} |",
            "",
            "## Table of Contents",
            "",
            "1. [Introduction](#1-introduction)",
            "2. [Main Content](#2-main-content)",
            "3. [Conclusion](#3-conclusion)",
            "",
            "---",
            "",
            "## 1. Introduction",
            "",
            "$0"
        ],
        "description": "Standard document header"
    }
}
```

### 6.3. Sử Dụng Snippets

1. Gõ prefix (ví dụ: `marp`)
2. Nhấn `Tab` để expand
3. `Tab` để di chuyển giữa các placeholder
4. Gõ để thay thế placeholder

---

## 7. Settings Khuyên Dùng

### 7.1. Mở Settings

- `Ctrl+,` → GUI Settings
- `Ctrl+Shift+P` → "Open Settings (JSON)" → File JSON

### 7.2. Settings JSON Khuyên Dùng

Thêm vào `settings.json`:

```json
{
    // Editor
    "editor.fontSize": 14,
    "editor.fontFamily": "'Cascadia Code', 'Fira Code', Consolas, monospace",
    "editor.fontLigatures": true,
    "editor.wordWrap": "on",
    "editor.lineHeight": 1.6,
    "editor.minimap.enabled": false,
    "editor.renderWhitespace": "selection",
    "editor.bracketPairColorization.enabled": true,
    "editor.guides.bracketPairs": true,

    // Cursor
    "editor.cursorBlinking": "smooth",
    "editor.cursorSmoothCaretAnimation": "on",

    // Files
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "files.trimTrailingWhitespace": true,
    "files.insertFinalNewline": true,

    // Markdown
    "markdown.preview.fontSize": 14,
    "markdown.preview.lineHeight": 1.6,
    "[markdown]": {
        "editor.wordWrap": "on",
        "editor.quickSuggestions": {
            "other": true,
            "comments": true,
            "strings": true
        }
    },

    // Marp
    "markdown.marp.enableHtml": true,

    // Terminal
    "terminal.integrated.fontSize": 13,
    "terminal.integrated.defaultProfile.windows": "PowerShell",

    // Copilot
    "github.copilot.enable": {
        "*": true,
        "markdown": true,
        "plaintext": true
    },

    // Workbench
    "workbench.startupEditor": "none",
    "workbench.tree.indent": 16,
    "workbench.iconTheme": "material-icon-theme"
}
```

### 7.3. Workspace Settings

Tạo file `.vscode/settings.json` trong project:

```json
{
    "files.exclude": {
        "**/.git": true,
        "**/node_modules": true,
        "**/*.pdf": false
    },
    "markdown.marp.themes": [
        "./themes/custom.css"
    ],
    "editor.formatOnSave": true
}
```

---

## 8. Workspace Setup

### 8.1. Recommended Extensions Cho Project

Tạo file `.vscode/extensions.json`:

```json
{
    "recommendations": [
        "marp-team.marp-vscode",
        "GitHub.copilot",
        "yzhang.markdown-all-in-one",
        "shd101wyy.markdown-preview-enhanced",
        "bierner.markdown-mermaid",
        "streetsidesoftware.code-spell-checker",
        "yzane.markdown-pdf",
        "PKief.material-icon-theme"
    ]
}
```

Khi mở project, VS Code sẽ gợi ý cài các extensions này.

### 8.2. Tasks.json Cho Build

Tạo file `.vscode/tasks.json`:

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Build PDF (Pandoc)",
            "type": "shell",
            "command": "pandoc",
            "args": [
                "${file}",
                "-o",
                "${fileDirname}/output/${fileBasenameNoExtension}.pdf",
                "--pdf-engine=xelatex",
                "-V", "geometry:margin=2.5cm",
                "-V", "fontsize=13pt",
                "-V", "mainfont=Times New Roman",
                "-V", "linestretch=1.5",
                "--toc",
                "-N"
            ],
            "group": "build",
            "problemMatcher": []
        },
        {
            "label": "Build DOCX (Pandoc)",
            "type": "shell",
            "command": "pandoc",
            "args": [
                "${file}",
                "-o",
                "${fileDirname}/output/${fileBasenameNoExtension}.docx",
                "--toc"
            ],
            "group": "build",
            "problemMatcher": []
        },
        {
            "label": "Export Marp PDF",
            "type": "shell",
            "command": "npx",
            "args": [
                "@marp-team/marp-cli",
                "${file}",
                "--pdf",
                "-o",
                "${fileDirname}/output/${fileBasenameNoExtension}_slides.pdf"
            ],
            "group": "build",
            "problemMatcher": []
        }
    ]
}
```

Chạy: `Ctrl+Shift+P` → "Tasks: Run Task" → Chọn task

### 8.3. Keybindings Tự Thêm

Tạo hoặc edit `keybindings.json` (`Ctrl+K Ctrl+S` → icon file góc trên):

```json
[
    {
        "key": "ctrl+alt+p",
        "command": "workbench.action.tasks.runTask",
        "args": "Build PDF (Pandoc)"
    },
    {
        "key": "ctrl+alt+d",
        "command": "workbench.action.tasks.runTask",
        "args": "Build DOCX (Pandoc)"
    },
    {
        "key": "ctrl+alt+m",
        "command": "markdown.marp.export"
    }
]
```

---

## Quick Reference

### Navigation

| Phím | Tác Dụng |
| --- | --- |
| `Ctrl+P` | Quick Open |
| `Ctrl+G` | Go to Line |
| `Ctrl+Shift+O` | Go to Symbol |
| `Ctrl+Tab` | Switch Tab |

### Editing

| Phím | Tác Dụng |
| --- | --- |
| `Ctrl+D` | Select Next |
| `Alt+↑/↓` | Move Line |
| `Ctrl+/` | Comment |
| `Ctrl+Shift+K` | Delete Line |

### Markdown

| Phím | Tác Dụng |
| --- | --- |
| `Ctrl+Shift+V` | Preview |
| `Ctrl+K V` | Preview Side |

### Copilot

| Phím | Tác Dụng |
| --- | --- |
| `Tab` | Accept |
| `Esc` | Dismiss |
| `Ctrl+I` | Inline Chat |

---

## Tài Liệu Tham Khảo

- [VS Code Docs](https://code.visualstudio.com/docs)
- [VS Code Keyboard Shortcuts](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [GitHub Copilot](https://docs.github.com/copilot)
