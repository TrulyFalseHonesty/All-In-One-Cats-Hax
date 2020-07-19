# Catbots-All-In-One-Install
## Command
Open console and paste this:
```dep=""; [ ! -x $(command -v npm) ] && dep="npm $dep"; [ ! -x $(command -v firejail) ] && dep="firejail $dep"; [ ! -x $(command -v route) ] && dep="net-tools $dep"; [ ! -x $(command -v xhost) ] && dep="xorg-xhost $dep"; [ $dep != ""] && sudo pacman -S $dep && git clone https://github.com/nullworks/catbot-setup && cd catbot-setup && bash <(wget -qO- https://raw.githubusercontent.com/nullworks/One-in-all-cathook-install/master/install-all) && ./install-catbots && cd ~/.steam/steam/steamapps/common/Team\ Fortress\ 2/tf/maps && git clone --recursive https://github.com/nullworks/catbot-database && sudo chmod 755 -R . && mv catbot-database/nav\ meshes/* . && rm -rf catbot-database && cd - && echo EnJoY HaX Ya LiL CaT!```
