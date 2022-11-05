import 'package:flutter/material.dart';
import 'package:tikodc_mali/userProfilePage.dart';

import 'menu.dart';

void main() {
  runApp(const MyApp()); // execution du widget MyApp
}

//la classe MyApp permet
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //MaterialApp est toute mon application
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,

     home: MyStatefulWidget()

      /*
      routes: {
       "/": (context) =>  MyStatefulWidget(),
        "/acueil":  (context) => MyStatefulWidget(),
        "/etape1": (context) =>  Etape1Inscription(),
        "/profile": (context) => UserProfilePage()
      },
      initialRoute: "/",
       */

    );
  }
}