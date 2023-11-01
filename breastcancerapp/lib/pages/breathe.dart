import 'package:flutter/material.dart';

class Breathe extends StatelessWidget {
  const Breathe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(
            flex: 2,
            child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Padding(
                       padding:  EdgeInsets.fromLTRB(32, 32, 32, 16),
                       child:  Text(
                                   '''FIRST,
Take a deep breathe''',
                                   style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                   textAlign: TextAlign.center,
                                 ),
                     ),
                
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                              child: Image.asset('lib/assets/images/illustration.png'),
                            ),
                
                           const Padding(
                              padding:  EdgeInsets.fromLTRB(32, 16, 32, 32),
                              child: Text("When you're ready, continue to the next phase and provide details of what you found",style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),textAlign: TextAlign.center,),
                            )
                    ],
                  ),
                ),),
          ),
          Expanded(
            
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff0A001E),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6))),
                        minimumSize: const Size(250, 62),
                        backgroundColor: const Color(0xffDB7D95),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/questions');
                      },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 24,
                        ),
                      )),
                ),
              ),
          ),
        ],
      ),
    );
  }
}