# SLIDE LAYOUT SCHEMAS

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | That Le | Complete layout definition for AI content generation |

---

## Overview

This document defines standardized slide layouts for AI-generated content. Each layout has a unique ID that must be used in the output `raw_content.md` file.

The AI Agent must generate content following these exact formats to ensure compatibility with downstream rendering tools.

---

## Layout Catalog

| Layout ID | Name | Description | Best Used For |
| --- | --- | --- | --- |
| LAYOUT_TITLE | Title Slide | Large title with optional subtitle | Opening slide |
| LAYOUT_SECTION | Section Header | Section divider with title | Chapter transitions |
| LAYOUT_STD | Standard | Title + bullet points | Most content slides |
| LAYOUT_2COL | Two Column | Title + 2 content columns | Comparisons, pros/cons |
| LAYOUT_3COL | Three Column | Title + 3 content columns | Processes, categories |
| LAYOUT_IMG_R | Image Right | Title + content left + image right | Visual explanations |
| LAYOUT_IMG_L | Image Left | Title + image left + content right | Visual explanations |
| LAYOUT_IMG_FULL | Full Image | Title + full-width image | Diagrams, screenshots |
| LAYOUT_CTR | Center Focus | Centered content | Quotes, key points |
| LAYOUT_CODE | Code Block | Title + code snippet + explanation | Technical content |
| LAYOUT_TABLE | Table | Title + data table | Statistics, data |
| LAYOUT_DIAGRAM | Diagram | Title + diagram description | Flowcharts, architecture |
| LAYOUT_TIMELINE | Timeline | Title + sequential events | History, processes |
| LAYOUT_QA | Q&A | Question and Answer format | FAQ, discussion |
| LAYOUT_END | Closing | Thank you + contact info | Final slide |

---

## Detailed Layout Specifications

### LAYOUT_TITLE

**Purpose:** Opening slide to introduce the presentation.

**Structure:**
```markdown
[TYPE: LAYOUT_TITLE]
# [Main Title]
## [Subtitle - optional]
### [Author Name]
### [Date]
### [Institution/Organization - optional]
```

**Example:**
```markdown
[TYPE: LAYOUT_TITLE]
# Deep Learning in Medical Imaging
## A Comprehensive Overview
### Nguyen Van A
### 2026-01-15
### University of Science
```

**Constraints:**
- Title: Maximum 10 words
- Subtitle: Maximum 15 words

---

### LAYOUT_SECTION

**Purpose:** Visual break between major sections.

**Structure:**
```markdown
[TYPE: LAYOUT_SECTION]
# [Section Number]. [Section Title]
## [Brief Description - optional]
```

**Example:**
```markdown
[TYPE: LAYOUT_SECTION]
# 2. Literature Review
## Examining existing research and methodologies
```

**Constraints:**
- Title: Maximum 6 words
- Description: Maximum 12 words

---

### LAYOUT_STD

**Purpose:** Standard content slide with bullet points.

**Structure:**
```markdown
[TYPE: LAYOUT_STD]
# [Slide Title]
- [Point 1]
- [Point 2]
- [Point 3]
- [Point 4 - optional]
- [Point 5 - optional]

<!-- Speaker Notes: [Detailed explanation for presenter] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_STD]
# Key Benefits of Transformer Architecture
- Parallel processing enables faster training
- Self-attention captures long-range dependencies
- No recurrence eliminates vanishing gradient problem
- Scalable to very large datasets

<!-- Speaker Notes: Emphasize that parallel processing is the main reason for speed improvement. Compare training time: RNN takes 3 weeks, Transformer takes 3 days for similar corpus. -->
```

**Constraints:**
- Title: Maximum 8 words
- Bullet points: 3-5 points per slide
- Each point: Maximum 12 words
- Speaker notes: Required for complex topics

---

### LAYOUT_2COL

**Purpose:** Side-by-side comparison of two concepts.

**Structure:**
```markdown
[TYPE: LAYOUT_2COL]
# [Slide Title]

## [Left Column Title]
- [Point 1]
- [Point 2]
- [Point 3]

## [Right Column Title]
- [Point 1]
- [Point 2]
- [Point 3]

<!-- Speaker Notes: [Explanation] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_2COL]
# RNN vs Transformer Comparison

## Recurrent Neural Networks
- Sequential processing
- Slow training on long sequences
- Vanishing gradient problem
- Limited context window

## Transformer Architecture
- Parallel processing
- Fast training at scale
- Stable gradient flow
- Unlimited context with attention

<!-- Speaker Notes: Use this slide to highlight the paradigm shift. RNNs dominated from 2014-2017, Transformers took over after 2017 Attention paper. -->
```

