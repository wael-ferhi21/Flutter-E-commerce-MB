import 'package:flutter/material.dart';
import 'package:marqueblanche/View/login_screen.dart';
import 'package:marqueblanche/components/button.dart';
import 'package:marqueblanche/components/textzone.dart';
import '../components/logo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InscriptionScreen extends StatefulWidget {
  //void inscription(String nom, String prenom, String email, String pass) async {
  //final response = await http.get("");
  //if (response.statusCode == 200) {
  //var data = jsonDecode(response.body);
  //print(data);
  // }
  //}

  const InscriptionScreen({super.key});

  @override
  State<InscriptionScreen> createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  //final TextEditingController mycontroller ;

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Vous avez déjà un compte\n',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Se connecter',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'Marque blanche',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
      softWrap: false,
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TextZone(
                isPassword: false,
                icon1: const Icon(Icons.person),
                title: 'PRENOM',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextZone(
                title: "NOM",
                icon1: const Icon(Icons.person),
                isPassword: false,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0, width: 10.0),
        TextZone(
          title: "E-MAIL",
          icon1: const Icon(
            Icons.mail,
          ),
          isPassword: false,
        ),
        SizedBox(height: 10.0, width: 10.0),
        TextZone(
          isPassword: true,
          title: "MOT DE PASSE",
          icon1: const Icon(
            Icons.lock,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      Logo(),
                      const SizedBox(
                        height: 10,
                      ),
                      _title(),
                      const SizedBox(
                        height: 30,
                      ),
                      _emailPasswordWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        buttonText: 'INSCRIVEZ-VOUS',
                        onPress: () {},
                        clr1: Theme.of(context).primaryColor,
                        clr2: Theme.of(context).accentColor,
                        clr3: Theme.of(context).primaryColor,
                        w: 20,
                        h: 300,
                      ),
                      SizedBox(height: height * .14),
                      _loginAccountLabel(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
