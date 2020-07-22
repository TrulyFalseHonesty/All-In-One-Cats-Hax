# Catbots-All-In-One-Install
## Installation
Open console and paste this:
```dep=""; which npm || dep="npm $dep"; which firejail || dep="firejail $dep"; which route || dep="net-tools $dep"; which xhost || dep="xorg-xhost $dep"; sudo pacman -S $dep; cd /usr/lib && sudo git clone https://github.com/nullworks/catbot-setup && sudo chmod 777 -R catbot-setup && mv catbot-setup catbot && cd catbot && git clone --depth 1 https://gitlab.com/nullworks/cathook/cathook && cd cathook && ./install-all && ./update && cd .. && ./install-catbots && git clone --recursive https://github.com/nullworks/catbot-database && sudo chmod 755 -R catbot-database && mv catbot-database/nav\ meshes/* ~/.steam/steam/steamapps/common/Team\ Fortress\ 2/tf/maps/ && sudo mkdir /opt/cathook && sudo chmod 777 -R /opt/cathook && mkdir /opt/cathook/data && mkdir /opt/cathook/data/configs && mv catbot-database/configs/* /opt/cathook/data/configs/ && rm -rf catbot-database && git clone https://github.com/TrulyFalseHonesty/catbot-misc && sudo chmod 755 -R catbot-misc && sudo mv catbot-misc/catbot /usr/bin/ && mv catbot-misc/convert.js convert.js && rm -rf catbot-misc && sed -i '16i ./convert.js' start && echo rm -rf ../catbot >> uninstall && echo username:password >> accounts.txt && echo EnJoY HaX Ya LiL CaT!```

## Commands & Usage
(Theses commands are to be executer in the terminal)
  `usage: catbot [OPTION]
  where OPTION could be:
      start               start the bots
      stop                stop them
      update              update catbot & cathook
      uninstall           uninstall catbot & cathook
      cathook             attach cathook to TF2 (Cheat)
      accounts            edit the accounts list (should follow the username:password format)
      ipc-password        prints your IPC webpanel password to the terminal`
   