**Constraints:**
- Title: Maximum 6 words
- Each column: 3-5 points
- Columns should be balanced in content length

---

### LAYOUT_3COL

**Purpose:** Display three related concepts or a three-step process.

**Structure:**
```markdown
[TYPE: LAYOUT_3COL]
# [Slide Title]

## [Column 1 Title]
- [Point 1]
- [Point 2]

## [Column 2 Title]
- [Point 1]
- [Point 2]

## [Column 3 Title]
- [Point 1]
- [Point 2]

<!-- Speaker Notes: [Explanation] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_3COL]
# Data Processing Pipeline

## 1. Collection
- Gather raw data
- Validate sources
- Store securely

## 2. Processing
- Clean and normalize
- Extract features
- Transform format

## 3. Analysis
- Apply algorithms
- Generate insights
- Visualize results

<!-- Speaker Notes: Walk through each stage. Emphasize that each stage has quality gates before proceeding. -->
```

**Constraints:**
- Title: Maximum 6 words
- Each column: 2-4 points
- All columns should have similar structure

---

### LAYOUT_IMG_R

**Purpose:** Content with supporting image on the right.

**Structure:**
```markdown
[TYPE: LAYOUT_IMG_R]
# [Slide Title]

## Content
- [Point 1]
- [Point 2]
- [Point 3]

## Image
[Path: images/filename.png]
[Alt: Image description for accessibility]
[Caption: Source or description - optional]
```

**Example:**
```markdown
[TYPE: LAYOUT_IMG_R]
# Transformer Architecture Overview

## Content
- Encoder-Decoder structure
- Multi-head attention mechanism
- Positional encoding for sequence order
- Feed-forward networks in each layer

## Image
[Path: images/transformer_architecture.png]
[Alt: Diagram showing the Transformer model architecture with encoder and decoder stacks]
[Caption: The Transformer Architecture (Vaswani et al., 2017)]
```

**Constraints:**
- Content: 3-5 bullet points
- Image must have Alt text for accessibility

---

### LAYOUT_IMG_L

**Purpose:** Image on left with content on right.

**Structure:**
```markdown
[TYPE: LAYOUT_IMG_L]
# [Slide Title]

## Image
[Path: images/filename.png]
[Alt: Image description]
[Caption: Source - optional]

## Content
- [Point 1]
- [Point 2]
- [Point 3]
```

**Constraints:**
- Same as LAYOUT_IMG_R but reversed

---

### LAYOUT_IMG_FULL

**Purpose:** Full-width image with minimal text.

**Structure:**
```markdown
[TYPE: LAYOUT_IMG_FULL]
# [Slide Title]

## Image
[Path: images/filename.png]
[Alt: Image description]
[Caption: Source or description]

<!-- Speaker Notes: [Detailed explanation since slide has minimal text] -->
```

**Constraints:**
- Title: Maximum 6 words
- Speaker notes: Required (detailed explanation)

---

### LAYOUT_CTR

**Purpose:** Centered content for emphasis (quotes, key statistics, key takeaways).

**Structure:**
```markdown
[TYPE: LAYOUT_CTR]
# [Title - optional]

> [Quote or Key Statement]

[Attribution - optional]

<!-- Speaker Notes: [Context and explanation] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_CTR]
# Key Insight

> "Attention is all you need."

Vaswani et al., 2017

<!-- Speaker Notes: This famous quote became the title of the groundbreaking paper. It summarizes the core insight that attention mechanisms alone, without recurrence, can achieve state-of-the-art results. -->
```

**Constraints:**
- Quote/Statement: Maximum 20 words
- Use for maximum 1-2 slides per presentation

---

### LAYOUT_CODE

**Purpose:** Display code with explanation.

**Structure:**
```markdown
[TYPE: LAYOUT_CODE]
# [Slide Title]

## Code
```[language]
[code snippet]
```

## Explanation
- [Point 1: Explain line/block]
- [Point 2: Explain line/block]
- [Point 3: Highlight key concept]
```

**Example:**
```markdown
[TYPE: LAYOUT_CODE]
# Self-Attention Implementation

## Code
```python
def self_attention(Q, K, V):
    scores = torch.matmul(Q, K.transpose(-2, -1))
    scores = scores / math.sqrt(d_k)
    attention = F.softmax(scores, dim=-1)
    return torch.matmul(attention, V)
```

## Explanation
- Line 2: Compute attention scores via dot product
- Line 3: Scale by square root of dimension for stability
- Line 4-5: Apply softmax and multiply with values
```

**Constraints:**
- Code: Maximum 10 lines
- Language must be specified
- Explanation: 2-4 points

---

### LAYOUT_TABLE

**Purpose:** Display structured data in table format.

