# PDF OCR Converter

PDF OCR Converter is a static, browser-only website for extracting text from PDFs and image files. It uses PDF.js to render PDF pages and Tesseract.js to perform OCR directly in the browser, so no backend is required.

## Features

- Single `index.html` file application
- Drag-and-drop or click-to-upload support
- Works with PDF files and common image formats
- OCR language selector with multiple languages
- Page range selection for PDFs
- Live progress bar during OCR
- Per-page output tabs
- Download extracted text as `.txt`
- Copy all extracted text to the clipboard

## Tech Stack

- HTML, CSS, and vanilla JavaScript
- [PDF.js](https://mozilla.github.io/pdf.js/)
- [Tesseract.js](https://tesseract.projectnaptha.com/)

## Usage

1. Open `index.html` in a modern browser.
2. Drag a PDF or image onto the upload area, or click to browse.
3. Select the OCR language.
4. For PDFs, set the page range such as `1-3,5`.
5. Click `Start OCR`.
6. Review results page by page, then download or copy the extracted text.

## Notes

- The first OCR run for a language may take longer because the browser downloads trained data.
- Performance depends on file size, image quality, and browser resources.
- This project is fully client-side, but using a simple static server can improve browser compatibility compared with opening the file directly via `file://`.
