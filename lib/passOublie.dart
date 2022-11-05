
import 'package:flutter/material.dart';



class PasseOublie extends StatelessWidget {
  const PasseOublie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
          children: [
            Container(
            alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 10),
              child:GestureDetector(

                onTap: () =>
                    Navigator.pop(
                      context,
                    ),
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, left: 20),
              child:Text("Saisis le code à 4 chiffres", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, left: 20),
              child:Text("Ton code a été envoyé à +223 82644606", textAlign: TextAlign.left, style: TextStyle(color: Colors.grey, fontSize: 18),),
            ),
            SizedBox(height: 40),

            Form(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,

                      decoration: const InputDecoration(
                          hintText: ""
                      ),
                      validator: (value){},
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black,

                        decoration: const InputDecoration(
                            hintText: ""
                        ),
                        validator: (value){},
                      ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,

                      decoration: const InputDecoration(
                        hintText: "",
                        border: UnderlineInputBorder(),
                      ),
                      validator: (value){},
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,

                      decoration: const InputDecoration(
                          hintText: "",
                          //border: bo
                      ),
                      validator: (value){},
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, left: 20),
              child:Text("Renvoyer le code 60s", textAlign: TextAlign.left, style: TextStyle(color: Colors.grey, fontSize: 18),),
            ),

            const SizedBox(height: 30),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, left: 5, right: 5),
              child:Row(
                children:const [
                  Text("Tu n'as pas reçu de code ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  Text("Demander un appel téléphone", style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold, fontSize: 15),),
                ]
              )
            )


          ]

      ),
    );
  }
}


                /*
                child: Row(
                  children: [
                    Text("Saisis le code à 4 chiffres"),
                    TextFormField(
                      cursorColor: Colors.black,

                      decoration: const InputDecoration(
                          hintText: "E-mail"
                      ),
                      validator: (value){},
                    ),
                  ],
                )
                */

                //margin: EdgeInsets.only(left: 15, right: 15),





//import 'dart:html';

/*
import 'package:flutter/material.dart';
import 'package:tikodc_mali/userProfilePage.dart';
class PasseOublie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //MaterialApp est toute mon application
    return  Container(
      child: Center(
        child: Text("Mot de passe Oblié"),
      ),
    );
  }
}

 */
