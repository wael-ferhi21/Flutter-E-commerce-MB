import 'package:flutter/material.dart';
import 'package:marqueblanche/components/header_widget.dart';

class OffersList extends StatefulWidget {
  const OffersList({super.key});

  @override
  State<OffersList> createState() => _OffersListState();
}

class _OffersListState extends State<OffersList> {
  final List<HeaderWidget> specials = [
    HeaderWidget(
      description2: 'hhhhh',
      description1: 'xd',
      image: 'image',
      remise: '25.0',
    ),
    HeaderWidget(
      description2: 'Description 2',
      description1: 'Description 1',
      image: 'image2',
      remise: '30.0',
    ),
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 181,
          decoration: const BoxDecoration(
            color: Color(0xFFE7E7E7),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          child: PageView.builder(
            itemBuilder: (context, index) {
              final data = specials[index];
              return data;
            },
            itemCount: specials.length,
            allowImplicitScrolling: true,
            onPageChanged: (value) {
              setState(() => selectIndex = value);
            },
          ),
        ),
      ],
    );
  }
}
