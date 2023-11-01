import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Image.asset('lib/assets/images/mirror.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            minimumSize: const Size(250, 62),
                            backgroundColor: const Color(0xff0A001E),
                          ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/mirror');
                    },
                    child: const Text('START SELF CHECK',style: TextStyle(fontFamily: 'Poppins',fontSize: 24,),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
