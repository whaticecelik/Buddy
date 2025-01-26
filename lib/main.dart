import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:provider/provider.dart';
import 'core/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp.router(
        title: 'Flutter App',
        themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: router, // go_router yapılandırmamızı kullan
        debugShowCheckedModeBanner: false, // Debug bandını kaldır
      );
    });
  }
}/*import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'core/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();  // Flutter widget'larını başlat
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter App',
      themeMode: ThemeMode.dark, // şu an varsayılan light mode 
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: router,  // go_router yapılandırmamızı kullan
      debugShowCheckedModeBanner: false,  // Debug bandını kaldır
    );
  }
}
*/