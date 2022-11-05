import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tikodc_mali/passOublie.dart';

void main() {
  runApp(const Etape2Connexion());
}

class Etape2Connexion extends StatelessWidget {
  const Etape2Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    //return DefaultTabController(
    return DefaultTabController(

        length: 2,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,

            centerTitle: true,
            title: const Text('Connexion'),

            bottom:  const TabBar(
              tabs: [
                Tab(child: Text(
                  'Telephone', style: TextStyle(color: Colors.black),),),

                Tab(child: Text(
                    'E-mail', style: TextStyle(color: Colors.black))),

              ],
            ),

          ),

          body: TabBarView(



            children: [

              ListView(
                //alignment: Alignment.topCenter,

                  children:[
                    const SizedBox(
                      height: 30.0,
                    ),
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                          //border: InputBorder.,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16
                          )
                      ),
                    ),

                    const SizedBox(
                      height: 30.0,
                    ),

                    /*
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: const Text(
                        'En continuant tu acceptes les conditions d\'utilisation de TikODC et continue savoir lu les politiliques de confidentialité de TikODC',
                        style: TextStyle(color: Colors.black),),
                    ),

                     */

                    Container(
                      height: 50,
                      width: 10,
                      color: Colors.black12,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
                      child: const Text(
                        'Envoyer un code', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 25,
                      ),),
                    ),

                  ]


              ),

              ListView(
                //alignment: Alignment.topCenter,

                  children:[
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        cursorColor: Colors.black,

                        decoration: const InputDecoration(
                            hintText: "E-mail"
                        ),
                        validator: (value){},
                      ),
                    ),

                    const SizedBox(
                      height: 30.0,
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        cursorColor: Colors.black,

                        decoration:  InputDecoration(
                            hintText: "Mot de passe"
                        ),
                        validator: (value){},
                      ),
                    ),

                    GestureDetector(
                      child:Container(

                          height: 50,
                          width: 10,
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(left: 2, right: 10, top: 20),
                          child: const Text(
                            'Mot de passe oublié ?', textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                          ),),

                      ),

                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PasseOublie()),
                          );
                        }
                    ),



                    Container(
                      height: 50,
                      width: 10,
                      color: Colors.black12,
                      padding: const EdgeInsets.all(8),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Text(
                        'Suivant', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 25,
                      ),),
                    ),



                  ]
              ),

            ],

          ),
        )

    );
  }
}