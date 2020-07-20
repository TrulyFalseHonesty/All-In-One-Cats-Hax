# Catbots-All-In-One-Install
## Installation
Open console and paste this:
```dep=""; which npm || dep="npm $dep"; which firejail || dep="firejail $dep"; which route || dep="net-tools $dep"; which xhost || dep="xorg-xhost $dep"; sudo pacman -S $dep; git clone https://github.com/nullworks/catbot-setup && cd catbot-setup && git clone --depth 1 https://gitlab.com/nullworks/cathook/cathook && cd cathook && ./install-all && ./update && cd .. && ./install-catbots && git clone --recursive https://github.com/nullworks/catbot-database && sudo chmod 755 -R catbot-database && mv catbot-database/nav\ meshes/* ~/.steam/steam/steamapps/common/Team\ Fortress\ 2/tf/maps/ && sudo mkdir /opt/cathook && sudo chmod 777 -R /opt/cathook && mkdir /opt/cathook/data && mkdir /opt/cathook/data/configs && mv catbot-database/configs/* /opt/cathook/data/configs/ && rm -rf catbot-database && git clone https://github.com/TrulyFalseHonesty/convertjs && sudo chmod 755 -R convertjs && mv convertjs/convert.js convert.js && rm -rf convertjs && sed -i '16i ./convert.js' start && echo username:password >> accounts.txt && echo EnJoY HaX Ya LiL CaT!```


## Cathook
To use the cheat, all you have to do is run:
```sudo ./attach```
## Catbots
The bots are a trickier to use, you first need a list of steam accounts.
Put them on the accounts.js file following the username:password format.
type ```./start``` to start the bots and ```./stop``` to stop them.
Then open your browser and navigate to [localhost:8081](http://localhost:8081).
To get your IPC password, you should type ```cat /tmp/cat-webpanel-password``` in console.
