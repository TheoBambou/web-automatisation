<h1 align="center" id="title">Automatisation Web</h1>

<p id="description">Script conçu pour automatiser l'ouverture d'une page Web et la connexion à celui-ci</p>

<p align="center"><img src="https://img.shields.io/badge/ruby-red" alt="shields"></p>

<h2>🛠️ Installation Steps:</h2>

<p>1. Installation de Ruby</p>

```
sudo apt update
```

```
sudo apt install ruby-full
```

<p>2. Installation des gems</p>

```
sudo gem install watir
```

```
sudo gem install webdrivers -v 5.3.0
```

```
sudo gem install selenium-webdriver -v 3.142.7
```

<p>3. Installation de Chromium et de son Webdriver</p>

```
sudo apt update
```

```
sudo apt install chromium-browser
```

```
sudo apt install chromium-chromedriver
```

<p>4. Démmarrage du script automatisé au lancement de la machine avec PM2 (Optionnel)</p>

```
sudo apt-get update
```

```
sudo apt-get install nodejs npm
```

```
sudo npm install pm2 -g
```

```
cd CHEMIN/VERS/LE/SCRIPT
```

```
pm start nomduscript.rb --name nomduscript
```

```
pm2 list
```

```
pm2 startup
```

<p>Copiez et collez puis éxécutez la ligne de commande commençant par 'sudo' donné à la fin de l'éxécutu=ion de la commande 'pm2 startup'</p>

```
pm2 save
```
