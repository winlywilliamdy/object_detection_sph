/// This is our main program. This script will invoke other scripts 
/// as components. The function 'void main()' is our main function and
/// MyApp() will be our main structure for the User Interface (UI).

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:object_detection/ui/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());
}



/// The class MyApp consist of MaterialApp. MaterialApp is the core structure
/// for Flutter Application. MaterialApp is the 'parent' widget and the 'child' will be
/// HomeView().

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
