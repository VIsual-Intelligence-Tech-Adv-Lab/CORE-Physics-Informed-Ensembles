#!/bin/bash

set -e

LAB_REPO="https://github.com/VIsual-Intelligence-Tech-Adv-Lab/CORE-Physics-Informed-Ensembles.git"

echo "Current remote:"
git remote -v

echo
echo "Changing 'origin' from your personal GitHub to the lab GitHub..."

# Remove your personal GitHub remote
git remote remove origin 2>/dev/null || true

# Add the lab repository
git remote add origin "$LAB_REPO"

echo
echo "New remote:"
git remote -v

echo
echo "Checking current branch..."

BRANCH=$(git branch --show-current)

if [ -z "$BRANCH" ]; then
    echo "ERROR: Could not determine current branch."
    exit 1
fi

echo "Current branch: $BRANCH"

# Rename to main
if [ "$BRANCH" != "main" ]; then
    git branch -M main
fi

echo
echo "Adding all project files..."
git add -A

echo
echo "Creating commit if necessary..."

if git diff --cached --quiet; then
    echo "No uncommitted changes."
else
    git commit -m "Add CORE Physics-Informed Ensembles code"
fi

echo
echo "Pushing to the lab repository..."

git push -u origin main

echo
echo "DONE."
echo "Your local repository is now connected to:"
echo "$LAB_REPO"