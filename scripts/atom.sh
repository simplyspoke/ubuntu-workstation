#!/bin/bash

echo '\nInstall Atom\n'
brew update --force
brew bundle --file=- <<EOF
tap 'caskroom/cask'
cask 'atom'
EOF

echo '\nInstall Atom Packages\n'
apm install \
atom-autocomplete-php \
atom-beautify \
atom-typescript \
atom-wallaby \
autoclose-html \
autocomplete-modules \
autocomplete-paths \
autocomplete-plus \
better-git-blame \
busy-signal \
coverage-gutter \
docblockr \
double-tag \
editorconfig \
file-icons \
highlight-selected \
imdone-atom \
intentions \
language-groovy \
lcov-info \
linter \
linter-eslint \
linter-jsonlint \
linter-php \
linter-sass-lint \
linter-tslint \
linter-ui-default \
markdown-preview-plus \
multi-cursor-plus \
node-debugger \
package-switch \
php-cs-fixer \
prettier-atom \
project-manager \
sort-lines \
teletype \
todo-show \
wordpress-api

cp -f ./files/package-switch.bundles ~/.atom/package-switch.bundles