**Structure:**
```markdown
[TYPE: LAYOUT_TABLE]
# [Slide Title]

## Table
| Column 1 | Column 2 | Column 3 |
| --- | --- | --- |
| Data | Data | Data |
| Data | Data | Data |

## Notes
- [Additional context - optional]

<!-- Speaker Notes: [Explain the data] -->
```

**Constraints:**
- Maximum 5 columns
- Maximum 6 rows
- Keep data concise

---

### LAYOUT_DIAGRAM

**Purpose:** Describe a diagram or flowchart for rendering.

**Structure:**
```markdown
[TYPE: LAYOUT_DIAGRAM]
# [Slide Title]

## Diagram Description
Type: [Flowchart / Sequence / Architecture / Hierarchy]
Direction: [LR (left-right) / TB (top-bottom)]

## Elements
- Node A: [Description]
- Node B: [Description]
- Node C: [Description]

## Connections
- A -> B: [Relationship]
- B -> C: [Relationship]

<!-- Speaker Notes: [Walk through the diagram] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_DIAGRAM]
# Data Flow Architecture

## Diagram Description
Type: Flowchart
Direction: LR

## Elements
- Input: Raw data from sensors
- Processing: Data cleaning module
- Storage: Database cluster
- Output: Dashboard visualization

## Connections
- Input -> Processing: Stream data
- Processing -> Storage: Cleaned records
- Storage -> Output: Query results

<!-- Speaker Notes: Trace the flow from left to right. Emphasize that processing happens in real-time. -->
```

---

### LAYOUT_TIMELINE

**Purpose:** Display chronological events or sequential steps.

**Structure:**
```markdown
[TYPE: LAYOUT_TIMELINE]
# [Slide Title]

## Timeline
1. [Year/Stage]: [Event/Description]
2. [Year/Stage]: [Event/Description]
3. [Year/Stage]: [Event/Description]
4. [Year/Stage]: [Event/Description]

<!-- Speaker Notes: [Explain significance of each event] -->
```

**Example:**
```markdown
[TYPE: LAYOUT_TIMELINE]
# Evolution of NLP Models

## Timeline
1. 2013: Word2Vec introduces word embeddings
2. 2014: Sequence-to-sequence models emerge
3. 2017: Attention mechanism revolutionizes NLP
4. 2018: BERT achieves state-of-the-art on 11 tasks
5. 2020: GPT-3 demonstrates few-shot learning

<!-- Speaker Notes: Each milestone represents a paradigm shift. Word2Vec made words mathematical. Attention made context accessible. -->
```

**Constraints:**
- Maximum 6 timeline entries
- Each description: Maximum 10 words

---

### LAYOUT_QA

**Purpose:** Question and Answer format for FAQ or discussion points.

**Structure:**
```markdown
[TYPE: LAYOUT_QA]
# [Slide Title]

## Q1: [Question]
A: [Answer]

## Q2: [Question]
A: [Answer]

## Q3: [Question]
A: [Answer]
```

**Constraints:**
- Maximum 3-4 Q&A pairs per slide
- Answers: Maximum 25 words each

---

### LAYOUT_END

**Purpose:** Closing slide with thank you and contact information.

**Structure:**
```markdown
[TYPE: LAYOUT_END]
# [Closing Message]

## Contact
- Name: [Full Name]
- Email: [Email Address]
- Institution: [Organization - optional]

## Additional
- [Link to resources - optional]
- [QR code description - optional]
```

**Example:**
```markdown
[TYPE: LAYOUT_END]
# Thank You

## Contact
- Name: Nguyen Van A
- Email: nguyenvana@university.edu
- Institution: University of Science

## Additional
- Full paper: https://example.com/paper
- Source code: https://github.com/example
```

---

## Output File Format

The AI Agent must generate `raw_content.md` following this format:

```markdown
# [Presentation Title]

[TYPE: LAYOUT_TITLE]
# [Title]
...

---

[TYPE: LAYOUT_STD]
# [Slide 2 Title]
...

---

[TYPE: LAYOUT_2COL]
# [Slide 3 Title]
...
```

**Rules:**
1. Each slide separated by `---` (three hyphens)
2. Each slide must start with `[TYPE: LAYOUT_XXX]`
3. Follow exact structure for each layout type
4. Include speaker notes for complex slides
5. All image paths are relative to output folder

---

## Metadata File Format

The AI Agent must also generate `metadata.json`:

```json
{
  "title": "Presentation Title",
  "author": "Author Name",
  "date": "2026-01-15",
  "total_slides": 15,
  "layouts_used": [
    "LAYOUT_TITLE",
    "LAYOUT_STD",
    "LAYOUT_2COL"
  ],
  "language": "Vietnamese",
  "generated_at": "20260115_2230"
}
```
