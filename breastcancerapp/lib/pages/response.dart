import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  const Response({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
                child: Text(
              '''DID YOU FIND 
ANYTHING?''',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 24),
              textAlign: TextAlign.center,
            )),
          ),
          Expanded(
            
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff0A001E),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(18))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
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
                              Navigator.pushNamed(context, '/breathe');
                            },
                            child: const Text(
                              "YES/MAYBE",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                              ),
                            )),
                      ),
                      Padding(
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
                              Navigator.pushNamed(context, '/norisk');
                            },
                            child: const Text(
                              "NO",
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
              ),
          ),
        ],
      ),
    );
  }
}
