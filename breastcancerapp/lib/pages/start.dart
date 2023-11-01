import 'package:breastcancerapp/pages/home.dart';
import 'package:breastcancerapp/pages/profile.dart';
import 'package:breastcancerapp/pages/resources.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
   final List _pages = [
    Home(),Resources(),Profile()
  ];


  int selectedPage = 0;

  void currentScreen(int state) {
    setState(() {
      selectedPage= state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _pages[selectedPage],
    bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF0A001E),
          onTap: currentScreen,
          currentIndex: selectedPage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
                size: 30,
              ),
              label: 'Resources',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_sharp,
                size: 30,
              ),
              label: 'Profile',
              
            ),
            
          ],
          selectedItemColor:const Color(0xFFDB7D95),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),
          unselectedLabelStyle: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,) ,
          ),
    );
  }
}
