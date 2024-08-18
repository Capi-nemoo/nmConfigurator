#!/bin/bash

# Colores
RED='\033[0;31m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
INDIGO='\033[0;35m'
VIOLET='\033[0;35m'
NC='\033[0m' # No Color

# Mostrar "NEMOO" en colores de arcoíris
echo -e "
${RED} _   _  ${ORANGE}______ ${YELLOW}__  __ ${GREEN} ____   ${BLUE}____  
${RED}| \ | |${ORANGE}|  ____|${YELLOW}  \/  |${GREEN}/ __ \ ${BLUE}/ __ \ 
${RED}|  \| |${ORANGE}| |__  ${YELLOW}| \  / |${GREEN}| | | |${BLUE}| | | |
${RED}| . \ |${ORANGE}|  __| ${YELLOW}| |\/| |${GREEN}| | | |${BLUE}| | | |
${RED}| |\  |${ORANGE}| |____${YELLOW}| |  | |${GREEN}| |_| |${BLUE}| |_| |
${RED}|_| \_|${ORANGE}|______${YELLOW}|_|  |_|${GREEN}\____/ ${BLUE}\____/ 

${RED}  _____ ${ORANGE}  _____ ${YELLOW} _____  ${GREEN}  _____  ${BLUE} _____ ${INDIGO}  _______ 
${RED} / ____|${ORANGE}/ ____| ${YELLOW}|  __ \  ${GREEN}|_   _| ${BLUE}|  __ \ ${INDIGO}|__   __|
${RED}| (___  ${ORANGE}| |     ${YELLOW}| |__) | ${GREEN}  | |   ${BLUE}| |__) |${INDIGO}   | |   
${RED} \___ \ ${ORANGE}| |     ${YELLOW}|  _  /  ${GREEN}  | |   ${BLUE}|  ___/ ${INDIGO}   | |   
${RED} ____) |${ORANGE}| |____ ${YELLOW}| | \ \  ${GREEN} _| |_  ${BLUE}| |     ${INDIGO}   | |   
${RED}|_____/ ${ORANGE} \_____|${YELLOW}|_|  \_\ ${GREEN}|_____| ${BLUE}|_|     ${INDIGO}   |_|   
${NC}
"

