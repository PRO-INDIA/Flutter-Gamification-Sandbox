import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progamification/progamification.dart';
import 'package:sandbox_flutter/widgets/description.dart';
import 'package:sandbox_flutter/screen/layout.dart';

void main() {
  GamificationService.init(
      '887ddc99-b193-43ad-aa42-31510be0f9de',
      "MWUyNWY4MDMtOWE1Zi00Y2E2LTlhYjAtYThkYTA3YjNhOWZi",
      "guna@pro",
      "6440c9b54a1e1dbe73bf2040");
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
      home: Scaffold(body: Layout(title: "")),
    );
  }
}
