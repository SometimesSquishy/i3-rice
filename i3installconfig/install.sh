rm /etc/pacman.conf
cp ~/i3installconfig/pacman.conf /etc/pacman.conf
pacman -Sy
cd
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si c
cd
pacman -Syu
mkdir ~/Tools
mkdir ~/Tools/bin
pacman -S i3-gaps i3blocks i3lock i3status polybar rofi firefox ntfs-3g pulseaudio lxappearance arandr kitty zsh newsboat neovim pulseaudio-alsa alsa-utils picom cmus redshiftbase-devel curl wget xdotool

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
cd
git clone https://github.com/Waishnav/Watcher
cd ./Watcher/
./install
cd
yay -S cava backlight_control plata-theme

cp ~/i3installconfig/scripts/* ~/Tools/bin
cp ~/i3installconfig/configs ~/.config
reboot


