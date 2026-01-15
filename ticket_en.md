# CONTENT GENERATION TICKET

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 2.0.0 | 2026-01-15 | That Le | Bilingual template with source data section |

---

## INSTRUCTIONS

```
1. Complete all fields marked [REQUIRED]
2. Fields marked [OPTIONAL] can be skipped
3. Paste all source documents into "8. Source Data" section
4. Submit this file to AI Agent for processing
```

---

## 1. PROJECT INFORMATION

| Field | Value |
| --- | --- |
| Project Name | [REQUIRED: Enter project name] |
| Author | [REQUIRED: Full name] |
| Date | [REQUIRED: YYYY-MM-DD] |
| Version | [OPTIONAL: e.g., 1.0.0] |

---

## 2. TOPIC AND SCOPE

### 2.1. Main Topic

**Topic:** [REQUIRED: The primary subject of the presentation]

**Examples:**
- AI Applications in Healthcare
- Transformer Architecture Analysis
- Climate Change and Its Impact

### 2.2. Subtitle (OPTIONAL)

**Subtitle:** [Specific angle or focus area]

### 2.3. Background Context (OPTIONAL)

**Context:**
[Brief description to help AI understand the scope]

---

## 3. TARGET AUDIENCE

| Attribute | Value |
| --- | --- |
| Primary Audience | [REQUIRED: e.g., University students, Professors, Industry professionals] |
| Knowledge Level | [REQUIRED: Beginner / Intermediate / Advanced] |
| Prior Knowledge | [OPTIONAL: What the audience already knows] |

---

## 4. COMMUNICATION STYLE

| Attribute | Value |
| --- | --- |
| Tone | [REQUIRED: Academic / Professional / Technical] |
| Formality | [REQUIRED: Formal / Semi-formal] |
| Language | [REQUIRED: Vietnamese / English / Bilingual] |

---

## 5. CONSTRAINTS

### 5.1. Structural Constraints

| Constraint | Value |
| --- | --- |
| Total Slides | [REQUIRED: e.g., 10-15] |
| Time Limit | [OPTIONAL: e.g., 15 minutes] |
| Words Per Slide | [OPTIONAL: Default is 30-50 words] |

### 5.2. Content Constraints

| Constraint | Value |
| --- | --- |
| Detail Level | [REQUIRED: High / Medium / Low] |
| Include Code | [Yes / No] |
| Include Diagrams | [Yes / No] |
| Include References | [Yes / No] |
| Citation Style | [OPTIONAL: APA / IEEE / Harvard] |

---

## 6. OUTLINE

List the main sections/chapters. AI will generate content for each section.

### Required Sections:

1. **Introduction**
   - Purpose: [Brief description]
   - Layout: [LAYOUT_STD / LAYOUT_CTR]

2. **[Section Name]**
   - Purpose: [Brief description]
   - Layout: [Refer to schemas/slide_layouts.md]

3. **[Section Name]**
   - Purpose: [Brief description]
   - Layout: [Preferred layout]

4. **Conclusion**
   - Purpose: [Summary and key takeaways]
   - Layout: [LAYOUT_STD / LAYOUT_CTR]

### Optional Sections:

- References
- Q&A Slide
- Appendix

---

## 7. LAYOUT STRATEGY

Refer to `schemas/slide_layouts.md` for available layouts.

### Layout Usage Plan:

| Content Type | Recommended Layout | Reason |
| --- | --- | --- |
| Title/Opening | LAYOUT_TITLE | First impression |
| Definitions | LAYOUT_STD | Clear bullet points |
| Comparisons | LAYOUT_2COL | Side-by-side analysis |
| Process/Flow | LAYOUT_3COL | Step-by-step breakdown |
| Visual Content | LAYOUT_IMG_R or LAYOUT_IMG_L | Balance text and image |
| Key Quotes | LAYOUT_CTR | Emphasis and focus |
| Conclusion | LAYOUT_STD or LAYOUT_CTR | Summary |

---

## 8. SOURCE DATA

```
INSTRUCTIONS:
- Paste ALL reference documents below
- Include: papers, notes, old slides, etc.
- AI will extract information from here

IMPORTANT NOTE:
- If document is too long (over 50 pages), paste only key sections
- Priority: Abstract, Conclusion, Tables, Key figures
- Avoid exceeding AI context limit (approximately 100,000 words)
```

### 8.1. Primary Documents

[PASTE DOCUMENT CONTENT HERE]

```
(Delete this line and paste your document content)
```

### 8.2. Additional Notes

[PASTE ADDITIONAL NOTES OR IDEAS HERE]

```
(Delete this line and paste your notes)
```

### 8.3. Reference Links

1. [Title] - [URL]
2. [Title] - [URL]

---

## 9. ADDITIONAL REQUIREMENTS

### 9.1. Specific Requirements (OPTIONAL)

[Special requirements not covered above]

-
-
-

### 9.2. Content to Avoid (OPTIONAL)

[Topics, terms, or approaches to avoid]

-
-
-

---

## SUBMISSION CHECKLIST

Before submitting, verify:

- [ ] All REQUIRED fields completed
- [ ] Topic clearly defined
- [ ] Target audience specified
- [ ] Slide count reasonable
- [ ] Outline complete
- [ ] Source data pasted

---

## FOR AI AGENT ONLY

**Processing Timestamp:** [Auto-generated]

**Output Folder:** `output/YYYYMMDD_HHmm/`

**Files Generated:**
- [ ] raw_content.md
- [ ] metadata.json
- [ ] images/.gitkeep
