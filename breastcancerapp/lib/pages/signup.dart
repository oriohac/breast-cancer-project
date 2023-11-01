import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                    'New User?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white ,fontFamily: 'Poppins',fontSize: 24,),
                  ),
                ),
               const Padding(
                  padding:   EdgeInsets.fromLTRB(35, 31, 35, 31),
                  child:  Text(
                    'Enter your Username, Email and Password to register your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white ,fontFamily: 'Poppinsr',fontSize: 17,),
                  ),
                ),
                // Name
                const SizedBox(
                  height: 62,
                  width: 320,
                  child: TextField(
                    style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),
                      textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)))),
                  ),
                ),
        
                // email
               const Padding(
                 padding:  EdgeInsets.fromLTRB(0, 24, 0, 24),
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
                   padding:  EdgeInsets.fromLTRB(0, 0, 0, 18),
                   child:  SizedBox(
                     height: 62,
                    width: 320,
                     child: TextField(
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
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white, fontFamily: 'Poppinsr',fontSize: 17,),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: const Text("Login",style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),)),
                  ],
                ),
        
                // Signup Button
                Padding(
                  padding: const  EdgeInsets.fromLTRB(0, 80, 0, 32),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffDB7D95),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                          
                          minimumSize: const Size(250, 62)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text("REGISTER",style: TextStyle(color: Colors.black, fontFamily: 'Poppins',fontSize: 24,),)),
                ),
              ]),
        ),
      ),
    );
  }
}
