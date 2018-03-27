# serversetup
## WordPress server beállítása Ansible segítségével
#### By: Arnold Tóth
##### felhasznált anyagok: Google, tanórák, git: andreipak/wordpress-ansible
##### init: 2018.03.22 23:00
###### host rendszer: Ubuntu Desktop 17.10, macos 10.13, Windows 10
###### TODO:
[x]install script<br />
[x]basic config<br />
[x]ssh <br />
[]txt változat <br />
[]több, részletes md, esetleges hibakezelés<br />
[]md-ben teljes részletes leírás<br />
[]képek<br />
[]vbox configok<br />
[]pfsense setup<br />
<br /><br />
Kezdjük a szerver virtuális gép beállításával <br />
Csináljuk meg a host-only networkot. Ezt a virtual box beállításai > hálózat pontban találjuk.<br />
!!!KÉP: vbox host only!!!<br />
Csináljuk meg a virtuális gépet *ha nincs fent*, majd egyből *még indítás előtt* állítsuk be be a hálózati adaptereit. *Ideiglenesen* kap egy **bridgelt** és egy **host-only** adaptert, a könnyű ssh elérésért és tesztelésért, *később a bridgelt-et a vizsga követelményei miatt kivesszük.*<br />
**jegyezzük meg meg melyik adapternek mi a neve, később szükségünk lesz rá!**<br />
!!!KÉP(networks)x2!!!<br />
Ha nincs felrakva a rendszer, akkor installáljuk. Ez semmi extra, csak a standard Next > Next > OK procedúra <br />
*(Ha esetleg problémád lenne az ubuntu szerver telepítéssel, ebben a gitben lesz egy ubiinstall.md a segítségedre)*<br />
**ezeket a beállításokat fogom használni:**<br />
`felhasználónév: user`<br />
`jelszó: kalifornia`<br />
`hostname: ubuntu-sv`<br />
Telepítésnél elsődleges interfésznek válasszuk a *bridge-lt* adaptert! <br />
!!!KÉP:install!!!<br />
Ha a telepítés befejeződött, indítsuk újra a gépet, majd jelentkezzünk be a megadott felhasználó/jelszó kombinációval (user/kalifornia)<br />
[!!] Ha a feladat azt kéri, hogy a beállítást ssh-n keresztül csináljuk, akkor a telepítés után *egyből* csináljuk ezt meg!<br />
Először is telepítsük az openssh-server-t: `sudo apt install openssh-server`<br />
Lessük meg az ip-címünket az `ip addr sh` parancsot kiadva! Keressük ki a bridgelt kártya ip címét (elméletileg csak ennek van értelmes címe, a neve általában `INTERFÉSZ NÉV` )<br />
Lépjünk be a **host** gépről: `ssh user@virtuális.gép.ip.címe` <br />
Írjunk be egy *yes*-t majd adjuk meg *user* jelszavát.<br />
!!!KÉP:ssh setup+LOGIN!!!<br />
Szedjük le a szükséges anyagokat a `git clone https://github.com/Intel107/serversetup.git` paranccsal!<br />
Menjünk bele a mappájába (`cd serversetup`), majd futtassuk le a beállító scriptet (`sudo ./setup.sh`) <br />
!!!KÉP:github clone+setup.sh!!!<br />
