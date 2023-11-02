import 'package:breastcancerapp/pages/signup.dart';
import 'package:breastcancerapp/pages/start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, timer) => timer.connectionState == ConnectionState.done
          ? StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  final user = snapshot.data;
                  if (user == null) {
                    return const Signup();
                  } else {
                    return const Start();
                  }
                }
                return const CircularProgressIndicator();
              })
          : Scaffold(
              backgroundColor: const Color(0xffDB7D95),
              body: Center(
                child: Image.asset(
                  'lib/assets/images/bubby.png',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}
