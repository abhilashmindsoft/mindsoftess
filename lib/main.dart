import 'package:flutter/material.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/empolyeecreatebase.dart';
import 'package:mindsoftess/presentation/features/startscreen/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mindsoftess/config/sharedPrefernce.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:flutter/services.dart';


import 'package:mindsoftess/presentation/features/home/homepage.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/employeelistView.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
//  SystemChrome.setEnabledSystemUIOverlays([]);
  preference = await SharedPreferences.getInstance();
  runApp(MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

// Widget _defaultScreen = SplashScreen();
Widget _defaultScreen = Homepageview();
//Widget _defaultScreen = Emlpoyeeprofilelist();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().coupledTheme(),
      debugShowCheckedModeBanner: false,
      home: _defaultScreen,
      routes: <String,WidgetBuilder>{

      }

    );
  }
}
