import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((function) {
    runApp(const MainScreen());
  });
}
