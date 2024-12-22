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
    command: 'gnome-extensions enable user-themes@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Rounded Window Corners Reborn',
    description: 'Adds rounded corners to GNOME Shell windows.',
    command: 'gnome-extensions enable rounded-window-corners@jannis.archlinux.org',
  ),
  Task(
    name: 'Pano-clipboard',
    description: 'A clipboard manager for GNOME Shell.',
    command: 'gnome-extensions enable pano-clipboard@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'OSD Volume Number',
    description: 'Displays volume levels as numbers in the OSD.',
    command: 'gnome-extensions enable osd-volume-number@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Notification Timeout',
    description: 'Allows configuring how long notifications remain visible.',
    command: 'gnome-extensions enable notification-timeout@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Media Controls',
    description: 'Adds media control widgets to the GNOME panel.',
    command: 'gnome-extensions enable media-controls@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Lilypad',
    description: 'A floating sticky note application for GNOME.',
    command: 'gnome-extensions enable lilypad@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Just Perfection',
    description: 'Customizes GNOME Shell to fit your needs.',
    command: 'gnome-extensions enable just-perfection@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'GSConnect',
    description: 'Integrates Android devices with GNOME Shell.',
    command: 'gnome-extensions enable gsconnect@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Gnome 4x UI Improvements',
    description: 'Enhances the GNOME Shell UI for better usability.',
    command: 'gnome-extensions enable gnome-4x-ui-improvements@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Frippery Move Clock',
    description: 'Moves the clock to the right side of the top bar.',
    command: 'gnome-extensions enable frippery-move-clock@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Dash to Dock',
    description: 'Turns the GNOME dash into a dock for easier app access.',
    command: 'gnome-extensions enable dash-to-dock@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Custom Hot Corners-Extended',
    description: 'Extends the functionality of GNOME hot corners.',
    command: 'gnome-extensions enable custom-hot-corners-extended@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Compiz Alike Magic Lamp Effect',
    description: 'Adds a Compiz-like minimize animation effect.',
    command: 'gnome-extensions enable compiz-alike-magic-lamp@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Caffeine',
    description: 'Prevents the system from sleeping or locking the screen.',
    command: 'gnome-extensions enable caffeine@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Burn My Windows',
    description: 'Adds various window closing animations, including flames.',
    command: 'gnome-extensions enable burn-my-windows@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Blur My Shell',
    description: 'Adds a blur effect to the GNOME Shell background.',
    command: 'gnome-extensions enable blur-my-shell@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Bluetooth Battery Meter',
    description: 'Displays the battery level of connected Bluetooth devices.',
    command: 'gnome-extensions enable bluetooth-battery-meter@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'Astra Monitor',
    description: 'Monitors system resources in GNOME Shell.',
    command: 'gnome-extensions enable astra-monitor@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'ArcMenu',
    description: 'Adds a customizable application menu to the top bar.',
    command: 'gnome-extensions enable arc-menu@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'App Menu Is Back',
    description: 'Restores the app menu to the GNOME Shell top bar.',
    command: 'gnome-extensions enable app-menu-is-back@gnome-shell-extensions.gcampax.github.com',
  ),
  Task(
    name: 'AppIndicator and KStatusNotifierItem Support',
    description: 'Adds support for app indicators and system tray icons.',
    command: 'gnome-extensions enable appindicator-support@gnome-shell-extensions.gcampax.github.com',
  ),
];
