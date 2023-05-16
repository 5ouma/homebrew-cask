#!/usr/bin/env zsh

set -eu

# shellcheck disable=SC2155
declare -r dir="$(dirname "$(realpath "$0")")/Casks"
if [[ -z "$1" ]]; then
  printf "What app do you want to upgrade?\n"
  read -r file
else
  declare -r file="$1"
fi
declare -r rbpath="$dir/$file.rb"
if [[ ! -e "$rbpath" ]]; then
  printf "\033[31mError:\033[m No available cask with the name \"%s\"\n" "$file"
  exit 1
fi
if [[ -z "$2" ]]; then
  printf "Which version do you want to upgrade to?\n"
  read -r ver
else
  declare -r ver="$2"
fi
declare -r name=$(grep "name" "$rbpath" | sed -e "s/.*name //" -e "s/\"//g")

sed -i "" "s/version \".*\"/version \"$ver\"/" "$rbpath"
sed -i "" "s/sha256 \".*\"/sha256 :no_check/" "$rbpath"

brew upgrade --cask "$rbpath"
declare -r hash="$(shasum -a 256 ~/Library/Caches/Homebrew/Cask/"$file--$ver."* | awk '{print $1}')"
sed -i "" "s/sha256 :no_check/sha256 \"$hash\"/" "$rbpath"

git add "$rbpath"
git commit -m "[upgrade] Version up $name to $ver" -m "Update the cask by updating the app."
git push
