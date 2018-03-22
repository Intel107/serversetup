# serversetup
## Vizsgasegédlet ansible + WordPress szerverhez
#### Created by: Arnold Tóth
##### init: 2018.03.22 23:00
##### HOST rendszer: Ubuntu Desktop 17.10.
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
!!!KÉP!!!
Állítsuk be llítsuk be a virtuális gép hálózatát. *Ideiglenesen* kap egy **bridgelt** és egy **host only** adaptert, a könnyű ssh elérésért és tesztelésért, később a bridgeltet a vizsga követelményei miatt kivesszük.
!!!KÉP(networks)x2!!!
