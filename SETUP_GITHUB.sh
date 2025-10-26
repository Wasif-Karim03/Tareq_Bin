#!/bin/bash
echo "🚀 Setting up GitHub deployment for Uttara Cricket Academy"
echo ""
echo "Please follow these steps:"
echo ""
echo "1. Go to https://github.com/new and create a new repository named:"
echo "   'uttara-cricket-academy' (or your preferred name)"
echo ""
echo "2. After creating the repository, come back here and press Enter"
read -p "Press Enter to continue..."
echo ""
echo "3. Enter your GitHub username:"
read GITHUB_USERNAME
echo ""
echo "Enter your repository name (default: uttara-cricket-academy):"
read REPO_NAME
REPO_NAME=${REPO_NAME:-uttara-cricket-academy}
echo ""
echo "Now connecting to GitHub..."
echo ""
git remote add origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git
git branch -M main
git push -u origin main
echo ""
echo "✅ Done! Your code is now on GitHub!"
echo ""
echo "Next steps:"
echo "1. Go to https://vercel.com"
echo "2. Sign in with GitHub"
echo "3. Import your repository (${REPO_NAME})"
echo "4. Click Deploy"
echo ""
echo "Your site will be live at: https://${REPO_NAME}.vercel.app"