# Mostrar enlaces a GitHub y YouTube
echo -e "\nPara más scripts y tutoriales, visita:"
echo -e "
\e[94mGitHub: https://github.com/Capi-nemoo\e[0m
"
echo -e "
\e[91mYouTube: https://www.youtube.com/@capi_nemoo\e[0m\n
"

# Preguntar el idioma preferido
read -p "
Select language / Selecciona idioma (en/es): 
" lang

# Preguntar si desea ver la lista de paquetes o una descripción antes de instalar
if [[ $lang == "es" ]]; then
  echo -e "Opciones:"
  echo -e "1) Ver lista de paquetes"
  echo -e "2) Ver descripción corta de los paquetes"
  read -p "Elige una opción (1/2): " option
else
  echo -e "Options:"
  echo -e "1) View package list"
  echo -e "2) View short description of packages"
  read -p "Choose an option (1/2): " option
fi

# Mostrar lista de paquetes o descripciones según la opción seleccionada
if [[ $option == "1" ]]; then
  if [[ $lang == "es" ]]; then
    echo "Los siguientes paquetes se instalarán:"
  else
    echo "The following packages will be installed:"
  fi
  echo "
  - firefox
  - kitty
  - neovim
  - fastfetch
  - yay
  - fzf
  - feh
  - rofi
  - vlc
  - discord
  - polybar
  - picom
  - arandr
  - wine
  - keepassxc
  - exa
  - steam
  - dolphin
  - timeshift
  - obs-studio
  - tor
  - bat
  - qbittorrent
  - hyperfine
  - taskwarrior
  - nitrogen
  - obsidian (AUR)
  - factorio (AUR)
  - youtube-dl (AUR)
  - barrier (AUR)
  - zsh
  - oh-my-zsh (AUR)
  - lvim (AUR)
  "
elif [[ $option == "2" ]]; then
  if [[ $lang == "es" ]]; then
    echo "Descripción corta de los paquetes:"
    echo "
    - firefox: Navegador web popular y seguro.
    - kitty: Emulador de terminal rápido y personalizable.
    - neovim: Editor de texto avanzado basado en Vim.
    - fastfetch: Herramienta rápida para mostrar información del sistema.
    - yay: AUR helper para instalar paquetes de Arch User Repository.
    - fzf: Herramienta de búsqueda rápida para la terminal.
    - feh: Visor de imágenes ligero para la terminal.
    - rofi: Lanzador de aplicaciones y cambiador de ventanas.
    - vlc: Reproductor multimedia versátil.
    - discord: Plataforma de comunicación para comunidades.
    - polybar: Barra de estado personalizable para gestores de ventanas.
    - picom: Compositor de ventanas para efectos como sombras y transparencias.
    - arandr: Herramienta gráfica para configurar monitores.
    - wine: Ejecuta aplicaciones de Windows en Linux.
    - keepassxc: Gestor de contraseñas seguro.
    - exa: Reemplazo moderno de 'ls' con colores y más funciones.
    - steam: Plataforma de distribución de videojuegos.
    - dolphin: Administrador de archivos para KDE.
    - timeshift: Herramienta de respaldo y restauración del sistema.
    - obs-studio: Software de grabación y transmisión de video.
    - tor: Navegador para navegación anónima.
    - bat: Reemplazo mejorado de 'cat' con resaltado de sintaxis.
    - qbittorrent: Cliente de BitTorrent con interfaz gráfica.
    - hyperfine: Benchmarking de tiempo de ejecución de comandos.
    - taskwarrior: Gestor de tareas basado en la línea de comandos.
    - nitrogen: Herramienta para configurar fondos de pantalla.
    - obsidian (AUR): Aplicación de toma de notas basada en markdown.
    - factorio (AUR): Videojuego de construcción y gestión de recursos.
    - youtube-dl (AUR): Descargador de videos de YouTube y otros sitios.
    - barrier (AUR): Comparte teclado y ratón entre múltiples PCs.
    - zsh: Shell avanzada y personalizable.
    - oh-my-zsh (AUR): Framework para gestionar configuraciones de zsh.
    - lvim (AUR): Versión personalizada y extendida de Neovim.
    "
  else
    echo "Short description of packages:"
    echo "
    - firefox: Popular and secure web browser.
    - kitty: Fast and customizable terminal emulator.
    - neovim: Advanced text editor based on Vim.
    - fastfetch: Fast tool to display system information.
    - yay: AUR helper to install packages from Arch User Repository.
    - fzf: Fast search tool for the terminal.
    - feh: Lightweight image viewer for the terminal.
    - rofi: Application launcher and window switcher.
    - vlc: Versatile multimedia player.
    - discord: Communication platform for communities.
    - polybar: Customizable status bar for window managers.
    - picom: Window compositor for effects like shadows and transparency.
    - arandr: Graphical tool to configure monitors.
    - wine: Runs Windows applications on Linux.
    - keepassxc: Secure password manager.
    - exa: Modern replacement for 'ls' with colors and more features.
    - steam: Video game distribution platform.
    - dolphin: File manager for KDE.
    - timeshift: System backup and restore tool.
    - obs-studio: Video recording and streaming software.
    - tor: Browser for anonymous browsing.
    - bat: Enhanced replacement for 'cat' with syntax highlighting.
    - qbittorrent: BitTorrent client with graphical interface.
    - hyperfine: Command execution time benchmarking.
    - taskwarrior: Command-line based task manager.
    - nitrogen: Tool to set wallpapers.
    - obsidian (AUR): Markdown-based note-taking application.
    - factorio (AUR): Construction and resource management game.
    - youtube-dl (AUR): Video downloader for YouTube and other sites.
    - barrier (AUR): Share keyboard and mouse between multiple PCs.
    - zsh: Advanced and customizable shell.
    - oh-my-zsh (AUR): Framework to manage zsh configurations.
    - lvim (AUR): Custom and extended version of Neovim.
    "
  fi
fi

# Confirmación antes de proceder
if [[ $lang == "es" ]]; then
  read -p "¿Quieres proceder con la instalación? (s/n): " confirm
else
  read -p "Do you want to proceed with the installation? (y/n): " confirm
fi

if [[ $confirm == "s" || $confirm == "S" || $confirm == "y" || $confirm == "Y" ]]; then
  # Actualizar el sistema / Update the system
  sudo pacman -Syu --noconfirm

  # Instalar paquetes desde los repos oficiales / Install packages from official repos
  sudo pacman -S --noconfirm \
    firefox \
    kitty \
    neovim \
    fastfetch \
    fzf \
    feh \
    rofi \
    vlc \
    discord \
    polybar \
    picom \
    arandr \
    wine \
    keepassxc \
    exa \
    steam \
    dolphin \
    timeshift \
    obs-studio \
    tor \
    bat \
    qbittorrent \
    hyperfine \
    nitrogen \
    zsh

  # Instalar paquetes desde AUR usando yay / Install packages from AUR using yay
  yay -S --noconfirm \
    obsidian \
    factorio \
    youtube-dl \
    barrier \
    oh-my-zsh \
    lvim \
    taskwarrior
    		

  # Configurar zsh como shell predeterminada / Set zsh as the default shell
  chsh -s $(which zsh)

  if [[ $lang == "es" ]]; then
    echo "¡Instalación completada con éxito!"
  else
    echo "Installation completed successfully!"
  fi
else
  if [[ $lang == "es" ]]; then
    echo "Instalación cancelada."
  else
    echo "Installation cancelled."
  fi
fi
