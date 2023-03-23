import 'package:flutter/material.dart';
import 'package:life_expentancy/constants.dart';
import 'package:life_expentancy/user_data.dart';
import './hesap.dart';

class ResultPage extends StatelessWidget {

  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç Sayfası'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 8,
              child: Center(child:
              Text(
                 Hesap(_userData).hesaplama().round().toString(),
                style: kMetinStili,))),
          Expanded(
              flex: 1,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
              Navigator.pop(context);
                },
                  child: Text('Geri Dön',style: kMetinStili,)))
        ],
      ),
    );
  }
}
