// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Etape1Inscription extends StatelessWidget {
  const Etape1Inscription({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikODC',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('Profile',
          style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Créer un compte',
                style: TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        textStyle: const TextStyle( color: Colors.white)
                    ),
                    child: const Text('S\'inscrire'),
                  ),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext bc) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .90,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                      ),
                      child: const Icon(
                        Icons.close,
                      ),
                    ),
                    const Icon(Icons.question_mark),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  'Inscription à TikODC',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Créez un profil, suivez d\'autres comptes, créez vos propres vidéos, et plus encore.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Utiliser le téléphone ou l\'e-mail',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

               const SizedBox(
                 height: 15.0,
               ),

                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec Google',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15.0,
                ),



                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec  Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



                const SizedBox(
                  height: 15.0,
               ),


                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec Twitter',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                const SizedBox(
                  height: 180.0,
                ),
                Container(
                  color: Colors.white,
                  child: Text(
                    'En continuant, tu acceptes les Condition d\'utilisation de TikTok et confirmes les avoir lu la Politique de confidentialité de TikTok.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),

                Expanded(
                  child: Align(
                    //color : Colors.black,
                    alignment: FractionalOffset.bottomCenter,
                    child: MaterialButton(

                      onPressed: () => {},

                      child: Container(
                        color: Colors.grey,
                        width: double.infinity,
                        child: Row(

                          children: <Widget>[
                            Expanded(
                              child: Container(
                                //color: Colors.orange,
                                height: 40,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Text("Vous avez déjà un compte ?", style: TextStyle(fontSize: 15)),
                                  Text(" Connexion",  style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)),
                                ])
                              ),
                            ),
                          ],
                        ),
                      )

                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    },
  );
}