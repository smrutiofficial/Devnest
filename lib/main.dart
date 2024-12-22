import 'package:flutter/material.dart';
import 'package:devnest/topbar.dart'; // Import your custom topbar
import 'package:window_manager/window_manager.dart'; // Import window_manager

void main() async {
  // Ensure Flutter bindings are initialized before using window_manager
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize window_manager
  await windowManager.ensureInitialized();
  // Set the window properties (e.g., title, class name, icon)
  await windowManager.setTitle('DevNest'); // Set window title
  
  // Run the app
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Topbar(),
      ),
    ),
  );
}
