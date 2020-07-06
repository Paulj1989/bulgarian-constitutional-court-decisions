# Bulgarian Constitutional Court decisions

## Using Tesseract to Convert Scanned PDFs to Text Data

### Prerequisites

The following packages need to be installed:

- Tesseract - An open source text recognition (OCR) engine. A guide for installing Tesseract can be found [here](https://tesseract-ocr.github.io/tessdoc/Home.html), and documentation can be found [here](https://github.com/tesseract-ocr/tesseract).
- Xpdf - Xpdf offers a selection of command line tools for handling PDF files, including converting PDFs to image files. Xpdf can be downloaded and installed [here](https://www.xpdfreader.com/download.html).

### Process

The following guide is carried out using the command line.

#### 1. Turn pdf files to png

```bash
pdftoppm file.pdf img -png
```

#### 1a. Turn pdf files to png using Windows

```bash
pdftoppm -png myfile.pdf myfile
```

#### 2. If images were low-quality scans (with annotations, black marks etc.), crop image so that only the main body text is included

#### 3. Process png files using tesseract

- If carried out on just one image:

```bash
tesseract img.png newFile -l bul
```

- If carried out on a batch of images:

```bash
for file in *.png  ; do tesseract "$file" "${file%%.*}" -l bul; done
```

#### 4. Combine all text documents

```bash
for file in *.txt; do (cat "${file}"; echo) >> bulgarian_combined.txt; done
```

#### 4a. Another way to combine all text documents using Windows

```bash
copy *.txt myfile
```

## Converting DOCX Files to Text Data

The following guide is carried out using the command line.

### 1. Identify DOCX files that will be converted

```bash
find . -name "*.docx" | while read file; do
unzip -p $file word/document.xml |
sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g' > "${file/docx/txt}"
done
```

### 2. Convert DOCX files to TXT

```bash
grep -r "." --include "*.txt" .
```

## TO-DO

- [x] Write initial guide using tesseract in bash terminal
- [x] Write guide using tesseract in windows/macOS
- [x] Write guide for converting DOCX files to TXT
- [ ] Test pdftools (R) and pdfminer.six (Python) and consider alternative approaches
- [x] Test process for batch editing files using pytesseract
- [x] Think about the best approach for batch translating txt files from Bulgarian to English

## Resources

### Legal Corpora

- [Corpus of US Supreme Court Opinions](https://www.english-corpora.org/scotus/)
- [Case Law Access Project](https://case.law/tools/)
- [UCI Legal Case Reports](https://archive.ics.uci.edu/ml/datasets/Legal+Case+Reports)

### Python/R/Julia Libraries for NLP

- [Blackstone](https://github.com/ICLRandD/Blackstone) - A spaCy pipeline and model for NLP on unstructured legal text
- [topicmodels](https://cran.r-project.org/web/packages/topicmodels/index.html)
- [displaCy](https://spacy.io/usage/visualizers) - A built-in spaCy dependency for visualizing NLP models
- [spaCy](https://explosion.ai/blog/spacy-transformers) [Transformers](https://github.com/explosion/spacy-transformers)
- [Thinc](https://github.com/explosion/thinc) - A [lightweight deep learning library](https://thinc.ai/docs) for composing models, supporting layers from other frameworks like PyTorch, TensorFlow, or MXNet
- [TopicModelsVB.jl](https://github.com/ericproffitt/TopicModelsVB.jl)

### Research

- [McCarty (2007) - Deep Semantic Interpretations of Legal Texts](https://www.cs.rutgers.edu/~mccarty/research/icail07-acm.pdf)

### Other Resources

- [spaCy Course](https://github.com/ines/spacy-course)
- [Research Lab @ The Incorporated Council of Law Reporting (ICLR&D)](https://research.iclr.co.uk/)
