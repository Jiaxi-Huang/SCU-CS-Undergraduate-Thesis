# SCU-CS-Undergraduate-Thesis

[中文](README.md)

An unofficial LaTeX template for undergraduate theses at the College of Computer Science, Sichuan University.

## Origin

This template is built upon the [SCU Undergraduate Thesis Template (Unofficial)](https://www.overleaf.com/latex/templates/scu-undergraduate-thesis-template-unofficial/grwqfvgsfjxb). Thanks to the original author for their contribution.

## Key Improvements

Compared to the original Overleaf template, this template includes the following improvements:

1. **Page numbering fix**: The original template starts page numbering from the table of contents. This template uses `\clearpage` + `\pagenumbering{arabic}` to ensure that the first page of the main body starts at page 1, with cover, abstract, and table of contents excluded from the page count.

2. **AI tool usage declaration**: Added `src/declaration_ai.tex`, providing an AI tool usage declaration template that meets SCU undergraduate thesis requirements, including tables for AI tools and their purposes, usage details, and an originality and responsibility statement. This declaration is listed as an independent chapter in the table of contents.

3. **Blind review support**: Provides `main_blind.tex` and corresponding blind review info files that automatically hide author and advisor personal information for blind review submission.

4. **Additional packages**: Pre-loaded with `booktabs`, `tabularx`, `siunitx`, `threeparttable`, and other commonly used packages for table formatting.

## File Structure

```
├── main.tex                  # Main file (normal version)
├── main_blind.tex            # Main file (blind review version)
├── scuthesis.sty             # Cover and abstract style file
├── compile.sh                # Build script (normal version)
├── compile_blind.sh          # Build script (blind review version)
├── .gitignore
├── images/
│   ├── scu.png               # SCU emblem (for cover)
│   └── logo.png              # SCU logo (for cover)
├── ref/
│   └── refs.bib              # BibTeX reference file
└── src/
    ├── basic_info.tex         # Personal info (normal version)
    ├── basic_info_blind.tex   # Personal info (blind review version)
    ├── cover.tex              # Cover
    ├── abstract.tex           # Chinese & English abstract
    ├── tableofcontent.tex     # Table of contents
    ├── chap01.tex             # Chapter 1 Introduction
    ├── chap02.tex             # Chapter 2 Related Theory and Technology
    ├── chap03.tex             # Chapter 3 Method Design
    ├── chap04.tex             # Chapter 4 Experimental Setup
    ├── chap05.tex             # Chapter 5 Experimental Results and Analysis
    ├── chap06.tex             # Chapter 6 Conclusion and Future Work
    ├── epilogue.tex           # Appendix (disabled by default)
    ├── acknowledgement.tex    # Acknowledgements (normal version)
    ├── acknowledgement_blind.tex  # Acknowledgements (blind review version)
    ├── declaration.tex        # Declaration and thesis authorization
    └── declaration_ai.tex     # AI tool usage declaration
```

## Usage

### 1. Fill in Personal Information

Edit `src/basic_info.tex` and fill in your thesis title, name, student ID, grade, major, advisor, etc.

For the blind review version, edit `src/basic_info_blind.tex` (anonymized by default).

### 2. Write Your Thesis

Chapter files are located in the `src/` directory:
- `chap01.tex` to `chap06.tex`: Main body chapters
- `abstract.tex`: Chinese and English abstracts
- `acknowledgement.tex`: Acknowledgements
- `epilogue.tex`: Appendix (uncomment `\include{src/epilogue}` in `main.tex` to enable)

### 3. Add References

Edit `ref/refs.bib` and add references in BibTeX format.

### 4. Fill in AI Usage Declaration

Edit `src/declaration_ai.tex` and truthfully describe your use of AI tools during the thesis writing process.

### 5. Add Signatures

`src/declaration.tex` (declaration and authorization) and `src/declaration_ai.tex` (AI tool usage declaration) require author and advisor signatures. The template uses blank space as placeholders by default. You can choose one of the following approaches:

**Option 1: Print and hand-sign (recommended)**

Keep the blank space as is, compile the PDF, print the declaration pages, hand-sign in the blank space, then scan back to PDF for merging. This approach best meets the university's requirements.

**Option 2: Embed signature images**

Scan or photograph your handwritten signature, save as JPG/PNG (transparent background recommended), place in `images/`, then replace `\hspace{3cm}` with `\includegraphics`:

1. Place signature images in the `images/` directory, e.g., `writer_sign.jpg` and `supervisor_sign.jpg`

2. In `src/declaration.tex` and `src/declaration_ai.tex`, replace:
   ```latex
   Author signature：\hspace{3cm}
   ```
   with:
   ```latex
   Author signature：\includegraphics[height=1.2cm]{images/writer_sign.jpg}
   ```
   Do the same for the advisor signature.

### 6. Compile

```bash
# Normal version
bash compile.sh

# Blind review version
bash compile_blind.sh
```

Compilation requires XeLaTeX + BibTeX. TeX Live 2024 or later is recommended.

The output PDF is located at `.output/main.pdf` (`.output/main_blind.pdf` for the blind review version).

## Contributing

The university may introduce new formatting requirements each year, and this template may lag behind or have omissions. If you find issues (formatting problems, build errors, etc.) or have suggestions for improvement, please report them via [Issues](https://github.com/Jiaxi-Huang/SCU-CS-Undergraduate-Thesis/issues) or submit a Pull Request directly.

## License

This project is modified from the original Overleaf template and is distributed under the [MIT License](LICENSE). You are free to modify and redistribute, provided that the original author's contribution statement is retained.
