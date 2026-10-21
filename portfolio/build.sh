#!/bin/sh
# Wraps portfolio/index.html in a full HTML document for GitHub Pages (docs/index.html).
# Run from the repo root after changing the portfolio: sh portfolio/build.sh
set -e
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat portfolio/index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
