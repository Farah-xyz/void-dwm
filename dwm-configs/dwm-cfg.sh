#!/bin/sh
echo " ##################################################################"
echo " #############   The Environment Is Ready  ########################"
echo " ##################################################################"
rm -rf ~/.config 2> /dev/null
mkdir -p ~/{.config,.local}
# Move All Dotfiles in $HOME/.local/
mv ../../void-dwm ~/.local

echo "#########################################"
echo "##### Compile My Suckless Programme #####"
echo "#########################################"
cd ~/.local/void-dwm/dwm-dotfiles/src/dwm/ && sudo make clean install
echo "=============> DONE DWM <================"
cd ~/.local/void-dwm/dwm-dotfiles/src/st/ && sudo make clean install
echo "=============> DONE ST <================"
cd ~/.local/void-dwm/dwm-dotfiles/src/dmenu/ && sudo make clean install
echo "=============> DONE dmenu <================"

echo "#########################################"
echo "###### Link My Dotfiles Programme #######"
echo "#########################################"
echo "===========> In ~/.config <================"
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/user-dirs.dirs ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/nvim ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/mpv ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/qutebrowser ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/zathura ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/gtk-3.0 ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/cfg/neofetch ~/.config/
ln -sf ~/.local/void-dwm/dwm-dotfiles/prompt/starship.toml ~/.config/
echo "===========> In ~/ <================"
ln -sf ~/.local/void-dwm/dwm-dotfiles/pix ~/
ln -sf ~/.local/void-dwm/dwm-dotfiles/bsh/.bashrc ~/
ln -sf ~/.local/void-dwm/dwm-dotfiles/bsh/.bash_profile ~/
ln -sf ~/.local/void-dwm/dwm-dotfiles/bsh/.npmrc ~/
ln -sf ~/.local/void-dwm/dwm-dotfiles/git/.gitconfig ~/

echo "#########################################"
echo "######    Directory In HOME       #######"
echo "#########################################"
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
rm -rf ~/Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/ 2> /dev/null

# echo "##############################"
# echo "##### Enable Services ########"
# echo "##############################"

echo "##############################"
echo "########### DONE #############"
echo "##############################"
sleep 5
exit
