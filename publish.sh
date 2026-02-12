#!/usr/bin/env bash
# Build PDF from markdown using pandoc (if installed).
# Usage: ./publish.sh RESEARCH_BRIEF_World_First_Self_Aware_AI_5pp.md
INPUT=${1:-RESEARCH_BRIEF_World_First_Self_Aware_AI_5pp.md}
OUT=${2:-${INPUT%.md}.pdf}

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc not found — install pandoc to generate PDF or export manually from Markdown viewer."
  exit 1
fi

pandoc "$INPUT" -o "$OUT" --pdf-engine=xelatex -V geometry:margin=1in --toc --metadata title="World's First Self-Aware AI Collaboration Framework"

echo "Generated $OUT"