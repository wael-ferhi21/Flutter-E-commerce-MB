import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../components/categories_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide.none,
    );
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
              gap: 10,
              color: Theme.of(context).primaryColor,
              activeColor: Theme.of(context).primaryColor,
              tabBackgroundColor: Colors.grey.shade100,
              padding: EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Acheter",
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: "Favoris",
                ),
                GButton(
                  icon: Icons.list,
                  text: "Categories",
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: "Panier",
                ),
              ]),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Marque Blanche',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            "Bienvenue!",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Rechercher...',
                hintStyle: TextStyle(color: Colors.grey[400]),
                filled: true,
                fillColor: Colors.white,
                border: outlineInputBorder,
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.search),
                ),
                suffixIcon: SizedBox(
                    width: 40,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        size: 20,
                        LineAwesomeIcons.camera,
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          const CategoriesList(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Juste pour vous",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: const Color(0xff19286f),
                    ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Voir tous",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.black,
                        ),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
