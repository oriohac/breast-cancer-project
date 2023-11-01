import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A001E),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Padding(
                  padding:  EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child:  Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontSize: 24,),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.fromLTRB(35, 31, 35, 31),
                  child:  Text(
                    'Enter your Email and Password to log into your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontFamily: 'Poppinsr',fontSize: 17,),
                  ),
                ),
                // email
                const Padding(
                  padding:  EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child:  SizedBox(
                    height: 62,
                    width: 320,
                    child:  TextField(
                      style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: AutofillHints.email,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6)))),
                    ),
                  ),
                ),
                // Password
                const Padding(
                  padding:  EdgeInsets.fromLTRB(0, 12, 0, 18),
                  child:  SizedBox(
                    height: 62,
                    width: 320,
                    child:  TextField(
                      style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
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
                      style: TextStyle(color: Colors.white,fontFamily: 'Poppinsr',fontSize: 17,),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: const Text("Register",style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),)),
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
                        Navigator.pushNamed(context, '/start');
                      },
                      child: const Text("LOGIN",style: TextStyle(color: Colors.black, fontFamily: 'Poppins',fontSize: 24,),)),
                ),
              ]),
        ),
      ),
    );
  }
}
