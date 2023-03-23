import 'package:life_expentancy/user_data.dart';

import './icon_cinsiyet.dart';
import './MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expentancy/constants.dart';
import 'package:life_expentancy/ResultPage.dart';
//import 'package:flutter/src/widgets/framework.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double kilo = 60;
  double boy = 170;
  double sporGunu = 3;
  double icilenSigara = 10;
  String? seciliButon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Column(
                          children: [
                            Text(
                              'Boy',
                              style: kMetinStili,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${boy.round()}',
                              style: kSayiStili,
                            ),
                          ],
                        ),
                      ),
                      kGenislik,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                boy++;
                              });
                            },
                            child: Text('+'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                boy--;
                              });
                            },
                            child: Text('-'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MyContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Column(
                          children: [
                            Text(
                              'KİLO',
                              style: kMetinStili,
                            ),
                            kYukseklik,
                            Text(
                              '${kilo.round()}',
                              style: kSayiStili,
                            ),
                          ],
                        ),
                      ),
                      kGenislik,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  kilo++;
                                });
                              },
                              child: Text('+')),
                          OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  kilo--;
                                });
                              },
                              child: Text('-')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haftada Kaç Gün spor Yapıyorsunuz ?',
                      style: kMetinStili,
                    ),
                    kYukseklik,
                    Text(
                      '${sporGunu.round()}',
                      style: kSayiStili,
                    ),
                    Slider.adaptive(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: sporGunu.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                         sporGunu = newValue;
                       });
                  },
                )
              ],
            ),
          )),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde Kaç Sigara İçiyorsunuz ?',
                    style: kMetinStili,
                  ),
                  kYukseklik,
                  Text(
                    '${icilenSigara.round()}',
                    style: kSayiStili,
                  ),
                  Slider.adaptive(
                    min: 0,
                    max: 30,
                    value: icilenSigara.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(children: [
            Expanded(
              child: MyContainer(
                onPress: () {
                  setState(() {
                    seciliButon = 'KADIN';
                  });
                },
                renk: seciliButon == 'KADIN' ? Colors.white60 : Colors.white,
                child: iconCinsiyet(
                  ikon: FontAwesomeIcons.venus,
                  cinsiyet: 'KADIN',
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {
                  setState(() {
                    seciliButon = 'ERKEK';
                  });
                },
                renk: seciliButon == 'ERKEK' ? Colors.white60 : Colors.white,
                child: iconCinsiyet(
                  ikon: FontAwesomeIcons.venus,
                  cinsiyet: 'ERKEK',
                ),
              ),
            ),
          ])),
          ButtonTheme(
            height: 50,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ResultPage(
                                  UserData(
                                      kilo: kilo,
                                      boy: boy,
                                      sporGunu: sporGunu,
                                      icilenSigara: icilenSigara,
                                      seciliButon: seciliButon,
                                  ))));
                },
                child: Text(
                  'HESAPLA',
                  style: kMetinStili,
                )),
          )
        ],
      ),
    );
  }
}
