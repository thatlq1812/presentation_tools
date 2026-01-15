# Hướng Dẫn Cài Đặt Đầy Đủ - Setup Complete Guide

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Complete setup from scratch |

## Table of Contents

1. [Tổng Quan](#1-tổng-quan)
2. [Cài Đặt VS Code](#2-cài-đặt-vs-code)
3. [Cài Đặt Git](#3-cài-đặt-git)
4. [Cài Đặt Pandoc](#4-cài-đặt-pandoc)
5. [Cài Đặt Extensions](#5-cài-đặt-extensions)
6. [Clone Project](#6-clone-project)
7. [Kiểm Tra Cài Đặt](#7-kiểm-tra-cài-đặt)
8. [Troubleshooting](#8-troubleshooting)

---

## 1. Tổng Quan

### Bạn Sẽ Cài Đặt

| Phần Mềm | Mục Đích | Bắt Buộc |
| --- | --- | --- |
| VS Code | Editor chính | Có |
| Git | Clone project, version control | Có |
| Pandoc | Chuyển đổi Markdown → PDF/DOCX | Có |
| MiKTeX/TeX Live | Hỗ trợ Pandoc export PDF | Có (cho PDF) |
| Extensions | Marp, Copilot, etc. | Có |

### Thời Gian Cài Đặt

- **Lần đầu**: 15-20 phút
- **Sau đó**: Chỉ cần clone và dùng

---

## 2. Cài Đặt VS Code

### Bước 1: Tải VS Code

1. Truy cập: https://code.visualstudio.com/
2. Click **Download for Windows** (hoặc Mac/Linux)
3. Chạy file `.exe` đã tải

### Bước 2: Cài Đặt

Trong quá trình cài đặt, **tick chọn các option**:

- [x] Add "Open with Code" action to Windows Explorer file context menu
- [x] Add "Open with Code" action to Windows Explorer directory context menu
- [x] Add to PATH

### Bước 3: Khởi Động

- Mở VS Code từ Start Menu
- Hoặc chuột phải vào thư mục → "Open with Code"

---

## 3. Cài Đặt Git

### Bước 1: Tải Git

1. Truy cập: https://git-scm.com/downloads
2. Chọn **Windows** → Tải bản mới nhất
3. Chạy file cài đặt

### Bước 2: Cài Đặt

Giữ nguyên các option mặc định, **chú ý**:

- Default editor: Chọn **Use Visual Studio Code as Git's default editor**
- PATH environment: Chọn **Git from the command line and also from 3rd-party software**

### Bước 3: Kiểm Tra

Mở **Command Prompt** hoặc **PowerShell**:

```powershell
git --version
```

Kết quả mong đợi:
```
git version 2.xx.x.windows.x
```

### Bước 4: Cấu Hình Git (Lần Đầu)

```powershell
git config --global user.name "Tên Của Bạn"
git config --global user.email "email@example.com"
```

---

## 4. Cài Đặt Pandoc

### 4.1. Cài Pandoc

#### Windows

1. Truy cập: https://pandoc.org/installing.html
2. Tải file `.msi` cho Windows
3. Chạy file cài đặt
4. Kiểm tra:

```powershell
pandoc --version
```

#### Mac (dùng Homebrew)

```bash
brew install pandoc
```

#### Linux (Ubuntu/Debian)

```bash
sudo apt-get install pandoc
```

### 4.2. Cài MiKTeX (Để Export PDF)

Pandoc cần LaTeX engine để tạo PDF.

#### Windows

1. Truy cập: https://miktex.org/download
2. Tải **MiKTeX Installer**
3. Chạy cài đặt, chọn:
   - Install for: **Anyone who uses this computer**
   - Paper size: **A4**
   - Install missing packages: **Yes (automatically)**

4. Sau khi cài, mở **MiKTeX Console**:
   - Vào **Updates** → **Check for updates** → **Update now**

#### Mac

```bash
brew install --cask mactex
```

#### Linux

```bash
sudo apt-get install texlive-full
```

### 4.3. Kiểm Tra Pandoc + LaTeX

```powershell
pandoc --version
pdflatex --version
```

Cả 2 lệnh đều phải chạy được.

---

## 5. Cài Đặt Extensions

### 5.1. Mở VS Code Extensions

- Nhấn `Ctrl+Shift+X`
- Hoặc click icon Extensions ở sidebar trái

### 5.2. Extensions Bắt Buộc

Tìm và cài từng extension:

| Extension | ID | Mục Đích |
| --- | --- | --- |
| Marp for VS Code | `marp-team.marp-vscode` | Tạo slide từ Markdown |
| GitHub Copilot | `GitHub.copilot` | AI hỗ trợ viết |
| Markdown Preview Enhanced | `shd101wyy.markdown-preview-enhanced` | Preview nâng cao |
| Markdown PDF | `yzane.markdown-pdf` | Export PDF nhanh |

### 5.3. Extensions Khuyên Dùng

| Extension | ID | Mục Đích |
| --- | --- | --- |
| Markdown All in One | `yzhang.markdown-all-in-one` | Shortcuts, TOC, etc. |
| Mermaid Preview | `bierner.markdown-mermaid` | Preview sơ đồ |
| Code Spell Checker | `streetsidesoftware.code-spell-checker` | Kiểm tra chính tả |
| Vietnamese - Code Spell Checker | `streetsidesoftware.code-spell-checker-vietnamese` | Từ điển tiếng Việt |

### 5.4. Đăng Nhập GitHub Copilot

1. Sau khi cài Copilot extension
2. Click icon Copilot ở status bar (góc dưới)
3. Chọn **Sign in to GitHub**
4. Đăng nhập tài khoản GitHub
5. Authorize VS Code

**Lưu ý**: Copilot miễn phí cho sinh viên qua [GitHub Education](https://education.github.com/pack)

---

## 6. Clone Project

### 6.1. Clone Bằng VS Code

1. Mở VS Code
2. Nhấn `Ctrl+Shift+P`
3. Gõ **Git: Clone**
4. Paste URL repository:
   ```
   https://github.com/your-username/presentation_tools.git
   ```
5. Chọn thư mục lưu
6. Click **Open** khi clone xong

### 6.2. Clone Bằng Terminal

```powershell
cd D:\Projects
git clone https://github.com/your-username/presentation_tools.git
cd presentation_tools
code .
```

### 6.3. Cấu Trúc Sau Khi Clone

```
presentation_tools/
├── .github/                    # Cấu hình AI
├── docs/
│   ├── guides/                 # Các hướng dẫn
│   └── instructions/           # Tài liệu gốc
├── templates/
│   ├── marp/                   # Template slide
│   └── prompts/                # Prompt AI
├── examples/                   # Ví dụ mẫu
└── README.md
```

---

## 7. Kiểm Tra Cài Đặt

### 7.1. Kiểm Tra Toàn Bộ

Mở Terminal trong VS Code (`Ctrl+`` `) và chạy:

```powershell
# Kiểm tra Git
git --version

# Kiểm tra Pandoc
pandoc --version

# Kiểm tra LaTeX
pdflatex --version
```

### 7.2. Test Export Pandoc

Tạo file test `test.md`:

```markdown
# Test Document

This is a **test** document.

## Section 1

- Item 1
- Item 2

## Section 2

Some text here.
```

Export ra PDF:

```powershell
pandoc test.md -o test.pdf
```

Nếu file `test.pdf` được tạo → **Thành công!**

### 7.3. Test Marp

1. Mở file `templates/marp/template_academic.md`
2. Nhấn `Ctrl+Shift+P` → "Marp: Open Preview"
3. Nếu thấy slide preview → **Thành công!**

---

## 8. Troubleshooting

### Lỗi: `pandoc` không nhận lệnh

**Nguyên nhân**: Pandoc chưa được thêm vào PATH

**Cách sửa**:
1. Tìm thư mục cài Pandoc (thường là `C:\Program Files\Pandoc`)
2. Thêm vào System PATH:
   - Tìm "Environment Variables" trong Windows Search
   - System variables → Path → Edit → New
   - Thêm `C:\Program Files\Pandoc`
3. Restart terminal

### Lỗi: `pdflatex` không nhận lệnh

**Nguyên nhân**: MiKTeX chưa cài hoặc chưa thêm PATH

**Cách sửa**:
1. Mở **MiKTeX Console**
2. Settings → Directories → Kiểm tra bin path
3. Thêm path đó vào System PATH (ví dụ: `C:\Program Files\MiKTeX\miktex\bin\x64`)

### Lỗi: Pandoc export PDF thiếu package

**Triệu chứng**: Lỗi "! LaTeX Error: File `xxx.sty' not found"

**Cách sửa**:
1. Mở **MiKTeX Console**
2. Settings → "Always install missing packages on-the-fly" → Yes
3. Chạy lại lệnh pandoc

### Lỗi: Copilot không gợi ý

**Nguyên nhân**: Chưa đăng nhập hoặc chưa kích hoạt

**Cách sửa**:
1. Kiểm tra icon Copilot ở status bar
2. Nếu có dấu X, click và sign in lại
3. Đợi 2-3 giây sau khi gõ để Copilot gợi ý

### Lỗi: Preview Marp không hiện

**Cách sửa**:
1. Kiểm tra file có header `marp: true` không
2. Reload VS Code: `Ctrl+Shift+P` → "Developer: Reload Window"

---

## Bước Tiếp Theo

Sau khi cài đặt xong, đọc tiếp:

1. [Markdown Basics](01_markdown_basics.md) - Học Markdown cơ bản
2. [Pandoc Guide](02_pandoc_guide.md) - Sử dụng Pandoc chuyên sâu
3. [VS Code Tips](03_vscode_tips.md) - Mẹo sử dụng VS Code
4. [Workflow Student](workflow_student.md) - Quy trình làm bài

---

## Checklist Cài Đặt

- [ ] VS Code đã cài và mở được
- [ ] Git đã cài và `git --version` chạy được
- [ ] Pandoc đã cài và `pandoc --version` chạy được
- [ ] MiKTeX/LaTeX đã cài và `pdflatex --version` chạy được
- [ ] Extensions đã cài (Marp, Copilot, etc.)
- [ ] Đã clone project thành công
- [ ] Test export Pandoc ra PDF thành công
- [ ] Test preview Marp thành công
