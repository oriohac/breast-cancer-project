import 'package:breastcancerapp/pages/breathe.dart';
import 'package:breastcancerapp/pages/highrisk.dart';
import 'package:breastcancerapp/pages/login.dart';
import 'package:breastcancerapp/pages/lowrisk.dart';
import 'package:breastcancerapp/pages/massage.dart';
import 'package:breastcancerapp/pages/mirror.dart';
import 'package:breastcancerapp/pages/nips.dart';
import 'package:breastcancerapp/pages/norisk.dart';
import 'package:breastcancerapp/pages/pit.dart';
import 'package:breastcancerapp/pages/questions.dart';
import 'package:breastcancerapp/pages/response.dart';
import 'package:breastcancerapp/pages/signup.dart';
import 'package:breastcancerapp/pages/start.dart';
import 'package:breastcancerapp/pages/updown.dart';
import 'package:breastcancerapp/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const CancerApp());
}


class CancerApp extends StatelessWidget {
  const CancerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/start': (context) => const Start(),
        '/mirror': (context) => const Mirror(),
        '/updown': (context) => const Updown(),
        '/pit': (context) => const Pit(),
        '/massage': (context) => const Massage(),
        '/nips': (context) => const Nips(),
        '/response': (context) => const Response(),
        '/breathe': (context) => const Breathe(),
        '/questions': (context) => const Questions(),
        '/norisk': (context) => const Norisk(),
        '/lowrisk': (context) => const Lowrisk(),
        '/highrisk': (context) => const Highrisk(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Welcome(),
    );
  }
}
