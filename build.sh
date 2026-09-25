#!/usr/bin/env bash
# Gera tekken-arena.html (arquivo único, offline) embutindo o three.js no src/game.html
# Uso: ./build.sh caminho/para/three.min.js   (three@0.158.0 — npm pack three@0.158.0)
set -euo pipefail
THREE_JS="${1:?informe o caminho do three.min.js}"
python3 - "$THREE_JS" <<'PY'
import sys
three = open(sys.argv[1], encoding='utf-8').read()
assert '</script' not in three
src = open('src/game.html', encoding='utf-8').read()
out = src.replace('<!--THREE-->', '<script>\n' + three + '\n</script>', 1)
open('tekken-arena.html', 'w', encoding='utf-8').write(out)
print('ok', len(out))
PY
