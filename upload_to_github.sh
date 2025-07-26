#!/data/data/com.termux/files/usr/bin/bash

# Script per caricare TradingApp_GitHub su GitHub

echo "Inserisci il tuo username GitHub:"
read GITHUB_USER

echo "Inserisci il nome del repository (es: TradingApp):"
read REPO_NAME

cd ~/TradingApp_GitHub || exit
git init

echo "Inserisci la tua email GitHub:"
read GITHUB_EMAIL
git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"

git add .
git commit -m "Primo upload TradingApp"
git branch -M master
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
git push -u origin master
