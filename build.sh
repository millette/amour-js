#!/bin/sh

# https://pandoc.org/ fait la conversion de markdown à HTML5

pandoc amour-js.md --output=amour-js-pandoc.json

pandoc amour-js-pandoc.json --to=html5 --toc-depth=2 --section-divs --variable=sourcefile:amour-js.md --template=template --toc --email-obfuscation=none --smart --standalone --output=amour-js.html

pandoc amour-js-pandoc.json --toc-depth=2 --variable=sourcefile:amour-js.md --variable=lang:french --toc --email-obfuscation=none --smart --output=amour-js.pdf

pandoc amour-js-pandoc.json --toc-depth=2 --variable=sourcefile:amour-js.md --variable=lang:french --toc --email-obfuscation=none --smart --output=amour-js.odt


# pandoc amour-js.md --from=markdown --to=html5 --toc-depth=2 --section-divs --variable=sourcefile:amour-js.md --template=template --toc --email-obfuscation=none --smart --standalone --output=amour-js.html

# pandoc amour-js.md --toc-depth=2 --section-divs --variable=sourcefile:amour-js.md --variable=lang:french --toc --email-obfuscation=none --smart --standalone --output=amour-js.pdf

# pandoc amour-js.md --toc-depth=2 --section-divs --variable=sourcefile:amour-js.md --variable=lang:french --toc --email-obfuscation=none --smart --standalone --output=amour-js.odt
