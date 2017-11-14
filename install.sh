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
if ! [ -d ~/.config/fontconfig/conf.d ]; then
  mkdir -p ~/.config/fontconfig/conf.d
fi

curl -O https://raw.githubusercontent.com/powerline/fonts/master/fontconfig/50-enable-terminess-powerline.conf
cp 50-enable-terminess-powerline.conf ~/.config/fontconfig/conf.d
rm 50-enable-terminess-powerline.conf

omf install agnoster
echo "Aller dans Iterm2, Preferences->Profiles->Color presets->Solarized Dark"
echo "Aller dans Iterm2, Preferences->Profiles->Text->Meslo LG DZ for Powerline"

#vider le cache du font
fc-cache -vf

#fish shell par defaut (si lancé depuis ce mm shell fish)
set PATH_FISH (which fish)
chsh -s $PATH_FISH
