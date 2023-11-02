import 'package:breastcancerapp/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
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
                'New User?',
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
                'Enter your Username, Email and Password to register your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppinsr',
                  fontSize: 17,
                ),
              ),
            ),
            // Name
            SizedBox(
              height: 62,
              width: 320,
              child: TextField(
                controller: _usernameController,
                style: const TextStyle(
                  fontFamily: 'Poppinsr',
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
            ),

            // email
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
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
                  "Already have an account? ",
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
                      Navigator.pushNamed(context, "/login");
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Poppinsr',
                        fontSize: 17,
                      ),
                    )),
              ],
            ),

            // Signup Button
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 32),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffDB7D95),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      minimumSize: const Size(250, 62)),
                  onPressed: () {
                    _signUp();
                  },
                  child: const Text(
                    "REGISTER",
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

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(behavior: SnackBarBehavior.floating, content: Text('User is successfuly created')));
      Navigator.pushNamed(context, '/login');
    } else {
      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(behavior: SnackBarBehavior.floating, content: Text("Some error occured")));
    }
  }
}
