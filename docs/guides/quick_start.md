# Quick Start Guide - Bắt Đầu Trong 10 Phút

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Fast-track setup guide |

## Mục Tiêu

Sau 10 phút, bạn sẽ có thể:
- Tạo 1 bài thuyết trình cơ bản
- Export ra file PDF slides
- Hiểu workflow để làm nhanh hơn

---

## Bước 1: Cài Đặt (3 phút)

### 1.1. Tải VS Code
- Link: https://code.visualstudio.com/
- Cài đặt như phần mềm bình thường

### 1.2. Cài Extensions
Mở VS Code → `Ctrl+Shift+X` → Tìm và cài:

1. **Marp for VS Code** (by Marp Team)
2. **GitHub Copilot** (by GitHub) - *cần tài khoản GitHub*

---

## Bước 2: Tạo File Đầu Tiên (2 phút)

### 2.1. Mở thư mục
- `File` → `Open Folder` → Chọn thư mục muốn lưu bài

### 2.2. Tạo file mới
- `Ctrl+N` → Lưu với tên `bai_thuyet_trinh.md`

### 2.3. Copy template này vào:

```markdown
---
marp: true
theme: default
paginate: true
---

# Tiêu Đề Bài Thuyết Trình

**Họ tên**: [Tên của bạn]
**Lớp**: [Lớp của bạn]

---

# Mục Lục

1. Giới thiệu
2. Nội dung chính
3. Kết luận

---

# 1. Giới Thiệu

- Điểm 1
- Điểm 2
- Điểm 3

---

# 2. Nội Dung Chính

## 2.1. Phần A

- Chi tiết A1
- Chi tiết A2

---

# 2. Nội Dung Chính

## 2.2. Phần B

- Chi tiết B1
- Chi tiết B2

---

# 3. Kết Luận

- Tóm tắt điểm 1
- Tóm tắt điểm 2
- Tóm tắt điểm 3

---

# Cảm Ơn Đã Lắng Nghe

## Q&A
```

---

## Bước 3: Preview Slide (1 phút)

### 3.1. Mở Preview
- Nhấn `Ctrl+Shift+P`
- Gõ "Marp: Open Preview"
- Enter

Bạn sẽ thấy slide preview bên cạnh!

### 3.2. Chỉnh sửa
- Sửa text trong file `.md`
- Preview tự động cập nhật

---

## Bước 4: Export (1 phút)

### Export ra PDF
- `Ctrl+Shift+P`
- Gõ "Marp: Export Slide Deck"
- Chọn **PDF**
- Lưu file

### Export ra PowerPoint
- Làm tương tự, chọn **PPTX**

---

## Bước 5: Thêm Nội Dung với AI (3 phút)

### 5.1. Sử dụng Copilot
- Đặt con trỏ cuối dòng
- Gõ 1-2 từ khóa
- Đợi Copilot gợi ý (màu xám)
- Nhấn `Tab` để chấp nhận

### 5.2. Ví dụ

Bạn gõ:
```markdown
# Lợi Ích Của AI

- 
```

Copilot sẽ gợi ý:
```markdown
- Tự động hóa công việc lặp lại
- Tăng độ chính xác trong phân tích dữ liệu
- Tiết kiệm thời gian và chi phí
```

---

## Cheat Sheet - Các Lệnh Hay Dùng

| Thao Tác | Phím Tắt |
| --- | --- |
| Preview Markdown | `Ctrl+Shift+V` |
| Preview bên cạnh | `Ctrl+K V` |
| Mở Command Palette | `Ctrl+Shift+P` |
| Chấp nhận Copilot | `Tab` |
| Bỏ qua Copilot | `Esc` |
| Lưu file | `Ctrl+S` |

---

## Cấu Trúc Slide Cơ Bản

```markdown
---              ← Ngắt slide mới

# Heading 1      ← Tiêu đề slide

## Heading 2     ← Tiêu đề phụ

- Bullet point   ← Nội dung
- Bullet point

---              ← Ngắt slide tiếp theo
```

---

## Tiếp Theo?

1. Đọc [Workflow Student Guide](docs/guides/workflow_student.md) để hiểu sâu hơn
2. Xem các template trong thư mục [templates/marp/](templates/marp/)
3. Thử làm 1 bài thuyết trình thực tế

---

## Troubleshooting

### Preview không hiện?
- Kiểm tra đã cài Marp extension chưa
- Reload VS Code: `Ctrl+Shift+P` → "Reload Window"

### Copilot không gợi ý?
- Kiểm tra đã đăng nhập GitHub chưa
- Đợi 2-3 giây sau khi gõ

### Export lỗi?
- Đảm bảo file đã lưu (Ctrl+S)
- Thử đóng preview trước khi export

---

## Hỗ Trợ

Nếu gặp vấn đề, kiểm tra:
1. [Marp Documentation](https://marp.app/)
2. [GitHub Copilot Docs](https://docs.github.com/copilot)
