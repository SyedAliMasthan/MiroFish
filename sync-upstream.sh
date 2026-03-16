#!/bin/bash
# sync-upstream.sh
# Run this script to pull latest changes from original MiroFish into mirofish-upstream branch

set -e

echo "=== MiroFish Upstream Sync ==="
echo ""

# Fetch latest from original repo
echo "[1/4] Fetching latest from 666ghj/MiroFish..."
git fetch upstream

# Switch to upstream tracking branch
echo "[2/4] Switching to mirofish-upstream branch..."
git checkout mirofish-upstream

# Merge upstream changes
echo "[3/4] Merging upstream changes..."
git merge upstream/main --no-edit

# Push updated upstream branch to your repo
echo "[4/4] Pushing to your GitHub (mirofish-upstream)..."
git push origin mirofish-upstream

echo ""
echo "=== Done! mirofish-upstream is now up to date ==="
echo ""
echo "To cherry-pick specific commits into your own work branch:"
echo "  git checkout my-work"
echo "  git cherry-pick <commit-hash>"
echo ""
echo "To merge ALL upstream changes into your work branch:"
echo "  git checkout my-work"
echo "  git merge mirofish-upstream"
