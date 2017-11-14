#lien agnoster
# https://gist.github.com/agnoster/3712874

curl -L https://get.oh-my.fish | fish
echo "installation de powerline fonts"
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
echo "iTerm2 users need to set both the Regular font and the Non-ASCII Font in "iTerm > Preferences > Profiles > Text" to use a patched font"
echo "font config déplacer pour resoudre certains problemes de compatibilités"
omf install agnoster
echo "Aller dans Iterm2, Preferences->Profiles->Color presets->Solarized Dark"
echo "Aller dans Iterm2, Preferences->Profiles->Text->Meslo LG DZ for Powerline"
