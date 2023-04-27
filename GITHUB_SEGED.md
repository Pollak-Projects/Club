

### Git segéd ###

- <strong>git clone {link}</strong> -- Letölti/Lemásolja a repót
- <strong>git status</strong> -- Állapot megjelenítésére alkalmas. Segítségével meg lehet tekinteni, hogy mely fájlok újak, módosítottak vagy töröltek
- <strong>git add {fáj neve}</strong> -- A módosított fájlokat indexeli
- <strong>git add .</strong> -- Minden módosított fájl, mappa indexelésre kerül, általában ezt szoktuk használni

- <strong>git commit -m "a commit szövege"</strong> -- Minden módosításunkat eltárolja/elmenti egy helyi adatbázisba. Mindenféle képpen először a `git add` parancsot kell lefuttatni.

- <strong>git checkout {branch neve}</strong> -- Másik branchre váltást teszi lehetővé
- <strong>git pull <origin {branch neve}></strong> -- Letölti a módosítások a git szerverről. Majd azokat mergeli a helyi fájlokkal. Az origin és a branch megadása nem minden esetben szükséges.
- <strong>git push <origin {branch neve}></strong> -- Feltöli a git szerverre a COMMIT-olt módosításainkat. Az origin és a branch megadása nem minden esetben szükséges.
- <strong>git revert {commit_sha1_kulcs}</strong> -- Visszavonja a módosításokat
- <strong>git reset {commit_sha1_kulcs}</strong> -- Helyileg commitolt változtatások visszaállítására alkalmas
- <strong>git reset --hard HEAD</strong> -- Helyileg még nem commitolt változtatások elvetése

### Egy példa ###
- <strong>git clone {link}</strong> -- A link lehet https vagy ssh is, az ssh-hoz kell a kulcsunk\

Kész vagyunk egy feladat résszel, amely működik. A működik alatt arra kell gondolni, hogy valamilyen éredni változtatást csináltunk és lefut a kódunk, akkor a alábbi parancsok kiadásával fel is tudjuk rakni a git szerverre.

- <strong>git status</strong> -- Nem feltétlen szükséges, de meg tudjuk a segítségével nézni, hogy mely fájlokban történt változtatás.
- <strong>git add .</strong> -- Minen változtatott fájlt hozzáadunk, hogy később commitolni tudjunk
- <strong>git commit -m "üzenet"</strong> -- A változtatásaink elmentése, az üzenet legyen értelmes, amely utal arra amit csináltunk. Ne például "FIX" legyen.
- <strong>git pull</strong> -- Mindig töltsük le a módosítást. Nehogy felülírjuk más munkáját Az újabb git nem is engedi már felölteni, amíg nem töljük le a fenti módosításokat. 
- <strong>git push</strong> -- A változtatásaink feltöltése a szerverre.
  
***
### Huszka Adrián Gábornak köszönjük a segédet! ###
