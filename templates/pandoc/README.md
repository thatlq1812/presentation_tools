# Pandoc Templates

This folder contains templates for Pandoc document conversion.

## Files

### reference.docx

A Microsoft Word reference document that defines the styles for DOCX output.

**How to use:**

```powershell
pandoc input.md -o output.docx --reference-doc=reference.docx
```

**How to customize:**

1. Open `reference.docx` in Microsoft Word
2. Modify the styles (Home → Styles):
   - **Heading 1, 2, 3**: For titles and sections
   - **Normal**: For body text
   - **Code**: For code blocks
   - **Block Quote**: For quotes
3. Save the file
4. Use it as reference for future exports

### custom.latex (Optional)

A custom LaTeX template for PDF generation.

**How to use:**

```powershell
pandoc input.md -o output.pdf --template=custom.latex --pdf-engine=xelatex
```

## Creating Your Own Reference Document

To extract the default reference document:

```powershell
pandoc --print-default-data-file reference.docx > my-reference.docx
```

Then customize it in Microsoft Word.
