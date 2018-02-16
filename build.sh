#!/bin/sh

# https://pandoc.org/ fait la conversion de markdown à HTML5

pandoc amour-js.md --from=markdown --to=html5 --toc-depth=2 --variable=sourcefile:amour-js.md --template=template --toc --email-obfuscation=none --smart --standalone --output=amour-js.html

# pandoc amour-js.md --from=markdown --to=json --toc --email-obfuscation=none --smart --standalone --output=amour-js.json
