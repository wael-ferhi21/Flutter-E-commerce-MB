import 'dart:ffi';

class Produit {
  final int prod_id;
  final String prod_design;
  final Float prix;
  final double qtestock;
  final Float taux_tva;
  final Float taux_remise;
  final String proddescrbtion;
  final String alert_stock;
  final bool isliked;
  const Produit({
    required this.prod_id,
    required this.prod_design,
    required this.prix,
    required this.qtestock,
    required this.taux_tva,
    required this.taux_remise,
    required this.proddescrbtion,
    required this.alert_stock,
    required this.isliked,
  });
}
