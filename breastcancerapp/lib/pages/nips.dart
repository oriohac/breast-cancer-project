import 'package:flutter/material.dart';


class Nips extends StatelessWidget {
  const Nips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Image.asset('lib/assets/images/nips.png',height: 385,),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color:  Color(0xff0A001E), borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
                height: 385,
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                   const Padding(
                      padding:  EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child:  Text(
                        'DONT FORGET YOUR NIPS',
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
                        "Lastly, squeeze each nipple. If there is any change, discharge or pain, see a doctor right away.",
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
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            minimumSize: const Size(250, 62),
                            backgroundColor: const Color(0xffDB7D95),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/response');
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