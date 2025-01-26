import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 32,
        ),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.lato(),// club text title
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.lato(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.lato(), 
    titleLarge: GoogleFonts.lato(),  // clubların title ı
    headlineSmall: GoogleFonts.novaMono(), // appbar buddy text
    headlineMedium: GoogleFonts.aBeeZee(), // club member sayısı
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.novaMono(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.novaMono( // loading screen title's 
      fontSize: 80
    ), 
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
   textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 32,
        ),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.lato(),// club text title
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.lato(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.lato(),
    titleLarge: GoogleFonts.lato(),  // clubların title ı
    headlineSmall: GoogleFonts.novaMono(), // appbar buddy text
    headlineMedium: GoogleFonts.aBeeZee(), // club member sayısı
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.novaMono(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.novaMono( // loading screen title's 
      fontSize: 80
    ),
  ),
);