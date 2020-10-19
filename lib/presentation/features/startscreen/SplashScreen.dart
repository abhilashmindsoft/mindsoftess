import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mindsoftess/config/sharedPrefernce.dart';
import 'package:mindsoftess/presentation/features/registration/login/loginView.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(const Duration(seconds: 5), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/splash.png'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: 20,
            child:  Container(
              height: 170.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mindsoft_logowhite.png'),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 170.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mpayroll_logo.jpg'),
                ),
              ),
            ),
          ),


        ],
      )
    );
  }

  void onClose() {
    redirect().then((widget) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          maintainState: true,
          opaque: true,
          pageBuilder: (context, _, __) => widget,
          transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: (context, anim1, anim2, child) {
            return FadeTransition(
              child: child,
              opacity: anim1,
            );
          },
        ),
      );
    });
  }

  Future<Widget> redirect() async {
    print(Shared.loggedin);
    if(Shared.loggedin){
//      GlobalData.userId = Shared.userid.toString();
//      return DashBoard();


    }else{
      return LoginView();
    }

  }
}



