import 'package:breastcancerapp/pages/signup.dart';
import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 5)),
        builder: (context, timer) =>
            timer.connectionState == ConnectionState.done
                ? const Signup()
      : Scaffold(
        backgroundColor: const Color(0xffDB7D95),
        body: Center(child: Image.asset('lib/assets/images/bubby.png',height: 300,width:300,fit: BoxFit.cover,),),
      ),
    );
  }
}