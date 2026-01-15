# AI Prompt Templates - Tạo Cấu Trúc Bài Thuyết Trình

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Standard prompts for presentation structure |

## Table of Contents

1. [Meta-Prompt Chuẩn](#1-meta-prompt-chuẩn)
2. [Prompt Theo Loại Bài](#2-prompt-theo-loại-bài)
3. [Prompt Mở Rộng Nội Dung](#3-prompt-mở-rộng-nội-dung)
4. [Prompt Chỉnh Sửa](#4-prompt-chỉnh-sửa)

---

## 1. Meta-Prompt Chuẩn

### Template Tổng Quát

```
## Context
- Subject: [Tên môn học / Chủ đề]
- Audience: [Đối tượng nghe - giáo viên, sinh viên, hội đồng...]
- Duration: [Thời lượng trình bày - 5 phút, 15 phút...]
- Level: [Mức độ kỹ thuật - cơ bản, nâng cao, chuyên sâu]
- Grading criteria: [Tiêu chí chấm điểm nếu có]

## Task
Generate a presentation structure with:
- Clear slide titles
- 3-5 key bullet points per slide
- Speaker notes for complex slides
- Visual suggestions (diagram/table/chart) where needed

## Constraints
- Academic/professional tone
- Avoid filler content
- Prioritize clarity over creativity
- Use Vietnamese for content, English for technical terms

## Topic
[Mô tả đề tài của bạn ở đây]
```

### Ví Dụ Sử Dụng

```
## Context
- Subject: Trí Tuệ Nhân Tạo - Đại học Bách Khoa
- Audience: Giảng viên và sinh viên năm 3
- Duration: 15 phút
- Level: Nâng cao (có nền tảng lập trình)
- Grading criteria: Độ sâu kỹ thuật 40%, Trình bày rõ ràng 30%, Demo 30%

## Task
Generate a presentation structure with:
- Clear slide titles
- 3-5 key bullet points per slide
- Speaker notes for complex slides
- Visual suggestions (diagram/table/chart) where needed

## Constraints
- Academic/professional tone
- Avoid filler content
- Include code examples where relevant
- Use Vietnamese for explanations, English for technical terms

## Topic
Ứng dụng Deep Learning trong nhận dạng khuôn mặt: So sánh các kiến trúc CNN phổ biến (VGGNet, ResNet, MobileNet) và đánh giá hiệu năng trên dataset CelebA.
```

---

## 2. Prompt Theo Loại Bài

### 2.1. Đồ Án Môn Học

```
Create a presentation structure for a course project with these sections:

1. Title Slide
   - Project name, team members, date

2. Problem Statement (1-2 slides)
   - What problem are we solving?
   - Why does it matter?

3. Literature Review (1-2 slides)
   - What solutions exist?
   - What are their limitations?

4. Methodology (2-3 slides)
   - Our approach
   - Technical architecture
   - Tools and technologies used

5. Implementation (2-3 slides)
   - Key features
   - Demo screenshots or flow

6. Results (1-2 slides)
   - Metrics and evaluation
   - Comparison with existing solutions

7. Conclusion (1 slide)
   - Summary
   - Future improvements

8. Q&A

Topic: [Đề tài của bạn]
```

### 2.2. Báo Cáo Nghiên Cứu

```
Create an academic research presentation structure:

1. Title & Authors
2. Research Question / Hypothesis
3. Background & Motivation
4. Methodology
   - Research design
   - Data collection
   - Analysis methods
5. Findings
   - Key results with data visualization
6. Discussion
   - Interpretation
   - Limitations
7. Conclusion & Implications
8. References
9. Q&A

Research topic: [Đề tài nghiên cứu]
```

### 2.3. Thuyết Trình Ý Tưởng / Pitch

```
Create a pitch presentation structure (max 10 slides):

1. Hook (1 slide)
   - Attention-grabbing statement or question

2. Problem (1-2 slides)
   - Pain point description
   - Who experiences this problem?

3. Solution (2 slides)
   - Your solution
   - How it works (simple explanation)

4. Differentiation (1 slide)
   - Why your solution is better

5. Proof (1 slide)
   - Demo, prototype, or early results

6. Call to Action (1 slide)
   - What you want from the audience

Idea: [Ý tưởng của bạn]
```

### 2.4. Bài Thuyết Trình Lớp (Ngắn)

```
Create a short class presentation (5-7 minutes):

1. Introduction (30 seconds)
   - Topic and why it matters

2. Main Content (3-4 minutes)
   - 3 key points maximum
   - Examples for each point

3. Summary (30 seconds)
   - Recap main points

4. Discussion Question (optional)
   - Engage the class

Topic: [Chủ đề]
Audience: [Lớp mấy / Môn gì]
```

---

## 3. Prompt Mở Rộng Nội Dung

### 3.1. Mở Rộng Bullet Points

```
Expand these bullet points into detailed paragraphs suitable for a report:

[Paste your bullet points here]

Requirements:
- Each bullet becomes 2-3 sentences
- Add examples where appropriate
- Maintain academic tone
- Keep Vietnamese as primary language
```

### 3.2. Tạo Speaker Notes

```
Generate speaker notes for this slide:

[Paste slide content here]

Requirements:
- Explain each point in conversational language
- Add transition phrases
- Include timing suggestions
- Note where to pause for emphasis
```

### 3.3. Tạo Câu Mở Đầu Hấp Dẫn

```
Generate 3 opening hooks for a presentation about:

[Topic]

Types of hooks to include:
1. Surprising statistic
2. Thought-provoking question
3. Brief story or scenario
```

### 3.4. Tạo Phần Kết Luận

```
Write a conclusion for this presentation:

Main points covered:
1. [Point 1]
2. [Point 2]
3. [Point 3]

Key takeaway: [What should audience remember?]

Call to action (if any): [What should they do next?]
```

---

## 4. Prompt Chỉnh Sửa

### 4.1. Rút Gọn Nội Dung

```
Condense this content to fit on a single slide (max 5 bullet points, 7 words each):

[Paste long content here]

Keep only the most essential information.
```

### 4.2. Chuyển Đổi Văn Phong

```
Rewrite this text in [academic/professional/conversational] tone:

[Paste text here]

Maintain the core meaning while adjusting formality.
```

### 4.3. Thêm Ví Dụ

```
Add concrete examples for each concept:

[Paste abstract concepts here]

Requirements:
- Examples should be relatable to [audience type]
- Use Vietnamese context where possible
- Keep examples concise
```

### 4.4. Kiểm Tra Logic

```
Review this presentation outline for logical flow:

[Paste outline here]

Check for:
- Missing connections between sections
- Redundant information
- Gaps in reasoning
- Proper progression (general → specific or problem → solution)

Suggest improvements.
```

---

## Cách Sử Dụng Hiệu Quả

### Trong VS Code với Copilot

1. Tạo file mới với nội dung prompt
2. Copilot sẽ đọc context và gợi ý phù hợp
3. Hoặc dùng Copilot Chat (`Ctrl+I`) để paste prompt

### Trong ChatGPT / Claude

1. Copy nguyên prompt template
2. Điền thông tin vào các placeholder `[...]`
3. Paste vào chat và gửi

### Tips

- **Càng chi tiết context, kết quả càng tốt**
- **Chỉnh sửa output, đừng dùng nguyên**
- **Lưu prompt hay để dùng lại**
