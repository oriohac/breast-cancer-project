import 'package:flutter/material.dart';

class Updown extends StatelessWidget {
  const Updown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Image.asset('lib/assets/images/updown.png',height: 380,),
              ),
            ),
            Expanded(
              child: Container(
                height: 380,
                decoration: const BoxDecoration(
                    color: Color(0xff0A001E),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18))),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Text(
                        'UP, DOWN & ROUND',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Text(
                        "Move your three fingers in small circles up with different leve;s of pressure. Choose easy, medium and then hard while walking your fingers to the next area instead of lifting them off your boobs.",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppinsr',
                            fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 32),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            minimumSize: const Size(250, 62),
                            backgroundColor: const Color(0xffDB7D95),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/pit');
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
            )
          ],
        ),
      ),
    );
  }
}
