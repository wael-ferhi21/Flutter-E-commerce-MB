import 'dart:ffi';

class Facture {
  final int factid;
  final DateTime datefact;
  final Float tva;
  final Float remise;
  final Float totaleht;
  final Float totalettc;

  const Facture({
    required this.factid,
    required this.datefact,
    required this.tva,
    required this.remise,
    required this.totaleht,
    required this.totalettc,
  });
}
