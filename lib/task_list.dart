class Task {
  final String name;
  final String command;
  final String description;

  Task({
    required this.name,
    required this.command,
    required this.description,
  });
}

// List of tasks
final List<Task> tasks = [
  Task(
    name: 'System Update',
    command: 'sudo apt update & sudo apt upgrade -y',
    description:
        'The system downloads metadata about available software from repositories, updates the local package cache, checks for newer versions of installed packages, prepares the system to identify available updates, compares installed packages with available updates, downloads and installs newer versions of existing packages, ensures compatibility by resolving dependencies without removing packages, and applies security patches and bug fixes for installed software.',
  ),
  Task(
    name: 'APT Apps Install',
    command:
        'sudo apt install vlc podman zsh gnome-shell-extension-manager gnome-shell-extensions dconf-editor git curl wget openjdk-18-jdk build-essential gimp blender gnome-tweaks bpytop  flatpak gnome-software-plugin-flatpak -y',
    description: 'Installs applications using the APT package manager.',
  ),
  Task(
    name: 'Flatpak Setup',
    command:
        'flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo',
    description: 'Installs Flatpak to manage apps across Linux distros.',
  ),
  Task(
    name: 'Install Flatpak Apps',
    command:
        'flatpak install flathub com.google.AndroidStudio com.bitwarden.desktop com.brave.Browser it.mijorus.collector org.gnome.design.Palette nl.hjdskes.gcolor3 org.mozilla.firefox com.github.tchx84.Flatseal org.inkscape.Inkscape rest.insomnia.Insomnia org.localsend.localsend_app org.libreoffice.LibreOffice com.microsoft.Edge com.mongodb.Compass dev.gbstudio.gb-studio md.obsidian.Obsidian io.podman_desktop.PodmanDesktop com.spotify.Client com.stremio.Stremio io.gitlab.adhami3310.Converter org.telegram.desktop io.github.flattool.Warehouse com.rtosta.zapzap -y',
    description:
        'This command installs multiple applications from Flathub using Flatpak, including Android Studio, Bitwarden, Brave Browser, Collector, Colour Palette, Colour picker, Firefox, Flatseal, Inkscape, Insomnia, LocalSend, LibreOffice, Microsoft Edge, MongoDB Compass,OBS Studio, Obsidian, Podman Desktop, Spotify, Stremio, Telegram, Warehouse, and Zapzap, ensuring a complete software setup in one go.',
  ),
  Task(
    name: 'Install .DEB Apps',
    command:
        ' mkdir -p ~/Applications && wget -P ~/Applications "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" && wget -P ~/Applications "https://app.warp.dev/get_warp?package=deb" && sudo add-apt-repository ppa:neovim-ppa/unstable -y && sudo apt update && sudo apt install neovim -y && sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher -y',
    description:
        'This command creates the ~/Applications directory, downloads VS Code and Warp with their default names, adds the Neovim (unstable) and Ulauncher PPAs, enables the universe repository, updates package lists, and installs Neovim and Ulauncher, ensuring a smooth setup in one go. ',
  ),
  // Task(
  //   name: 'Remove Snap',
  //   command:
  //       'for pkg in \$(snap list | awk "NR>1 {print \$1}"); do sudo snap remove "\$pkg"; done && sudo apt purge snapd -y && rm -rf ~/snap /var/{snap,lib/snapd,cache/snapd} && sudo apt-mark hold snapd',
  //   description: 'Removes the Snap package manager from your system.',
  // ),
  Task(
    name: 'Setup Neovim',
    command:
        'git clone https://github.com/smrutiofficial/dotnet_config.git ~/dotnet_config && cp -r ~/dotnet_config/.config/nvim ~/.config/',
    description: 'Sets up Neovim configuration.',
  ),
  Task(
    name: 'Setup Tmux',
    command:
        'cp -r ~/dotnet_config/.config/tmux ~/.config/ && cp ~/dotnet_config/.tmux.conf ~/',
    description: 'Sets up Tmux configuration.',
  ),
  Task(
    name: 'Install Flutter',
    command:
        'sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64 && wget -P ~/Downloads/ "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.0-stable.tar.xz" && mkdir -p ~/development/ && tar -xf ~/Downloads/flutter_linux_3.29.0-stable.tar.xz -C ~/development/ && echo \'export PATH="\$HOME/development/flutter/bin:\$PATH"\' >> ~/.zshenv',
    description: 'Installs Flutter SDK for mobile app development.',
  ),
  // ======================================
  // Task(
  //   name: 'Install Android SDK',
  //   command: 'sudo apt install android-sdk',
  //   description: 'Installs the Android SDK for development.',
  // ),
  // Task(
  //   name: 'Setup Git SSH',
  //   command: 'ssh-keygen -t rsa -b 4096 -C "your_email@example.com"',
  //   description: 'Generates an SSH key pair for GitHub or other Git servers.',
  // ),
  // Task(
  //   name: 'Adding Git Alias',
  //   command: 'git config --global alias.<alias-name> <git-command>',
  //   description: 'Adds a custom alias for Git commands.',
  // ),
];
