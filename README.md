# Research Project Proposal Template

LaTeX template for research project proposals at Carl von Ossietzky Universität Oldenburg.

## Getting started

1. Fill in the metadata at the top of `main.tex` (title, author, supervisor, …)
2. Write your proposal in the numbered sections
3. Add references to `references.bib`

## Building

**Locally** — requires TeX Live or MiKTeX with `latexmk` and `biber`:

```
make            # build PDF
make watch      # rebuild on save
make clean      # remove build artefacts
make distclean  # remove build artefacts and PDF
```

**Overleaf** — import the project; no local install needed.

**VS Code** — install TeX Live or MiKTeX locally, then add the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.

## New to LaTeX?

The [Overleaf LaTeX tutorial](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes) is a good starting point.
For local distributions: [TeX Live](https://www.tug.org/texlive/) (Linux/macOS/Windows) or [MiKTeX](https://miktex.org/) (Windows, also available on Linux/macOS).
