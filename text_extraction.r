pacman::p_load(tidyverse, pdftools, swirl, tesseract, tabulizer)

# Path to PDF
pdf_file <- file.path("/your/file/path/file.PDF")

# Basic Functions
info <- pdf_info(pdf_file)
text <- pdf_text(pdf_file)
fonts <- pdf_fonts(pdf_file)
files <- pdf_attachments(pdf_file)

# OCR Text Extraction
tesseract_download("bul")
pdf_ocr_data(pdf_file, language = "bul")
