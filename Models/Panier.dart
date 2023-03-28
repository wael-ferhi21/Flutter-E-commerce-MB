import 'dart:ffi';

import 'Produit.dart';

class Panier {
  final int p_id;
  final Float prix_total;
  final int nbr_prod;
  final Produit list_prod;

  const Panier({
    required this.p_id,
    required this.prix_total,
    required this.nbr_prod,
    required this.list_prod,
  });
}
