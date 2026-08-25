#!/usr/bin/env bash
# 在 Mac 端把本機接上 kongchou-cis repo 當 CIS 單一來源。
# 動作：clone / 更新 repo → 連結 Mac Hermes skill → 把 ~/kcce 的 logo 指向 repo 資產。
# 可重複執行（idempotent）：之後要同步 GitHub 更新，再跑一次即可。
set -euo pipefail

REPO_URL="https://github.com/chijanzen/kongchou-cis.git"
DIR="$HOME/kongchou-cis"
SKILL_SRC="$DIR/skills/kongchou-cis"

# 1) clone 或 fast-forward 更新（public repo，免登入）
if [ -d "$DIR/.git" ]; then
  echo "[*] 更新既有 repo ..."; git -C "$DIR" pull --ff-only
else
  echo "[*] clone repo -> $DIR"; git clone "$REPO_URL" "$DIR"
fi

# 2) Mac Hermes skill：symlink 到 repo 內的 skill（存在 ~/.hermes/skills 才做）
if [ -d "$HOME/.hermes/skills" ]; then
  ln -sfn "$SKILL_SRC" "$HOME/.hermes/skills/kongchou-cis"
  echo "[OK] Hermes skill -> $SKILL_SRC"
else
  echo "[--] 無 ~/.hermes/skills，略過 Hermes skill 連結"
fi

# 3) ~/kcce 的 logo 接 repo 資產（存在 ~/kcce 才做；先備份非 symlink 的原檔）
if [ -d "$HOME/kcce" ]; then
  for pair in "logo.png:Kcce_logo.png" "logo_white.png:Kcce_logo_white.png"; do
    dst="$HOME/kcce/${pair%%:*}"; src="$SKILL_SRC/assets/${pair##*:}"
    if [ -f "$dst" ] && [ ! -L "$dst" ]; then
      cp "$dst" "$dst.bak_$(date +%Y%m%d_%H%M%S)"
    fi
    ln -sfn "$src" "$dst"
    echo "[OK] kcce ${pair%%:*} -> $src"
  done
else
  echo "[--] 無 ~/kcce，略過 logo 連結"
fi

echo "[DONE] Mac 已接上 kongchou-cis 作為 CIS 來源。日後同步再跑一次本腳本。"
