import 'package:flutter/material.dart';

class Pit extends StatelessWidget {
  const Pit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Image.asset('lib/assets/images/pits.png',),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(color:  Color(0xff0A001E), borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
                
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 32, 0, 0),
                        child:  Text(
                          'GET IN THOSE PITS',
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
                          "Cover your entire breast up and down and into the armpit area, finishing inside your armpit, leave no breast area unchecked! especially the side boob. Spend extra time in your pit where your lymphatic system is, as this is where many breast cancer develop.",
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
                              Navigator.pushNamed(context, '/massage');
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