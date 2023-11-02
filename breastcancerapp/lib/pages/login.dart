import 'package:breastcancerapp/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A001E),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 31, 35, 31),
              child: Text(
                'Enter your Email and Password to log into your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppinsr',
                  fontSize: 17,
                ),
              ),
            ),
            // email
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: SizedBox(
                height: 62,
                width: 320,
                child: TextField(
                  controller: _emailController,
                  style: const TextStyle(
                    fontFamily: 'Poppinsr',
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: AutofillHints.email,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
            ),
            // Password
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 18),
              child: SizedBox(
                height: 62,
                width: 320,
                child: TextField(
                  controller: _passwordController,
                  style: const TextStyle(
                    fontFamily: 'Poppinsr',
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                  obscureText: true,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppinsr',
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontFamily: 'Poppinsr',
                        fontSize: 17,
                      ),
                    )),
              ],
            ),

            // Button
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 32),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    minimumSize: const Size(250, 62),
                    backgroundColor: const Color(0xffDB7D95),
                  ),
                  onPressed: () {
                    _login();
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 24,
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }

  void _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(behavior: SnackBarBehavior.floating, content: Text("User is successfuly Signed In")));
      
      Navigator.pushNamed(context, '/start');
    } else {
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(behavior: SnackBarBehavior.floating, content: Text("Some error occured")));
    }
  }
}
