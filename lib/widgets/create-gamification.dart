import 'dart:convert';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:progamification/progamification.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/sandbox_data.dart';
import '../environment/environment.dart';
import '../screen/layout.dart';

class CreateGamefication extends StatefulWidget {
  const CreateGamefication({Key? key});

  @override
  State<CreateGamefication> createState() => _CreateGameficationState();
}

class _CreateGameficationState extends State<CreateGamefication> {
  late final _sandboxResponse;
  final ConfettiController _controllerBottomCenter =
      ConfettiController(duration: const Duration(seconds: 3));
  bool _isLoading = false;
  DateTime startapplication = DateTime.now().add(Duration(seconds: 60));

  late bool _response;
  @override
  void initState() {
    super.initState();

    _sandboxResponse = fetchSandboxResponse().then((_sandboxResponse) {
      gamificationService(
          _sandboxResponse['userId'], _sandboxResponse['applicationId']);
      _controllerBottomCenter.play();
    });
  }

  gamificationService(String uId, String appId) async {
    ProgamificationConfig.initialize(clientId, clientSecret, uId, appId);
    await GamificationService.init();
  }

  Future<Map<String, dynamic>> fetchSandboxResponse() async {
    try {
      final random = Random();
      final sandboxId = 'Sandbox ${random.nextInt(4294967296)}';

      final response = await http.post(
        Uri.parse('https://stage-gamificationapi.theproindia.com/sandbox'),
        body: jsonEncode({
          'projectId': '6412e6d18803bdfca9715bd0',
          'clientId': '6412e3e98803bd6342715ace',
          'sandboxId': sandboxId,
        }),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final sandboxResponse = jsonDecode(response.body);
        SandboxData.setSandboxData(
          userId: sandboxResponse['data']['users'][0]['userId'],
          gameId: sandboxResponse['data']['gameAction']['_id'],
          applicationId: sandboxResponse['data']['application']['_id'],
        );
        return {
          'userId': sandboxResponse['data']['users'][0]['userId'],
          'gameId': sandboxResponse['data']['gameAction']['_id'],
          'applicationId': sandboxResponse['data']['application']['_id'],
        };
      }
    } catch (error) {
      print(error);
      throw Exception('Error fetching sandbox response: $error');
    }
    return {};
  }

  void _exploreDemoButtonPressed() async {
    setState(() {
      _isLoading = true;
    });

    final response = await fetchSandboxResponse();

    setState(() {
      _isLoading = false;
    });

    if (response.isNotEmpty && _response) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Layout(
            title: '',
            sandboxResponse: response,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to fetch sandbox response.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fullscreen Green Container',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Container(
          color: Color(0xFF235449),
          child: Center(
            child: _isLoading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(width: 20.0, height: 100.0),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Horizon',
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('Creating Application ...'),
                            RotateAnimatedText('Creating Users ...'),
                            RotateAnimatedText('Creating Game Action ...'),
                          ],
                          isRepeatingAnimation: false,
                          onTap: () {
                            print("Tap Event");
                          },
                          onNext: (p0, p1) {
                            _response = p1;
                          },
                        ),
                      ),
                    ],
                  )
                : ElevatedButton(
                    child: const Text(
                      'Explore our Demo',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 230, 151, 6),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                    ),
                    onPressed: _exploreDemoButtonPressed,
                  ),
          ),
        ),
      ),
    );
  }
}
