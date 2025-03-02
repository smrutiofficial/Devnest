class Task {
  final String name;
  final String description;
  final String command;

  Task({
    required this.name,
    required this.description,
    required this.command,
  });
}

// List of tasks with installation commands
final List<Task> tasks3 = [
  Task(
    name: 'Install Custom Font',
    description: 'Installs a custom font on your system.',
    command: 'wget -P ~/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip && unzip ~/Downloads/JetBrainsMono.zip -d ~/.fonts',
  ),
  Task(
    name: 'Terminal Customization',
    description: 'Customize the terminal with themes, profiles, and fonts.',
    command: '''
      sh -c "\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && 
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "\${ZSH_CUSTOM:-\$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" && 
      sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\\/powerlevel10k"/' ~/.zshrc &&
      source ~/.zshrc
    ''',
  ),
  Task(
    name: 'Installing EverForest Theme',
    description: 'Installs the EverForest GTK theme for GNOME.',
    command: 'firefox https://www.gnome-look.org/p/1695467',
  ),
  Task(
    name: 'Fix Flatpak Themes',
    description: 'Fixes theme issues with Flatpak apps on GNOME.',
    command: 'sudo flatpak override --filesystem=~/.themes',
  ),
  Task(
    name: 'Installing Evlove',
    description: 'Installs the Evlove theme for GNOME Shell.',
    command: 'wget --content-disposition --no-check-certificate -P ~/Downloads "https://www.patreon.com/file?h=112787397&m=363897322"',
  ),
  // Task(
  //   name: 'Config Extensions',
  //   description: 'Configures GNOME Shell extensions using GNOME Tweaks.',
  //   command: 'gnome-tweaks',
  // ),
  // Task(
  //   name: 'Conky Setup',
  //   description: 'Sets up Conky for system monitoring on the desktop.',
  //   command: 'sudo apt install conky && conky',
  // ),
];
