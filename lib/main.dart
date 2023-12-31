import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '/screens/main_menu.dart';

List<CameraDescription> cameras = [];

Future<void> main() async  {
  WidgetsFlutterBinding.ensureInitialized();

  

  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainMenu(),
    );
  }
}
