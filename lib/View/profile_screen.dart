import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:marqueblanche/View/profileMenu.dart';
import 'package:marqueblanche/components/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: CustomAppBar(text: "Profile", actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
      ]),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      LineAwesomeIcons.alternate_pencil,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "wael ferhi",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "wael.ferhi@gmail.com",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(height: 10),
            profileMenuWidget(
              titre: "Gérer mon compte",
              icon: LineAwesomeIcons.user_check,
              onPress: () {},
            ),
            profileMenuWidget(
              titre: "Mes Adresses",
              icon: Icons.location_on,
              onPress: () {},
            ),
            const Divider(),
            const SizedBox(height: 10),
            profileMenuWidget(
              titre: "Langue",
              icon: LineAwesomeIcons.language,
              onPress: () {},
            ),
            profileMenuWidget(
              titre: "Consultés récemment",
              icon: LineAwesomeIcons.history,
              onPress: () {},
            ),
            profileMenuWidget(
              titre: "Evaluation",
              icon: LineAwesomeIcons.star,
              onPress: () {},
            ),
            profileMenuWidget(
              titre: "Contactez-nous",
              icon: LineAwesomeIcons.phone,
              onPress: () {},
            ),
            profileMenuWidget(
              titre: "Qui sommes-nous",
              icon: LineAwesomeIcons.question,
              onPress: () {},
            ),
            const Divider(),
            const SizedBox(height: 10),
            profileMenuWidget(
              titre: "Se déconnecter",
              icon: LineAwesomeIcons.alternate_sign_out,
              endIcon: false,
              onPress: () {},
            ),
          ],
        ),
      )),
    );
  }
}
