import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    void logout(){
    FirebaseAuth.instance.signOut();
      Navigator.pop(context);
      Navigator.pushNamed(context, '/login');
  }
    return Scaffold(
      body: Center(
        child:ElevatedButton(onPressed: logout, child: Text('Logout'))
      ),
    );
  }

  
}

