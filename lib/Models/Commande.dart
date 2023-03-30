class Commande {
  final int comdid;
  final DateTime comddate;
  final String comddescr;
  final String adresse_client;
  final String etat;

  const Commande({
    required this.comdid,
    required this.comddate,
    required this.comddescr,
    required this.adresse_client,
    required this.etat,
  });
}
