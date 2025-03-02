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

// List of extensions with installation commands
final List<Task> tasks2 = [
  Task(
    name: 'User Themes',
    description: 'Allows loading and using custom themes for GNOME Shell.',
    command: 'firefox https://extensions.gnome.org/extension/19/user-themes/',
  ),
  Task(
    name: 'Rounded Window Corners Reborn',
    description: 'Adds rounded corners to GNOME Shell windows.',
    command: 'firefox https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/',
  ),
  Task(
    name: 'Pano-clipboard',
    description: 'A clipboard manager for GNOME Shell.',
    command: 'firefox https://extensions.gnome.org/extension/5278/pano/',
  ),
  Task(
    name: 'OSD Volume Number',
    description: 'Displays volume levels as numbers in the OSD.',
    command: 'firefox https://extensions.gnome.org/extension/5461/osd-volume-number/',
  ),
  Task(
    name: 'Notification Timeout',
    description: 'Allows configuring how long notifications remain visible.',
    command: 'firefox https://extensions.gnome.org/extension/3795/notification-timeout/',
  ),
  Task(
    name: 'Media Controls',
    description: 'Adds media control widgets to the GNOME panel.',
    command: 'firefox https://extensions.gnome.org/extension/4470/media-controls/',
  ),
  Task(
    name: 'Lilypad',
    description: 'A floating sticky note application for GNOME.',
    command: 'firefox https://extensions.gnome.org/extension/7266/lilypad/',
  ),
  Task(
    name: 'Just Perfection',
    description: 'Customizes GNOME Shell to fit your needs.',
    command: 'firefox https://extensions.gnome.org/extension/3843/just-perfection/',
  ),
  Task(
    name: 'GSConnect',
    description: 'Integrates Android devices with GNOME Shell.',
    command: 'firefox https://extensions.gnome.org/extension/1319/gsconnect/',
  ),
  Task(
    name: 'Gnome 4x UI Improvements',
    description: 'Enhances the GNOME Shell UI for better usability.',
    command: 'firefox https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/',
  ),
  Task(
    name: 'Frippery Move Clock',
    description: 'Moves the clock to the right side of the top bar.',
    command: 'firefox https://extensions.gnome.org/extension/2/move-clock/',
  ),
  Task(
    name: 'Dash to Dock',
    description: 'Turns the GNOME dash into a dock for easier app access.',
    command: 'firefox https://extensions.gnome.org/extension/307/dash-to-dock/',
  ),
  Task(
    name: 'Custom Hot Corners-Extended',
    description: 'Extends the functionality of GNOME hot corners.',
    command: 'firefox https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/',
  ),
  Task(
    name: 'Compiz Alike Magic Lamp Effect',
    description: 'Adds a Compiz-like minimize animation effect.',
    command: 'firefox https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/',
  ),
  Task(
    name: 'Caffeine',
    description: 'Prevents the system from sleeping or locking the screen.',
    command: 'firefox https://extensions.gnome.org/extension/517/caffeine/',
  ),
  Task(
    name: 'Burn My Windows',
    description: 'Adds various window closing animations, including flames.',
    command: 'firefox https://extensions.gnome.org/extension/4679/burn-my-windows/',
  ),
  Task(
    name: 'Blur My Shell',
    description: 'Adds a blur effect to the GNOME Shell background.',
    command: 'firefox https://extensions.gnome.org/extension/3193/blur-my-shell/',
  ),
  Task(
    name: 'Bluetooth Battery Meter',
    description: 'Displays the battery level of connected Bluetooth devices.',
    command: 'firefox https://extensions.gnome.org/extension/6670/bluetooth-battery-meter/',
  ),
  Task(
    name: 'Astra Monitor',
    description: 'Monitors system resources in GNOME Shell.',
    command: 'firefox https://extensions.gnome.org/extension/6682/astra-monitor/',
  ),
  Task(
    name: 'ArcMenu',
    description: 'Adds a customizable application menu to the top bar.',
    command: 'firefox https://extensions.gnome.org/extension/3628/arcmenu/',
  ),
  Task(
    name: 'App Menu Is Back',
    description: 'Restores the app menu to the GNOME Shell top bar.',
    command: 'firefox https://extensions.gnome.org/extension/6433/app-menu-is-back/',
  ),
];
