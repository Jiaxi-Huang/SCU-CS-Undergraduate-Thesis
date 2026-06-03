# SCU-CS-Undergraduate-Thesis

四川大学计算机学院本科毕业论文 LaTeX 模板（非官方）。

## 来源说明

本模板在前人 [SCU Undergraduate Thesis Template (Unofficial)](https://www.overleaf.com/latex/templates/scu-undergraduate-thesis-template-unofficial/grwqfvgsfjxb) 的基础上构建而成，感谢原作者的贡献。

## 主要修改

相比原 Overleaf 模板，本模板做了以下改进：

1. **页码起始位置修正**：原模板中正文页码从目录页开始计数，本模板通过 `\clearpage` + `\pagenumbering{arabic}` 确保正文第一页从第 1 页开始，封面、摘要、目录等前序页面不计入正文页码。

2. **AI 工具使用声明**：新增 `src/declaration_ai.tex`，提供符合四川大学本科毕业论文要求的 AI 工具使用声明模板，包含使用的 AI 工具及目的表格、使用程度说明、以及原创性与责任声明。该声明已作为独立章节列入目录。

3. **盲审版支持**：提供 `main_blind.tex` 与对应的盲审版信息文件，自动隐去作者、导师等个人信息，方便盲审提交。

4. **新增宏包**：预置 `booktabs`、`tabularx`、`siunitx`、`threeparttable` 等常用宏包，方便表格排版。

## 文件结构

```
├── main.tex                  # 主文件（正常版）
├── main_blind.tex            # 主文件（盲审版）
├── scuthesis.sty             # 封面与摘要样式文件
├── compile.sh                # 编译脚本（正常版）
├── compile_blind.sh          # 编译脚本（盲审版）
├── .gitignore
├── images/
│   ├── scu.png               # 四川大学校徽（封面用）
│   └── logo.png              # 四川大学 Logo（封面用）
├── ref/
│   └── refs.bib              # 参考文献 BibTeX 文件
└── src/
    ├── basic_info.tex         # 个人信息（正常版）
    ├── basic_info_blind.tex   # 个人信息（盲审版）
    ├── cover.tex              # 封面
    ├── abstract.tex           # 中英文摘要
    ├── tableofcontent.tex     # 目录
    ├── chap01.tex             # 第一章 绪论
    ├── chap02.tex             # 第二章 相关理论与技术
    ├── chap03.tex             # 第三章 方法设计
    ├── chap04.tex             # 第四章 实验设置
    ├── chap05.tex             # 第五章 实验结果与分析
    ├── chap06.tex             # 第六章 总结与展望
    ├── epilogue.tex           # 附录（默认不编译）
    ├── acknowledgement.tex    # 致谢（正常版）
    ├── acknowledgement_blind.tex  # 致谢（盲审版）
    ├── declaration.tex        # 声明与学位论文使用授权书
    └── declaration_ai.tex     # AI 工具使用声明
```

## 使用方法

### 1. 填写个人信息

编辑 `src/basic_info.tex`，填写你的论文题目、姓名、学号、年级、专业、指导教师等信息。

盲审版请编辑 `src/basic_info_blind.tex`（已默认匿名）。

### 2. 撰写论文内容

各章节文件位于 `src/` 目录下：
- `chap01.tex` 至 `chap06.tex`：正文各章节
- `abstract.tex`：中英文摘要
- `acknowledgement.tex`：致谢
- `epilogue.tex`：附录（如需使用，请在 `main.tex` 中取消注释 `\include{src/epilogue}`）

### 3. 添加参考文献

编辑 `ref/refs.bib`，按 BibTeX 格式添加参考文献。

### 4. 填写 AI 使用声明

编辑 `src/declaration_ai.tex`，如实填写你在论文写作过程中使用 AI 工具的情况。

### 5. 编译

```bash
# 正常版
bash compile.sh

# 盲审版
bash compile_blind.sh
```

编译需要 XeLaTeX + BibTeX 环境。推荐使用 TeX Live 2024 或更新版本。

输出 PDF 位于 `.output/main.pdf`（盲审版为 `.output/main_blind.pdf`）。

## 许可

本模板基于原 Overleaf 模板修改，遵循原模板的许可协议。使用者可自由修改和分发，但需保留原作者的贡献声明。
