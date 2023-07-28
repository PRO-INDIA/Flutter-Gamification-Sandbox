import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progamification/progamification.dart';
import 'package:sandbox_flutter/screen/landing_widget.dart';
import 'package:sandbox_flutter/widgets/create-gamification.dart';
import 'package:sandbox_flutter/widgets/description.dart';
import 'package:sandbox_flutter/screen/layout.dart';

import 'environment/environment.dart';

void main() {

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SandboxGamificationFlutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: GoogleFonts.dmSans().fontFamily),
      home: const Scaffold(body: initialize()),
    );
  }
}
