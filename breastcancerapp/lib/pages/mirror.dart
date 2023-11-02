import 'package:flutter/material.dart';

class Mirror extends StatelessWidget {
  const Mirror({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Image.asset('lib/assets/images/mirror.png'),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(color:  Color(0xff0A001E), borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
                
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                     const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 32, 0, 0),
                        child:  Text(
                          'MIRROR',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child:  Text(
                          "Spend sometime looking at your breast in front of the mirror. Put your hands over your head and then on your hips. Move your body so you see every part of your breasts, do not forget your side and underboob.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppinsr',
                              fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(6))),
                              minimumSize: const Size(250, 62),
                              backgroundColor: const Color(0xffDB7D95),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/updown');
                            },
                            child: const Text(
                              "NEXT",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
