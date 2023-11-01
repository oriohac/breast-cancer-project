import 'package:flutter/material.dart';

class Lowrisk extends StatelessWidget {
  const Lowrisk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xff0A001E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
              child: Image.asset('lib/assets/images/result.png',width: 350,height: 350,fit: BoxFit.cover,),
            ),
           const  Padding(
              padding:  EdgeInsets.fromLTRB(32, 16, 32, 20),
              child:  Text('Thank you for your response. Please, see a doctor for further examination and confirmation',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17, color: Colors.white),textAlign: TextAlign.center,),
            ),
           const  Padding(
              padding:  EdgeInsets.fromLTRB(32, 16, 32, 0),
              child:  Text('Risk Level',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17, color: Colors.white)),
            ),
           const Padding(
              padding:  EdgeInsets.fromLTRB(32, 0, 32, 16),
              child:  Text('Low Risk',style: TextStyle(fontFamily: 'Poppins',fontSize: 24, color: Colors.white)),
            ),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 60, 16, 32),
              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  minimumSize: const Size(300, 62),
                                  backgroundColor: const Color(0xffDB7D95),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/start');
                                },
                                child: const Text(
                                  "DONE",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                                )),
            ),
          ],
        ),
      ),
    );
  }
}