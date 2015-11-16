#!/usr/bin/env bash

ultisnippets2vscode --in $(dirname $0)/bundle/ciplogic/UltiSnips/typescript.snippets \
    --out ${HOME}/programs/vscode-0.9.2/resources/app/extensions/typescript/snippets/typescript.json
ultisnippets2vscode --in $(dirname $0)/bundle/ciplogic/UltiSnips/typescript.snippets \
    --out ${HOME}/programs/vscode-0.9.2/resources/app/extensions/typescript/snippets/typescriptreact.json

