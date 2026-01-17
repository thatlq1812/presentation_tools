# CÔNG CỤ TẠO NỘI DUNG - HƯỚNG DẪN CÀI ĐẶT

| Phiên Bản | Ngày | Tác Giả | Mô Tả |
| --- | --- | --- | --- |
| 2.0.0 | 2026-01-15 | That Le | Viết lại hoàn toàn cho quy trình ticket-based |

## Mục Lục

1. [Tổng Quan](#tổng-quan)
2. [Yêu Cầu Hệ Thống](#yêu-cầu-hệ-thống)
3. [Bước 1: Cài Đặt Trình Quản Lý Gói](#bước-1-cài-đặt-trình-quản-lý-gói)
4. [Bước 2: Cài Đặt Công Cụ Cốt Lõi](#bước-2-cài-đặt-công-cụ-cốt-lõi)
5. [Bước 3: Cấu Hình VS Code](#bước-3-cấu-hình-vs-code)
6. [Bước 4: Sử Dụng Quy Trình](#bước-4-sử-dụng-quy-trình)
7. [Khắc Phục Sự Cố](#khắc-phục-sự-cố)

---

## Tổng Quan

Công cụ này cung cấp quy trình chuẩn hóa để tạo nội dung học thuật (bài thuyết trình, báo cáo) với sự hỗ trợ của AI. Hệ thống sử dụng **phương pháp dựa trên phiếu yêu cầu** (ticket-based) - người dùng điền yêu cầu, AI Agent tạo nội dung có cấu trúc.

**Nguyên Tắc Cốt Lõi:**

- Tách biệt: Phân tách việc tạo nội dung khỏi định dạng trình bày
- Chuẩn hóa: Đảm bảo tư duy rõ ràng thông qua đầu vào có cấu trúc
- Tái tạo: Môi trường nhất quán giữa tất cả người dùng

**Tóm Tắt Quy Trình:**

1. Người dùng điền `ticket_vi.md` với yêu cầu
2. AI Agent xử lý phiếu yêu cầu
3. Hệ thống tạo output trong thư mục có timestamp (`output/YYYYMMDD_HHmm/`)
4. Nội dung tuân theo các schema layout slide định sẵn

---

## Yêu Cầu Hệ Thống

- Hệ điều hành: Windows 10/11 (64-bit)
- RAM: Tối thiểu 4GB (khuyến nghị 8GB)
- Dung lượng đĩa: Tối thiểu 5GB trống
- Kết nối internet cho cài đặt ban đầu

---

## Bước 1: Cài Đặt Trình Quản Lý Gói

Chocolatey là trình quản lý gói cho Windows giúp tự động hóa việc cài đặt phần mềm. Điều này đảm bảo tất cả người dùng có môi trường giống hệt nhau.

### Bước 1.1: Mở PowerShell với Quyền Quản Trị

1. Nhấn `Windows + X`
2. Chọn "Windows PowerShell (Admin)" hoặc "Terminal (Admin)"
3. Nhấp "Yes" khi được hỏi bởi User Account Control

### Bước 1.2: Cài Đặt Chocolatey

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

## Bước 2: Cài Đặt Công Cụ Cốt Lõi

Chạy các lệnh sau trong PowerShell (Admin). Mỗi lệnh cài đặt một công cụ cần thiết.

### Bước 2.1: Cài Đặt Git

Git được yêu cầu cho quản lý phiên bản và repository.

```powershell
choco install git -y
```

Xác minh cài đặt:

```powershell
git --version
```

### Bước 2.2: Cài Đặt VS Code

Visual Studio Code là trình soạn thảo chính cho quy trình này.

```powershell
choco install vscode -y
```

Sau khi cài đặt, bạn có thể cần khởi động lại PowerShell hoặc máy tính.

### Bước 2.3: Cài Đặt Pandoc

Pandoc chuyển đổi Markdown sang PDF, DOCX và các định dạng khác.

```powershell
choco install pandoc -y
```

Xác minh cài đặt:

```powershell
pandoc --version
```

### Bước 2.4: Cài Đặt MiKTeX

MiKTeX là bộ phân phối LaTeX cần thiết để tạo PDF với typography đúng chuẩn.

```powershell
choco install miktex -y
```

**Quan trọng:** Sau khi cài đặt, mở MiKTeX Console và:

1. Vào "Settings"
2. Đặt "Install missing packages on-the-fly" thành "Yes"
3. Nhấp "Check for updates" và cài đặt các bản cập nhật có sẵn

### Bước 2.5: Cài Đặt Node.js (Tùy chọn)

Chỉ cần nếu bạn dự định sử dụng các công cụ scripting bổ sung.

```powershell
choco install nodejs-lts -y
```

---

## Bước 3: Cấu Hình VS Code

### Bước 3.1: Cài Đặt Extensions Yêu Cầu

Mở VS Code và nhấn `Ctrl + Shift + X` để mở panel Extensions. Cài đặt:

| Tên Extension | Mục Đích |
| --- | --- |
| Markdown All in One | Chỉnh sửa và xem trước Markdown |
| GitLens | Tích hợp Git và lịch sử |
| Markdown Preview Enhanced | Tính năng xem trước nâng cao |

### Bước 3.2: Cấu Hình Danh Tính Git

Mở VS Code Terminal (`Ctrl + Backtick`) và chạy:

```bash
git config --global user.name "Họ Tên Đầy Đủ"
git config --global user.email "email.cua.ban@example.com"
```

### Bước 3.3: Cấu Hình Cài Đặt VS Code

Nhấn `Ctrl + ,` để mở Settings. Tìm kiếm và cấu hình:

| Cài Đặt | Giá Trị |
| --- | --- |
| `files.autoSave` | `afterDelay` |
| `editor.wordWrap` | `on` |
| `editor.fontSize` | `14` |
| `markdown.preview.fontSize` | `14` |

---

## Bước 4: Sử Dụng Quy Trình

### Bước 4.1: Clone hoặc Tải Repository

Phương án A - Clone với Git:

```bash
git clone <repository-url>
cd presentation_tools
```

Phương án B - Tải ZIP:

1. Tải repository dưới dạng ZIP
2. Giải nén vào thư mục bạn chọn
3. Mở thư mục trong VS Code

### Bước 4.2: Tạo Phiếu Yêu Cầu Mới

1. Mở `ticket_vi.md` trong thư mục gốc
2. Nhân bản nó hoặc chỉnh sửa trực tiếp
3. Điền tất cả các phần bắt buộc:
   - Thông Tin Dự Án
   - Yêu Cầu (Chủ đề, Đối tượng, Giọng văn)
   - Ràng Buộc (Số slide, Mức độ chi tiết)
   - Các Phần Chính (Dàn ý)
   - Chiến Lược Layout
   - Dữ Liệu Nguồn

### Bước 4.3: Xử Lý Phiếu với AI Agent

1. Mở GitHub Copilot Chat trong VS Code
2. Đính kèm file `ticket_vi.md`
3. Tham chiếu `schemas/slide_layouts.md` cho định nghĩa layout
4. Yêu cầu tạo nội dung theo định dạng schema

### Bước 4.4: Xem Lại Output

Nội dung được tạo sẽ được đặt trong:

```
output/YYYYMMDD_HHmm/
    raw_content.md    # Nội dung có cấu trúc với thẻ layout
    metadata.json     # Metadata dự án
```

### Bước 4.5: Xây Dựng Tài Liệu Cuối Cùng

Sử dụng tasks của VS Code để chuyển đổi nội dung:

- `Ctrl + Shift + B` - Build PDF (mặc định)
- `Ctrl + Shift + P` sau đó "Tasks: Run Task" rồi chọn định dạng

---

## Khắc Phục Sự Cố

### Vấn đề: Lệnh Chocolatey không tìm thấy

**Giải pháp:** Khởi động lại PowerShell sau khi cài đặt. Nếu vẫn không hoạt động:

```powershell
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
```

### Vấn đề: Pandoc tạo PDF thất bại

**Giải pháp:** Đảm bảo MiKTeX đã được cài đặt và cấu hình:

1. Mở MiKTeX Console
2. Kiểm tra cập nhật
3. Bật "Install missing packages on-the-fly"
4. Thử build lại

### Vấn đề: Git xác thực thất bại

**Giải pháp:** Cấu hình Git credential manager:

```bash
git config --global credential.helper manager
```

### Vấn đề: VS Code không tìm thấy Pandoc

**Giải pháp:** Thêm Pandoc vào system PATH:

1. Mở System Properties sau đó Environment Variables
2. Chỉnh sửa "Path" dưới System variables
3. Thêm: `C:\Program Files\Pandoc`
4. Khởi động lại VS Code

### Vấn đề: Thiếu font LaTeX

**Giải pháp:** Cài đặt các font cần thiết qua MiKTeX:

1. Mở MiKTeX Console
2. Vào "Packages"
3. Tìm và cài đặt: `times`, `fontspec`, `unicode-math`

---

## Cấu Trúc Dự Án

```
presentation_tools/
    README.md                       # File này (Hướng dẫn cài đặt tiếng Việt)
    README_en.md                    # Hướng dẫn cài đặt tiếng Anh
    ticket_vi.md                    # Mẫu đầu vào (tiếng Việt)
    ticket_en.md                    # Mẫu đầu vào (tiếng Anh)
    .github/
        copilot-instructions.md     # Hướng dẫn cho AI Agent
    schemas/
        slide_layouts.md            # 15 định nghĩa layout
        content_guidelines.md       # Quy tắc chất lượng nội dung
    templates/
        pandoc/
            reference.docx          # Mẫu DOCX
    output/
        YYYYMMDD_HHmm/              # Thư mục nội dung được tạo
    scripts/
        setup.sh                    # Script cài đặt (Git Bash)
        setup.ps1                   # Script cài đặt (PowerShell)
    examples/
        example_generated_content.md  # Output mẫu
```

---

## Cài Đặt Nhanh (Tự Động)

Đối với người dùng muốn cài đặt tự động, chạy một trong các script sau:

**PowerShell (Khuyến nghị cho Windows):**
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

## Tài Liệu Tham Khảo

- Tài liệu Chocolatey: https://docs.chocolatey.org/
- Hướng dẫn Pandoc: https://pandoc.org/MANUAL.html
- Tài liệu MiKTeX: https://miktex.org/howto
- Tài liệu VS Code: https://code.visualstudio.com/docs
