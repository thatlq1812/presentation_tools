# PHIEU YEU CAU TAO NOI DUNG / CONTENT GENERATION TICKET

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 2.0.0 | 2026-01-15 | That Le | Bilingual template with source data section |

---

## HUONG DAN SU DUNG / INSTRUCTIONS

```
TIENG VIET:
1. Dien day du cac muc danh dau [BAT BUOC]
2. Cac muc [TUY CHON] co the bo qua
3. Paste toan bo tai lieu nguon vao muc "8. Du Lieu Nguon"
4. Gui file nay cho AI Agent de xu ly

ENGLISH:
1. Complete all fields marked [REQUIRED]
2. Fields marked [OPTIONAL] can be skipped
3. Paste all source documents into "8. Source Data" section
4. Submit this file to AI Agent for processing
```

---

## 1. THONG TIN DU AN / PROJECT INFORMATION

| Truong / Field | Gia Tri / Value |
| --- | --- |
| Ten Du An / Project Name | [BAT BUOC/REQUIRED: Nhap ten du an] |
| Tac Gia / Author | [BAT BUOC/REQUIRED: Ho va ten] |
| Ngay / Date | [BAT BUOC/REQUIRED: YYYY-MM-DD] |
| Phien Ban / Version | [TUY CHON/OPTIONAL: vd. 1.0.0] |

---

## 2. CHU DE VA PHAM VI / TOPIC AND SCOPE

### 2.1. Chu De Chinh / Main Topic

**Chu De / Topic:** [BAT BUOC/REQUIRED: Chu de chinh cua bai trinh bay]

**Vi du / Examples:**
- Ung dung AI trong y te
- Phan tich kien truc Transformer
- Bien doi khi hau va tac dong

### 2.2. Phu De / Subtitle (TUY CHON/OPTIONAL)

**Phu De / Subtitle:** [Goc nhin hoac trong tam cu the]

### 2.3. Boi Canh / Background Context (TUY CHON/OPTIONAL)

**Boi Canh / Context:**
[Mo ta ngan de AI hieu pham vi bai trinh bay]

---

## 3. DOI TUONG / TARGET AUDIENCE

| Thuoc Tinh / Attribute | Gia Tri / Value |
| --- | --- |
| Doi Tuong Chinh / Primary Audience | [BAT BUOC/REQUIRED: vd. Sinh vien dai hoc, Giang vien, Doanh nghiep] |
| Trinh Do / Knowledge Level | [BAT BUOC/REQUIRED: Co ban (Beginner) / Trung binh (Intermediate) / Nang cao (Advanced)] |
| Kien Thuc Co San / Prior Knowledge | [TUY CHON/OPTIONAL: Nhung gi doi tuong da biet] |

---

## 4. PHONG CACH GIAO TIEP / COMMUNICATION STYLE

| Thuoc Tinh / Attribute | Gia Tri / Value |
| --- | --- |
| Giong Van / Tone | [BAT BUOC/REQUIRED: Hoc thuat (Academic) / Chuyen nghiep (Professional) / Ky thuat (Technical)] |
| Muc Do Trang Trong / Formality | [BAT BUOC/REQUIRED: Chinh thuc (Formal) / Ban chinh thuc (Semi-formal)] |
| Ngon Ngu / Language | [BAT BUOC/REQUIRED: Tieng Viet / English / Song ngu (Bilingual)] |

---

## 5. RANG BUOC / CONSTRAINTS

### 5.1. Rang Buoc Cau Truc / Structural Constraints

| Rang Buoc / Constraint | Gia Tri / Value |
| --- | --- |
| Tong So Slide / Total Slides | [BAT BUOC/REQUIRED: vd. 10-15] |
| Gioi Han Thoi Gian / Time Limit | [TUY CHON/OPTIONAL: vd. 15 phut] |
| So Tu Moi Slide / Words Per Slide | [TUY CHON/OPTIONAL: Mac dinh 30-50 tu] |

### 5.2. Rang Buoc Noi Dung / Content Constraints

| Rang Buoc / Constraint | Gia Tri / Value |
| --- | --- |
| Muc Do Chi Tiet / Detail Level | [BAT BUOC/REQUIRED: Cao (High) / Trung binh (Medium) / Thap (Low)] |
| Bao Gom Code / Include Code | [Co (Yes) / Khong (No)] |
| Bao Gom So Do / Include Diagrams | [Co (Yes) / Khong (No)] |
| Bao Gom Tham Khao / Include References | [Co (Yes) / Khong (No)] |
| Kieu Trich Dan / Citation Style | [TUY CHON/OPTIONAL: APA / IEEE / Harvard] |

---

## 6. DAN Y / OUTLINE

Liet ke cac phan/chuong chinh. AI se tao noi dung cho tung phan.
List main sections/chapters. AI will generate content for each.

### Cac Phan Bat Buoc / Required Sections:

