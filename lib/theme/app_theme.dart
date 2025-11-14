import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          elevation: 20,
          foregroundColor: Colors.white,
        ),

        listTileTheme: ListTileThemeData(
          textColor: Colors.black,
          iconColor: primary,
        ),

        // Estilo de los botones de la aplicación
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
        )

      );
}