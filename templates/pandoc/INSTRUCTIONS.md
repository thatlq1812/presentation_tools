# Presentation Tools

| Version | Date | Author | Description |
| --- | --- | --- | --- |
| 1.0.0 | 2026-01-15 | Elix Team | Initial release |

## About

This folder contains templates for Pandoc.

Since `reference.docx` is a binary file that cannot be stored in plain text,
please generate it using the following command:

```powershell
pandoc --print-default-data-file reference.docx > reference.docx
```

Then customize the styles in Microsoft Word as needed.

## Quick Customization Guide

1. Open `reference.docx` in Microsoft Word
2. Go to Home → Styles
3. Right-click on each style to modify:
   - **Heading 1**: Font, size, color, spacing
   - **Heading 2**: Smaller than Heading 1
   - **Normal**: Body text style
   - **First Paragraph**: First paragraph after heading
4. Save the file
5. Use with Pandoc:

```powershell
pandoc input.md -o output.docx --reference-doc=reference.docx
```

## Recommended Styles for Academic Documents

| Style | Font | Size | Properties |
| --- | --- | --- | --- |
| Heading 1 | Times New Roman | 16pt | Bold |
| Heading 2 | Times New Roman | 14pt | Bold |
| Heading 3 | Times New Roman | 13pt | Bold, Italic |
| Normal | Times New Roman | 13pt | Regular |
| Code | Consolas | 11pt | Regular |
