#!/usr/bin/env zsh

caskDir="$(dirname "$0")/Casks"
fileName="$1"
if [[ -z "$fileName" ]]; then
  printf "What app do you want to upgrade?\n"
  read -r fileName
fi
if [[ -z $(find "$caskDir" -name "$fileName.*") ]]; then
  printf "\033[31mError:\033[m No available cask with the name \"%s\"\n" "$fileName"
  return 1
fi
caskName=$(grep "name" "$caskDir"/"$fileName".rb | sed -e "s/.*name //" -e "s/\"//g")
ver="$2"
if [[ -z "$ver" ]]; then
  printf "Which version do you want to upgrade to?\n"
  read -r ver
fi

sed -i "" "s/version \".*\"/version \"$ver\"/" "$caskDir"/"$fileName".rb
sed -i "" "s/sha256 \".*\"/sha256 :no_check/" "$caskDir"/"$fileName".rb
cp "$caskDir"/"$fileName".rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/

brew upgrade "$fileName"
hash=$(shasum -a 256 ~/Library/Caches/Homebrew/Cask/"$fileName"--"$ver".* | awk '{print $1}')
sed -i "" "s/sha256 :no_check/sha256 \"$hash\"/" "$caskDir"/"$fileName".rb
rm /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/"$fileName".rb

git add "$caskDir"/"$fileName".rb
git commit -m "[upgrade] Version up $caskName to $ver" -m "" -m "Update the cask by updating the app."
git push origin main
