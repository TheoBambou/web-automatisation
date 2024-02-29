require 'watir'

# Chemin vers le pilote chromedriver
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

# Nouvelle taille pour prendre toute la largeur et hauteur de l'écran
new_window_width = screen_width
new_window_height = screen_height

# Position en haut à gauche de l'écran
new_window_x = 0
new_window_y = 0

# Redimensionne et déplace la fenêtre du navigateur
browser.window.resize_to(new_window_width, new_window_height)
browser.window.move_to(new_window_x, new_window_y)
sleep(5)

# Garde le navigateur ouvert
gets

