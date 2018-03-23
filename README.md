# serversetup
## Vizsgasegédlet ansible + WordPress szerverhez
#### By: Arnold Tóth
##### init: 2018.03.22 23:00
###### host rendszer: Ubuntu Desktop 17.10, macos 10.13, Windows 10
###### v0.1
###### TODO:
[]install script<br />
[]basic config<br />
[]txt változat (?)<br />
[]több, részletes md, esetleges hibakezelés<br />
[]md-ben teljes részletes leírás<br />
[]képek<br />
[]vbox configok<br />
[]pfsense setup<br />
<br /><br /><br />
Kezdjük a szerver virtuális gép beállításával <br />
Csináljuk meg a host-only networkot. Ezt a virtual box beállításai > hálózat pontban találjuk.<br />
!!!KÉP!!!<br />
Csináljuk meg a virtuális gépet *ha nincs fent*, majd egyből *még indítás előtt* állítsuk be be a hálózati adaptereit. *Ideiglenesen* kap egy **bridgelt** és egy **host-only** adaptert, a könnyű ssh elérésért és tesztelésért, *később a bridgelt-et a vizsga követelményei miatt kivesszük.*<br />
**jegyezzük meg meg melyik adapternek mi a neve, később szükségünk lesz rá!**
!!!KÉP(networks)x2!!!<br />
Ha nincs felrakva a rendszer, akkor installáljuk. Ez semmi extra, csak a standard Next > Next > OK procedúra <br />
*(Ha esetleg problémád lenne az ubuntu szerver telepítéssel, ebben a gitben lesz egy ubiinstall.md a segítségedre)*<br />
**ezeket a beállításokat fogom használni:**<br />
username: user<br />
passw: kalifornia<br />
hostname: ubuntu-sv<br />
Telepítésnél elsődleges interfésznek válasszuk a *bridge-lt* adaptert! <br />
!!!KÉP:install!!!<br />

-afterinstall<br />
-ip+ssh<br />
-runscript<br />
