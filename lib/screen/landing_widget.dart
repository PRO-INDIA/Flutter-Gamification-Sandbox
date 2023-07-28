import 'package:flutter/material.dart';
import 'package:progamification/progamification.dart';
import 'package:sandbox_flutter/constants/sandbox_data.dart';
import 'package:sandbox_flutter/environment/environment.dart';
import 'package:sandbox_flutter/screen/layout.dart';
import 'package:sandbox_flutter/widgets/create-gamification.dart';

class initialize extends StatefulWidget {
  const initialize({super.key});

  @override
  State<initialize> createState() => _initializeState();
}

class _initializeState extends State<initialize> {
  Map<String, dynamic>? sandboxData;
  @override
  void initState() {
    super.initState();
    SandboxData.loadSandboxDataFrom().then((value) {
      setState(() {
        sandboxData = value;
        if (value != null) {
          ProgamificationConfig.initialize(clientId, clientSecret,
              sandboxData?['userId'], sandboxData?['applicationId']);
          GamificationService.init();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: sandboxData != null
            ? Layout(title: 'Layout', sandboxResponse: sandboxData)
            : CreateGamefication());
  }
}
