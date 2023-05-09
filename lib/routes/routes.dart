import 'package:get/get.dart';

import '../View/favourite_scrren.dart';
import '../View/home_screen.dart';
import '../View/inscription_screen.dart';
import '../View/login_screen.dart';
import '../View/profile_screen.dart';
import '../View/shop_cart_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomeScreen()),
    GetPage(name: '/favourites', page: () => FavouritesScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/inscription', page: () => InscriptionScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/panier', page: () => ShopCartScreen()),
    GetPage(name: '/profile', page: () => ProfileScreen()),
    // add more routes here
  ];
}
