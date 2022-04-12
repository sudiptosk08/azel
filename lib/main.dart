import 'package:azel/views/screens/startup/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nb_utils/nb_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget  {
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
      SchedulerBinding.instance!.window.platformBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Azel',
            themeMode: currentMode,
            home: const SplashScreen(),
          );
        });
  }
}
