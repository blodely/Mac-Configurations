#!/bin/bash
# created by luo yu

echo ""
echo "Welcome to Updates Script"
echo "Created By Luo Yu at April 10, 2018"
echo ""
echo "--- Update Homebrew ---"
echo "--- 1. Update brew"
brew update
brew cleanup
brew outdated
echo ""
echo "--- 2. Upgrade brew formulas"
brew upgrade
brew cleanup
echo ""
echo "--- 3. Cleanup outdated brew formulas"
brew cleanup
echo ""
echo "--- Update Cocoapods ---"
echo ""
echo "--- 1. Master repo ---"
cd ~/.cocoapods/repos/cocoapods
git pull --verbose
echo ""
#git gc # skip for this giant repo
echo ""
echo "--- 2. LYSpecs repo ---"
cd ~/.cocoapods/repos/LYSpecs
git pull --verbose
git gc
echo ""
echo "--- 3. DO REPO-UPD command ---"
pod repo update
echo ""
echo "--- All ops are finished."
echo "T H E   E N D."
echo ""
exit
