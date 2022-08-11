# Using Tesseract to Convert Scanned PDFs to Text Data

## Prerequisites

</br>

The following packages need to be installed:

- Tesseract - An open source text recognition (OCR) engine. A guide for installing Tesseract can be found [here](https://tesseract-ocr.github.io/tessdoc/Home.html), and documentation can be found [here](https://github.com/tesseract-ocr/tesseract).
- Xpdf - Xpdf offers a selection of command line tools for handling PDF files, including converting PDFs to image files. Xpdf can be downloaded and installed [here](https://www.xpdfreader.com/download.html).

## Process

</br>

The following guide is carried out using the command line.

### 1. Turn pdf files to png

</br>

```bash
pdftoppm file.pdf img -png
```

### 1a. Turn pdf files to png using Windows

</br>

```bash
pdftoppm -png myfile.pdf myfile
```

</br>

### 2. If images were low-quality scans (with annotations, black marks etc.), crop image so that only the main body text is included

</br>

### 3. Process png files using tesseract

</br>

- If carried out on just one image:

```bash
tesseract img.png newFile -l bul
```

</br>

- If carried out on a batch of images:

```bash
for file in *.png  ; do tesseract "$file" "${file%%.*}" -l bul; done
```

</br>

### 4. Combine all text documents

</br>

```bash
for file in *.txt; do (cat "${file}"; echo) >> bulgarian_combined.txt; done
```

### 4a. Another way to combine all text documents using Windows

</br>

```bash
copy *.txt myfile
```

## Converting DOCX Files to Text Data

</br>

The following guide is carried out using the command line.

</br>

### 1. Identify DOCX files that will be converted

</br>

```bash
find . -name "*.docx" | while read file; do
unzip -p $file word/document.xml |
sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g' > "${file/docx/txt}"
done
```

### 2. Convert DOCX files to TXT

</br>

```bash
grep -r "." --include "*.txt" .
```
