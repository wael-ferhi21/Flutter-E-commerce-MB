class Livraison {
  final int livid;
  final DateTime livdate;
  final String livdescr;
  final String adresse;
  final String notes;
  final String nom_client;
  final String prenom_client;
  final double prix;

  const Livraison({
    required this.livid,
    required this.livdate,
    required this.livdescr,
    required this.adresse,
    required this.notes,
    required this.nom_client,
    required this.prenom_client,
    required this.prix,
  });
}
