import 'package:first_app/views/login_screen.dart';
import 'package:flutter/material.dart' ;
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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              wordSpacing: 1
            ),
        ),
        backgroundColor: Colors.grey,
        appBarTheme: const AppBarTheme(
          color:Colors.red,
          elevation: 0
        ),
        
      ),
     darkTheme: ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.amber
      )
     ),
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}




