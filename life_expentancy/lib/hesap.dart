import 'package:life_expentancy/user_data.dart';


class Hesap{

  UserData _userData;

  Hesap (this._userData);

  double hesaplama() {

    double? sonuc;

    sonuc = 90 +( _userData.sporGunu! - _userData.icilenSigara!.toDouble());
    sonuc = sonuc + (_userData.boy! / _userData.kilo!.toDouble());
    if (_userData.seciliButon == 'KADIN') {
      return sonuc + 3;
    }else {return sonuc;}
  }

}
