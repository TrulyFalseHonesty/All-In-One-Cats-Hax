dep=""; which npm || dep="npm $dep"; which firejail || dep="firejail $dep"; which route || dep="net-tools $dep"; which xhost || dep="xorg-xhost $dep"; sudo pacman -S $dep; while [ ! -d $CATBOT_HOME ]; do read -p "Path to future Catbot install (e.g: /usr/lib/ or ~/Desktop):  " "CATBOT_HOME" && CATBOT_HOME_STR="CATBOT_HOME=\"${CATBOT_HOME}\"" && grep -q "CATBOT_HOME" /etc/profile && sed -i "/CATBOT_HOME/c $CATBOT_HOME_STR" /etc/profile || echo $CATBOT_HOME_STR >> /etc/profile; done && cd $CATBOT_HOME && sudo git clone --depth 1 https://github.com/nullworks/catbot-setup catbot && cd catbot && sudo chown $USER -R . && chgrp $(id -gn) -R . && git clone --depth 1 https://gitlab.com/nullworks/cathook/cathook && git clone --depth 1 https://github.com/nullworks/catbot-database && git clone --depth 1 https://github.com/TrulyFalseHonesty/catbot-misc && chmod 777 -R . && cd cathook && ./install-all && ./install-data && ./update && cd .. && ./install-catbots && cd catbot-database && mv nav\ meshes/* ~/.steam/steam/steamapps/common/Team\ Fortress\ 2/tf/maps/ && mkdir /opt/cathook/data/configs && mv configs/* /opt/cathook/data/configs/ && rm -rf ../catbot-database && sudo mv catbot /usr/bin/ && mv convert.js ../convert.js && cd .. && rm -rf catbot-misc && sed -i '16i ./convert.js' start && echo "sudo rm /usr/bin/catbot; rm -rf ../catbot" >> uninstall && clear && echo EnJoY HaX Ya LiL CaT! && echo && echo "Commands & Usage:" && catbot
