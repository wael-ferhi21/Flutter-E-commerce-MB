import 'package:flutter/material.dart';
import 'package:marqueblanche/screens/inscription_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _entryField(String title, Icon icon1, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                prefixIcon: icon1,
                hintText: title,
                border: InputBorder.none,
                fillColor: Color(0xffeeeeee),
                filled: true),
          ),
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 46, 66, 199),
                Theme.of(context).primaryColor,
              ])),
      child: Text(
        'SE CONNECTER',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
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
        _entryField(
            "E-MAIL",
            Icon(
              Icons.mail,
            )),
        _entryField(
            "MOT DE PASSE",
            Icon(
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
                    _submitButton(),
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
