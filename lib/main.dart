import 'package:appmercadinho/pages/home_mercadinho.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Mercado',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 248, 220, 95),
        dialogTheme: DialogThemeData(
          backgroundColor: Color.fromARGB(255, 245, 233, 124),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color.fromARGB(122, 255, 255, 255),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color.fromARGB(255, 245, 233, 124),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 248, 220, 95),
            foregroundColor: Color.fromARGB(255, 1, 1, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
        ),
        cardTheme: CardThemeData(
          color: Color.fromARGB(255, 248, 220, 95),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(50),
          ),
          backgroundColor: Color.fromARGB(255, 248, 220, 95),
          foregroundColor: Color.fromARGB(255, 1, 1, 1),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 245, 233, 124),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          ),
          centerTitle: true,
          foregroundColor: Color.fromARGB(255, 1, 1, 1),
          backgroundColor: Color.fromARGB(255, 248, 220, 95),
        ),
      ),
      home: HomeMercadinho(),
    );
  }
}
