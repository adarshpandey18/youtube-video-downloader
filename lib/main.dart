import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/screens/home_screen.dart';
import 'view/screens/playlist_download.dart';
import 'view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Video Downloader',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins.toString(),
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