1. **Gioi Thieu / Introduction**
   - Muc Dich / Purpose: [Mo ta ngan]
   - Layout: [LAYOUT_STD / LAYOUT_CTR]

2. **[Ten Phan / Section Name]**
   - Muc Dich / Purpose: [Mo ta ngan]
   - Layout: [Tham khao schemas/slide_layouts.md]

3. **[Ten Phan / Section Name]**
   - Muc Dich / Purpose: [Mo ta ngan]
   - Layout: [Layout uu tien]

4. **Ket Luan / Conclusion**
   - Muc Dich / Purpose: [Tom tat va bai hoc]
   - Layout: [LAYOUT_STD / LAYOUT_CTR]

### Cac Phan Tuy Chon / Optional Sections:

- Tai Lieu Tham Khao / References
- Slide Hoi Dap / Q&A Slide
- Phu Luc / Appendix

---

## 7. CHIEN LUOC LAYOUT / LAYOUT STRATEGY

Tham khao `schemas/slide_layouts.md` de xem cac layout co san.
Refer to `schemas/slide_layouts.md` for available layouts.

### Ke Hoach Su Dung Layout / Layout Usage Plan:

| Loai Noi Dung / Content Type | Layout Khuyen Nghi / Recommended | Ly Do / Reason |
| --- | --- | --- |
| Tieu de/Mo dau | LAYOUT_TITLE | An tuong dau tien |
| Dinh nghia | LAYOUT_STD | Bullet points ro rang |
| So sanh | LAYOUT_2COL | Phan tich song song |
| Quy trinh | LAYOUT_3COL | Tung buoc mot |
| Noi dung truc quan | LAYOUT_IMG_R hoac LAYOUT_IMG_L | Can bang hinh va chu |
| Trích dan quan trong | LAYOUT_CTR | Nhan manh |
| Ket luan | LAYOUT_STD hoac LAYOUT_CTR | Tom tat |

---

## 8. DU LIEU NGUON / SOURCE DATA

```
HUONG DAN / INSTRUCTIONS:
- Paste TOAN BO tai lieu tham khao vao ben duoi
- Paste ALL reference documents below
- Bao gom: bai bao, ghi chu, slides cu, v.v.
- Include: papers, notes, old slides, etc.
- AI se trich xuat thong tin tu day
- AI will extract information from here

LUU Y QUAN TRONG / IMPORTANT NOTE:
- Neu tai lieu qua dai (tren 50 trang), chi paste cac phan quan trong
- If document is too long (over 50 pages), paste only key sections
- Uu tien: Tom tat, Ket luan, Bang bieu, Hinh anh quan trong
- Priority: Abstract, Conclusion, Tables, Key figures
- Tranh vuot qua gioi han context cua AI (khoang 100,000 tu)
- Avoid exceeding AI context limit (approximately 100,000 words)
```

### 8.1. Tai Lieu Chinh / Primary Documents

[PASTE NOI DUNG TAI LIEU O DAY / PASTE DOCUMENT CONTENT HERE]

```
(Xoa dong nay va paste noi dung tai lieu)
(Delete this line and paste your document content)
```

### 8.2. Ghi Chu Bo Sung / Additional Notes

[PASTE GHI CHU HOAC Y TUONG BO SUNG O DAY]
[PASTE ADDITIONAL NOTES OR IDEAS HERE]

```
(Xoa dong nay va paste ghi chu)
(Delete this line and paste your notes)
```

### 8.3. Lien Ket Tham Khao / Reference Links

1. [Tieu de / Title] - [URL]
2. [Tieu de / Title] - [URL]

---

## 9. YEU CAU BO SUNG / ADDITIONAL REQUIREMENTS

### 9.1. Yeu Cau Cu The / Specific Requirements (TUY CHON/OPTIONAL)

[Nhung yeu cau dac biet khong nam trong cac muc tren]
[Special requirements not covered above]

-
-
-

### 9.2. Noi Dung Can Tranh / Content to Avoid (TUY CHON/OPTIONAL)

[Chu de, thuat ngu, hoac cach tiep can can tranh]
[Topics, terms, or approaches to avoid]

-
-
-

---

## DANH SACH KIEM TRA / SUBMISSION CHECKLIST

Truoc khi gui, kiem tra / Before submitting, verify:

- [ ] Tat ca muc BAT BUOC da dien / All REQUIRED fields completed
- [ ] Chu de ro rang / Topic clearly defined
- [ ] Doi tuong da xac dinh / Target audience specified
- [ ] So slide hop ly / Slide count reasonable
- [ ] Dan y day du / Outline complete
- [ ] Du lieu nguon da paste / Source data pasted

---

## CHI DANH CHO AI / FOR AI AGENT ONLY

**Thoi Gian Xu Ly / Processing Timestamp:** [Tu dong / Auto-generated]

**Thu Muc Output / Output Folder:** `output/YYYYMMDD_HHmm/`

**File Tao Ra / Files Generated:**
- [ ] raw_content.md
- [ ] metadata.json
- [ ] images/.gitkeep
