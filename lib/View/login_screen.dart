import 'dart:convert';
import '../components/button.dart';

import 'package:flutter/material.dart';
import 'package:marqueblanche/View/inscription_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:http/http.dart' as http;
import '../components/textzone.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   void login(String email, String pass) async {
   final response = await http.get("");
   if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
   print(data);
   }
   }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => InscriptionScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vous n\'avez pas un compte ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Inscrivez-vous',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
          size: 60,
        ),
        SizedBox(
          height: 20,
          width: 20,
        ),
      ],
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
        TextZone(
            title: "E-MAIL",
            icon1: Icon(
              Icons.mail,
            ), isPassword:false,),
        TextZone(
            title: "MOT DE PASSE",
            icon1: Icon(
              Icons.lock,
            ),
            isPassword: true),
      ],
    );
  }

  Widget _socialMediaButton(Buttons button1, String text1) {
    return SizedBox(
      width: 280,
      child: SignInButton(
        elevation: 5,
        button1,
        text: text1,
        onPressed: () {},
      ),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _logo(),
                    SizedBox(
                      height: 10,
                    ),
                    _title(),
                    SizedBox(height: 30),
                    _emailPasswordWidget(),
                    SizedBox(height: 20),
                    Button( "Se connecter",login(),clr1: ,clr2: ,clr3: ,w: MediaQuery.of(context).size.width,h: MediaQuery.of(context).size.height,),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text('Mot de passe oublié ?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    _divider(),
                    _socialMediaButton(
                      Buttons.Facebook,
                      "Se connecter avec Facebo",
                    ),
                    SizedBox(height: 10),
                    _socialMediaButton(
                        Buttons.Google, "Se connecter avec Google"),
                    SizedBox(height: height * .055),
                    _createAccountLabel(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
