# serversetup
## Vizsgasegédlet ansible + WordPress szerverhez
#### By: Arnold Tóth
##### init: 2018.03.22 23:00
###### host rendszer: Ubuntu Desktop 17.10., macos 10.13, Windows 10
###### v0.1
###### TODO:
install script<br />
basic config<br />
md-ben teljes részletes leírás<br />
képek<br />
vbox configok<br />
pfsense setup<br />
<br /><br /><br />
Kezdjük a szerver virtuális gép beállításával <br />
Csináljuk meg a host-only networkot. Ezt a virtual box beállításai > hálózat pontban találjuk.<br />
!!!KÉP!!!<br />
Állítsuk be llítsuk be a virtuális gép hálózatát. *Ideiglenesen* kap egy **bridgelt** és egy **host only** adaptert, a könnyű ssh elérésért és tesztelésért, később a bridgeltet a vizsga követelményei miatt kivesszük.<br />
!!!KÉP(networks)x2!!!
