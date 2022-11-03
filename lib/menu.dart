// ignore_for_file: no_logic_in_create_state, unnecessary_this
import 'package:flutter/material.dart';
import 'package:tikodc_mali/Reception.dart';
import 'package:tikodc_mali/userProfilePage.dart';
import 'dart:math' as math;

import 'accueil.dart';
import 'amis.dart';
import 'inscription.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    UserProfilePage(),
    Reception(),
    Reception(),
    Etape1Inscription(),
  ];

  @override
  Widget build(BuildContext context) {

    /*
    le widget scafold veut dire architecture c'est lui qui nous permettre de créer d'autre widget dans l'interface(application)
    En lui ajoutant appBar il sera afficher dans l'app,
    Lui meme est contenu par le materialApp
   */

      //l'appelle à widget page d'accueil

      return Scaffold(

          body: _pages[_selectedIndex],

          bottomNavigationBar: BottomNavigationBar(


            //on stocks les different du bottom menu en bas
            items: <BottomNavigationBarItem>[

              //appel d'icone

              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil',
              ),

              //appel d'icone
              const BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Amis',
              ),

              //appel d'icone
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/tiktok_add.png',
                  height: 25,
                ),
                label: '',
              ),

              //appel d'icone
              const BottomNavigationBarItem(
                icon: Icon(Icons.comment_outlined),
                label: 'Boite de reception',
              ),


              //appel d'icone
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profil',

              ),
            ],

            //les proprietes pour differents
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,

            //background color des items des icons
            backgroundColor: const Color(0xFF141518),

            //change la couleur de l'icone selectionner en blanc
            selectedItemColor: Colors.white,

            //change la couleur des icones selectionnés en grey
            unselectedItemColor: Colors.grey,


            /*
        Permet de ne afficher le label lorsque l'icone est selectionné
        showSelectedLabels: false,
        Permet de ne afficher le label lorsque l'icone n'est selectionné
        showUnselectedLabels: false,
         */

            //showSelectedLabels: false,
            //showUnselectedLabels: false,

            onTap: _onItemTapped,
          )
      );

  }
}