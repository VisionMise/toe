#!/bin/bash
# GitHub Repository Setup Script
# This script completes the GitHub repository creation and push
# Repository: github.com/visionmise/toe

set -e

echo "========================================="
echo "GitHub Repository Setup for visionmise/toe"
echo "========================================="
echo ""

# Check if gh is authenticated
echo "Step 1: Checking GitHub CLI authentication..."
if ! gh auth status >/dev/null 2>&1; then
    echo "❌ GitHub CLI is not authenticated."
    echo ""
    echo "Please authenticate using one of these methods:"
    echo ""
    echo "Option 1 - Web-based authentication:"
    echo "  gh auth login --web"
    echo ""
    echo "Option 2 - Token authentication:"
    echo "  gh auth login --with-token < token.txt"
    echo ""
    echo "Option 3 - Manual token setup:"
    echo "  1. Visit: https://github.com/settings/tokens/new"
    echo "  2. Create token with 'repo' scope"
    echo "  3. Run: export GH_TOKEN='your_token_here'"
    echo ""
    read -p "Press Enter after authenticating, or Ctrl+C to exit..."
fi

# Verify authentication worked
if ! gh auth status >/dev/null 2>&1; then
    echo "❌ Still not authenticated. Please complete authentication first."
    exit 1
fi

echo "✅ GitHub CLI authenticated"
echo ""

# Check if repository already exists
echo "Step 2: Checking if repository exists..."
if gh repo view visionmise/toe >/dev/null 2>&1; then
    echo "✅ Repository visionmise/toe already exists"
else
    echo "Creating repository visionmise/toe..."
    gh repo create visionmise/toe --public --description "Team of Experts - AI Agent System" --source=. --remote=origin
    echo "✅ Repository created"
fi
echo ""

# Push the code
echo "Step 3: Pushing code to GitHub..."
git push -u origin main
echo "✅ Code pushed successfully"
echo ""

echo "========================================="
echo "✅ Setup Complete!"
echo "========================================="
echo ""
echo "Repository URL: https://github.com/visionmise/toe"
echo ""
echo "Next steps:"
echo "  - Visit your repository: https://github.com/visionmise/toe"
echo "  - Add a description and topics"
echo "  - Configure branch protection rules (optional)"
echo "  - Set up GitHub Actions (optional)"
echo ""
