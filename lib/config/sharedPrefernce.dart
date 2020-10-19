import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> prefs = SharedPreferences.getInstance();
SharedPreferences preference;
class Shared {

  static String get username{
    return preference.getString('username');
  }
  static set username (String param){
    preference.setString('username', param);
  }
  static String get token{
    return preference.getString('token');
  }
  static set token (String param){
    preference.setString('token', param);
  }
  static int get userid{
    return preference.getInt('userid');
  }
  static set userid (int param){
    preference.setInt('userid', param);
  }


  static int get selectedtype{
    return preference.getInt('type');
  }
  static set selectedtype (int param){
    preference.setInt('type', param);
  }

  static bool get loggedin{
    return preference.getBool('defaulyLoggedin')??false;

  }
  static set loggedin(bool param){
    preference.setBool('defaulyLoggedin', param);
  }


  static int get cartcount{
    return preference.getInt('cartcount');
  }
  static set cartcount (int param){
    preference.setInt('cartcount', param);
  }

  static double get cartamount{
    return preference.getDouble('C');
  }
  static set  cartamount (double param){
    preference.setDouble('cartamount', param);
  }


}