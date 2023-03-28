import 'package:flutter/material.dart';
import 'package:marqueblanche/screens/login_screen.dart';

class InscriptionScreen extends StatefulWidget {
  const InscriptionScreen({super.key});

  @override
  State<InscriptionScreen> createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
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
        'INSCRIVEZ-VOUS',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Vous avez déjà un compte\n',
                style: TextStyle(
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
                  TextSpan(
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
        Row(
          children: <Widget>[
            Expanded(
              child: _entryField(
                "PRENOM",
                Icon(Icons.person),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: _entryField(
                "NOM",
                Icon(Icons.person),
              ),
            ),
          ],
        ),
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
                      SizedBox(
                        height: 30,
                      ),
                      _emailPasswordWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      _submitButton(),
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
