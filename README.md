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
Csináljuk meg a virtuális gépet, majd egyből *még indítás előtt* állítsuk be be a hálózati adaptereit. *Ideiglenesen* kap egy **bridgelt** és egy **host-only** adaptert, a könnyű ssh elérésért és tesztelésért, *később a bridgelt-et a vizsga követelményei miatt kivesszük.*<br />
!!!KÉP(networks)x2!!!
