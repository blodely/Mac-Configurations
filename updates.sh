#!/bin/bash
# created by luo yu

echo "Welcome to Updates Script"
echo "Created By Luo Yu"
echo "April 10, 2018"
echo ""
echo "--- Update brew ---"
brew update
echo ""
echo "--- Upgrade brew formulas ---"
brew upgrade
echo ""
echo "Cleanup outdated brew formulas"
brew cleanup
echo ""
echo "--- Update pods ---"
echo ""
echo "--- Master repo ---"
cd ~/.cocoapods/repos/master
git pull --verbose
echo ""
git gc
echo ""
echo "--- LYSpecs repo ---"
cd ~/.cocoapods/repos/LYSpecs
git pull --verbose
git gc
echo ""
echo "T H E   E N D."
echo ""
exit
