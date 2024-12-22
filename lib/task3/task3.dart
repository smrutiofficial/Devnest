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
    command: 'sudo apt install font-manager && font-manager',
  ),
  Task(
    name: 'Terminal Customization',
    description: 'Customize the terminal with themes, profiles, and fonts.',
    command: 'gnome-terminal --preferences',
  ),
  Task(
    name: 'Installing EverForest Theme',
    description: 'Installs the EverForest GTK theme for GNOME.',
    command: 'sudo apt install everforest-gtk-theme',
  ),
  Task(
    name: 'Fix Flatpak Themes',
    description: 'Fixes theme issues with Flatpak apps on GNOME.',
    command: 'sudo apt install flatpak-theme',
  ),
  Task(
    name: 'Installing Evlove',
    description: 'Installs the Evlove theme for GNOME Shell.',
    command: 'git clone https://github.com/evlove/evlove-theme.git && cd evlove-theme && ./install.sh',
  ),
  Task(
    name: 'Config Extensions',
    description: 'Configures GNOME Shell extensions using GNOME Tweaks.',
    command: 'gnome-tweaks',
  ),
  Task(
    name: 'Conky Setup',
    description: 'Sets up Conky for system monitoring on the desktop.',
    command: 'sudo apt install conky && conky',
  ),
];
