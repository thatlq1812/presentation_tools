# Hướng Dẫn Sử Dụng Pandoc - Pandoc Complete Guide

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Complete Pandoc guide for document conversion |

## Table of Contents

1. [Pandoc Là Gì?](#1-pandoc-là-gì)
2. [Cú Pháp Cơ Bản](#2-cú-pháp-cơ-bản)
3. [Export PDF](#3-export-pdf)
4. [Export DOCX](#4-export-docx)
5. [Export HTML](#5-export-html)
6. [Templates Và Styling](#6-templates-và-styling)
7. [Metadata Và YAML](#7-metadata-và-yaml)
8. [Scripts Tự Động](#8-scripts-tự-động)
9. [Troubleshooting](#9-troubleshooting)

---

## 1. Pandoc Là Gì?

### Định Nghĩa

**Pandoc** là "Swiss-army knife" cho việc chuyển đổi tài liệu. Nó có thể convert giữa hầu hết các format văn bản.

### Các Format Hỗ Trợ

```
INPUT:  Markdown, HTML, LaTeX, DOCX, ODT, EPUB, MediaWiki, ...
OUTPUT: PDF, DOCX, HTML, LaTeX, EPUB, Slides (Beamer, reveal.js), ...
```

### Tại Sao Dùng Pandoc?

| Cách Thủ Công | Với Pandoc |
| --- | --- |
| Copy từ Markdown → Word | 1 lệnh: `pandoc input.md -o output.docx` |
| Format lại mỗi lần export | Dùng template, luôn nhất quán |
| Khó batch process | Dễ tự động hóa với scripts |

---

## 2. Cú Pháp Cơ Bản

### Cấu Trúc Lệnh

```
pandoc [OPTIONS] INPUT_FILE -o OUTPUT_FILE
```

### Ví Dụ Đơn Giản

```powershell
# Markdown → PDF
pandoc document.md -o document.pdf

# Markdown → DOCX
pandoc document.md -o document.docx

# Markdown → HTML
pandoc document.md -o document.html
```

### Các Options Phổ Biến

| Option | Mô Tả | Ví Dụ |
| --- | --- | --- |
| `-o` | Output file | `-o output.pdf` |
| `-f` | Input format | `-f markdown` |
| `-t` | Output format | `-t html` |
| `-s` | Standalone (full document) | `-s` |
| `--toc` | Table of contents | `--toc` |
| `-N` | Number sections | `-N` |
| `--template` | Custom template | `--template=my.latex` |
| `-V` | Set variable | `-V geometry:margin=1in` |

---

## 3. Export PDF

### 3.1. Lệnh Cơ Bản

```powershell
pandoc document.md -o document.pdf
```

### 3.2. Với Table of Contents

```powershell
pandoc document.md -o document.pdf --toc --toc-depth=3
```

### 3.3. Tùy Chỉnh Margins

```powershell
pandoc document.md -o document.pdf -V geometry:margin=2.5cm
```

### 3.4. Tùy Chỉnh Font Size

```powershell
pandoc document.md -o document.pdf -V fontsize=12pt
```

### 3.5. Sử Dụng Font Tiếng Việt

```powershell
pandoc document.md -o document.pdf ^
  --pdf-engine=xelatex ^
  -V mainfont="Times New Roman" ^
  -V monofont="Consolas"
```

### 3.6. Lệnh Đầy Đủ Cho Báo Cáo Tiếng Việt

```powershell
pandoc document.md -o document.pdf ^
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
```

### 3.7. PDF Engine Options

| Engine | Ưu Điểm | Nhược Điểm |
| --- | --- | --- |
| pdflatex | Nhanh, phổ biến | Khó dùng font Unicode |
| xelatex | Hỗ trợ Unicode tốt | Chậm hơn pdflatex |
| lualatex | Linh hoạt nhất | Chậm nhất |

**Khuyên dùng**: `xelatex` cho tài liệu tiếng Việt.

---

## 4. Export DOCX

### 4.1. Lệnh Cơ Bản

```powershell
pandoc document.md -o document.docx
```

### 4.2. Với Reference Document (Template)

```powershell
pandoc document.md -o document.docx --reference-doc=template.docx
```

### 4.3. Tạo Reference Document

1. Export một file DOCX bất kỳ:
   ```powershell
   pandoc --print-default-data-file reference.docx > template.docx
   ```

2. Mở `template.docx` trong Word

3. Chỉnh sửa styles:
   - Home → Styles
   - Chỉnh Heading 1, Heading 2, Normal, etc.
   - Chỉnh font, size, spacing

4. Lưu file

5. Dùng làm template:
   ```powershell
   pandoc document.md -o output.docx --reference-doc=template.docx
   ```

### 4.4. Với TOC

```powershell
pandoc document.md -o document.docx --toc
```

---

## 5. Export HTML

### 5.1. Lệnh Cơ Bản

```powershell
pandoc document.md -o document.html
```

### 5.2. Standalone HTML

```powershell
pandoc document.md -o document.html -s
```

### 5.3. Với CSS Styling

```powershell
pandoc document.md -o document.html -s --css=style.css
```

### 5.4. Với Syntax Highlighting

```powershell
pandoc document.md -o document.html -s --highlight-style=pygments
```

Các highlight styles: `pygments`, `kate`, `monochrome`, `espresso`, `zenburn`, `haddock`, `tango`

### 5.5. HTML5 Output

```powershell
pandoc document.md -o document.html -s -t html5
```

---

## 6. Templates Và Styling

### 6.1. Xem Default Template

```powershell
# Template LaTeX (cho PDF)
pandoc --print-default-template=latex > default.latex

# Template HTML
pandoc --print-default-template=html > default.html
```

### 6.2. Tạo Custom LaTeX Template

Tạo file `custom.latex`:

```latex
\documentclass[12pt,a4paper]{article}

% Vietnamese support
\usepackage{fontspec}
\setmainfont{Times New Roman}

% Margins
\usepackage[margin=2.5cm]{geometry}

% Line spacing
\usepackage{setspace}
\onehalfspacing

% Header/Footer
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[L]{$title$}
\fancyhead[R]{$author$}
\fancyfoot[C]{\thepage}

% Title
\title{$title$}
\author{$author$}
\date{$date$}

\begin{document}

$if(title)$
\maketitle
$endif$

$if(toc)$
\tableofcontents
\newpage
$endif$

$body$

\end{document}
```

Sử dụng:

```powershell
pandoc document.md -o document.pdf --template=custom.latex --pdf-engine=xelatex
```

### 6.3. CSS Cho HTML

Tạo file `style.css`:

```css
body {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    line-height: 1.6;
}

h1, h2, h3 {
    color: #2c3e50;
    border-bottom: 1px solid #eee;
    padding-bottom: 0.3em;
}

code {
    background: #f4f4f4;
    padding: 2px 6px;
    border-radius: 3px;
}

pre {
    background: #2d2d2d;
    color: #f8f8f2;
    padding: 15px;
    border-radius: 5px;
    overflow-x: auto;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #3498db;
    color: white;
}

blockquote {
    border-left: 4px solid #3498db;
    margin: 0;
    padding-left: 15px;
    color: #666;
}
```

---

## 7. Metadata Và YAML

### 7.1. YAML Front Matter

Thêm vào đầu file Markdown:

```yaml
---
title: "Báo Cáo Đồ Án"
author: "Nguyễn Văn A"
date: "2026-01-15"
abstract: "Tóm tắt nội dung báo cáo..."
keywords: [AI, Machine Learning, Deep Learning]
lang: vi
---

# Nội Dung Bắt Đầu Từ Đây
```

### 7.2. Metadata Variables

| Variable | Mô Tả |
| --- | --- |
| `title` | Tiêu đề |
| `author` | Tác giả |
| `date` | Ngày |
| `abstract` | Tóm tắt |
| `toc` | Bật/tắt TOC |
| `toc-depth` | Độ sâu TOC |
| `numbersections` | Đánh số section |
| `lang` | Ngôn ngữ |
| `fontsize` | Cỡ chữ |
| `geometry` | Margins |
| `mainfont` | Font chính |
| `monofont` | Font code |
| `linestretch` | Khoảng cách dòng |

### 7.3. Ví Dụ Đầy Đủ

```yaml
---
title: "Ứng Dụng Deep Learning Trong Nhận Dạng Khuôn Mặt"
author:
  - name: "Nguyễn Văn A"
    affiliation: "Đại học Bách Khoa"
    email: "nguyenvana@example.com"
date: "Tháng 1, 2026"
abstract: |
  Báo cáo này trình bày nghiên cứu về ứng dụng Deep Learning
  trong bài toán nhận dạng khuôn mặt. Chúng tôi so sánh hiệu năng
  của các kiến trúc CNN phổ biến...
lang: vi
toc: true
toc-depth: 3
numbersections: true
fontsize: 13pt
geometry: margin=2.5cm
mainfont: "Times New Roman"
monofont: "Consolas"
linestretch: 1.5
header-includes:
  - \usepackage{indentfirst}
  - \setlength{\parindent}{1cm}
---
```

---

## 8. Scripts Tự Động

### 8.1. Windows Batch Script

Tạo file `build.bat`:

```batch
@echo off
echo Building PDF...
pandoc document.md -o output/document.pdf ^
  --pdf-engine=xelatex ^
  -V geometry:margin=2.5cm ^
  -V fontsize=13pt ^
  -V mainfont="Times New Roman" ^
  -V linestretch=1.5 ^
  --toc ^
  -N

echo Building DOCX...
pandoc document.md -o output/document.docx ^
  --reference-doc=templates/reference.docx ^
  --toc

echo Building HTML...
pandoc document.md -o output/document.html ^
  -s ^
  --css=templates/style.css ^
  --toc

echo Done!
pause
```

### 8.2. PowerShell Script

Tạo file `build.ps1`:

```powershell
# Build script for Pandoc

$inputFile = "document.md"
$outputDir = "output"

# Create output directory if not exists
if (!(Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir
}

# Build PDF
Write-Host "Building PDF..." -ForegroundColor Green
pandoc $inputFile -o "$outputDir/document.pdf" `
    --pdf-engine=xelatex `
    -V geometry:margin=2.5cm `
    -V fontsize=13pt `
    -V "mainfont=Times New Roman" `
    -V linestretch=1.5 `
    --toc `
    -N

# Build DOCX
Write-Host "Building DOCX..." -ForegroundColor Green
pandoc $inputFile -o "$outputDir/document.docx" `
    --reference-doc=templates/reference.docx `
    --toc

# Build HTML
Write-Host "Building HTML..." -ForegroundColor Green
pandoc $inputFile -o "$outputDir/document.html" `
    -s `
    --css=templates/style.css `
    --toc

Write-Host "Done!" -ForegroundColor Cyan
```

Chạy: `.\build.ps1`

### 8.3. Makefile (Cross-platform)

Tạo file `Makefile`:

```makefile
INPUT = document.md
OUTPUT_DIR = output
PDF = $(OUTPUT_DIR)/document.pdf
DOCX = $(OUTPUT_DIR)/document.docx
HTML = $(OUTPUT_DIR)/document.html

PANDOC_PDF = pandoc $(INPUT) -o $(PDF) \
	--pdf-engine=xelatex \
	-V geometry:margin=2.5cm \
	-V fontsize=13pt \
	-V mainfont="Times New Roman" \
	--toc -N

PANDOC_DOCX = pandoc $(INPUT) -o $(DOCX) \
	--reference-doc=templates/reference.docx \
	--toc

PANDOC_HTML = pandoc $(INPUT) -o $(HTML) \
	-s --css=templates/style.css --toc

all: $(PDF) $(DOCX) $(HTML)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(PDF): $(INPUT) | $(OUTPUT_DIR)
	$(PANDOC_PDF)

$(DOCX): $(INPUT) | $(OUTPUT_DIR)
	$(PANDOC_DOCX)

$(HTML): $(INPUT) | $(OUTPUT_DIR)
	$(PANDOC_HTML)

clean:
	rm -rf $(OUTPUT_DIR)

.PHONY: all clean
```

Chạy:
- `make` - Build tất cả
- `make pdf` - Chỉ build PDF
- `make clean` - Xóa output

### 8.4. VS Code Task

Tạo file `.vscode/tasks.json`:

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Build PDF",
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
                "--toc",
                "-N"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "problemMatcher": []
        },
        {
            "label": "Build DOCX",
            "type": "shell",
            "command": "pandoc",
            "args": [
                "${file}",
                "-o",
                "${fileDirname}/output/${fileBasenameNoExtension}.docx",
                "--toc"
            ],
            "problemMatcher": []
        },
        {
            "label": "Build All",
            "dependsOn": ["Build PDF", "Build DOCX"],
            "problemMatcher": []
        }
    ]
}
```

Chạy: `Ctrl+Shift+B` (Build task)

---

## 9. Troubleshooting

### Lỗi: Unicode/Tiếng Việt Không Hiển Thị

**Triệu chứng**: Chữ tiếng Việt bị lỗi hoặc không hiện

**Giải pháp**:
```powershell
pandoc document.md -o document.pdf ^
  --pdf-engine=xelatex ^
  -V mainfont="Times New Roman"
```

### Lỗi: `! LaTeX Error: File 'xxx.sty' not found`

**Nguyên nhân**: Thiếu LaTeX package

**Giải pháp**:
1. Mở MiKTeX Console
2. Settings → "Install missing packages on-the-fly" → Yes
3. Chạy lại lệnh

Hoặc cài thủ công:
```powershell
miktex-console --admin
# Vào Packages → Tìm và cài package cần thiết
```

### Lỗi: `pdflatex not found`

**Giải pháp**: Thêm MiKTeX vào PATH
1. Tìm thư mục bin của MiKTeX (thường `C:\Program Files\MiKTeX\miktex\bin\x64`)
2. Thêm vào System PATH

### Lỗi: Font Không Tìm Thấy

**Triệu chứng**: `fontspec error: "font-not-found"`

**Giải pháp**:
1. Kiểm tra font đã cài trong Windows
2. Dùng tên font chính xác (có thể khác với tên hiển thị)
3. Liệt kê fonts: Chạy script sau
   ```powershell
   fc-list : family
   ```

### Lỗi: Image Không Hiển Thị

**Nguyên nhân**: Đường dẫn sai hoặc format không hỗ trợ

**Giải pháp**:
- Dùng đường dẫn relative từ file markdown
- Dùng format PNG hoặc JPG (PDF cũng được)
- Kiểm tra file tồn tại

### Lỗi: Table of Contents Trống

**Nguyên nhân**: Không có headings hoặc headings không đúng format

**Giải pháp**:
- Đảm bảo có dấu cách sau `#`
- Đảm bảo có headings trong document

---

## Quick Reference Card

### Export Commands

```powershell
# PDF (cơ bản)
pandoc input.md -o output.pdf

# PDF (tiếng Việt)
pandoc input.md -o output.pdf --pdf-engine=xelatex -V mainfont="Times New Roman"

# DOCX
pandoc input.md -o output.docx

# HTML
pandoc input.md -o output.html -s

# DOCX với template
pandoc input.md -o output.docx --reference-doc=template.docx
```

### Common Options

```powershell
--toc                    # Table of contents
--toc-depth=3            # TOC depth
-N                       # Number sections
-s                       # Standalone
--pdf-engine=xelatex     # PDF engine
-V geometry:margin=2.5cm # Margins
-V fontsize=13pt         # Font size
-V mainfont="Font Name"  # Main font
-V linestretch=1.5       # Line spacing
--template=file.latex    # Custom template
--reference-doc=file.docx # DOCX template
--css=style.css          # CSS for HTML
--highlight-style=tango  # Code highlighting
```

---

## Tài Liệu Tham Khảo

- [Pandoc User's Guide](https://pandoc.org/MANUAL.html)
- [Pandoc Demos](https://pandoc.org/demos.html)
- [LaTeX Cheat Sheet](https://wch.github.io/latexsheet/)
- [MiKTeX Documentation](https://docs.miktex.org/)
