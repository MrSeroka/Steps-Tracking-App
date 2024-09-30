import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackingsteps/pages/details/details.dart';
// ignore: unused_import
import 'package:trackingsteps/pages/home/home.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Tracking Steps',
    theme: ThemeData(
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w900
        ),
      )
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      
      '/details': (context) => const DetailsPage(),
      
    },
     initialRoute: '/',
    );
  

  }
}