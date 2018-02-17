#!/bin/sh

# https://pandoc.org/ fait la conversion de markdown à HTML5

pandoc amour-js.md --from=markdown --to=html5 --toc-depth=2 --section-divs --variable=sourcefile:amour-js.md --template=template --toc --email-obfuscation=none --smart --standalone --output=amour-js.html
