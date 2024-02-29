require 'watir'

# Définir le chemin du pilote chromedriver
Selenium::WebDriver::Chrome::Service.driver_path = '/usr/lib/chromium-browser/chromedriver'

# Ouvre une nouvelle instance de Chromium avec la page 3CX
browser = Watir::Browser.new :chrome, options: { args: ['--app=LIEN VERS LE SITE WEB', '--disable-infobars'] }

# Localise le nom d'utilisateur et le mot de passe grâce aux ID dans le code de la page
username_input = browser.text_field(id: 'loginInput')
password_input = browser.text_field(id: 'passwordInput')

# Rempli les information de connexion
username_input.set 'NOM D UTILISATEUR'
password_input.set 'MOT DE PASSE'

# Appuie sur Entrée pour se connecter
password_input.send_keys :enter

# Récupère les dimensions de l'écran
screen_width = browser.execute_script('return screen.width')
screen_height = browser.execute_script('return screen.height')

# Calcule la nouvelle position de l'instance de Chromium et la taille pour le coté droit
new_window_width = screen_width / 2
new_window_height = screen_height
new_window_x = screen_width / 2
new_window_y = 0

# Déplace l'instance de Chromium sur la gauche et la redimensionne si besoin
browser.window.resize_to(new_window_width, new_window_height)
browser.window.move_to(new_window_x, new_window_y)
sleep(5)

# Garde le navigateur ouvert
gets

