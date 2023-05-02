import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progamification/progamification.dart';
import 'package:sandbox_flutter/widgets/description.dart';
import 'package:sandbox_flutter/screen/layout.dart';

import 'environment/environment.dart';

void main() {
  gamificationService();
  runApp(const MyApp());
}

gamificationService() async {
  await GamificationService.init(clientId, clientSecret, userId, applicationId);
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
