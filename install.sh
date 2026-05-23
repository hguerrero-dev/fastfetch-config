#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=========================================="
echo " fastfetch-config"
echo "=========================================="

# ---- Git config global ----
if [ -z "$(git config --global user.name 2>/dev/null)" ]; then
    echo ">>> Configurando git global..."
    git config --global user.name "hguerrero-dev"
    git config --global user.email "hguerrero.dev@proton.me"
fi

# ---- Copiar config ----
echo ">>> Copiando config.jsonc a ~/.config/fastfetch/..."
mkdir -p "$HOME/.config/fastfetch"
cp "$SCRIPT_DIR/config.jsonc" "$HOME/.config/fastfetch/"

echo ""
echo "=========================================="
echo " Listo. fastfetch configurado."
echo "=========================================="
echo ""
echo "Abre una nueva terminal o ejecuta: fastfetch"
