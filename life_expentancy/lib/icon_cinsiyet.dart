import 'package:flutter/material.dart';
import 'package:life_expentancy/constants.dart';

class iconCinsiyet extends StatelessWidget {
  final IconData? ikon;
  final String? cinsiyet;
  iconCinsiyet({this.ikon, this.cinsiyet});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(ikon, // Null check yapılır
            size: 50.0,
            color: Colors.black54),
        SizedBox(
          width: double.maxFinite,
          height: 10,
        ),
        Text(
          cinsiyet ?? '', // Null check yapılır
          style: kMetinStili,
        ),
      ],
    );
  }
}
