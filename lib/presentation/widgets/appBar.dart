import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mindsoftess/Presentation/widgets/widgets.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/config/sharedPrefernce.dart';


class CustomAppBar {

  Widget getMainAppBar(BuildContext context,String title) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        bottom: PreferredSize(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextView(title,color: Colors.white,size: 23,fontWeight: FontWeight.bold,),
                  SizedBox(
                    height: 20,
                  )
                ],
              )),
          preferredSize: Size.fromHeight(35),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
//            color: Color(0xff2874F0)
              color: AppColors.black_common),
//        child: SvgPicture.asset(
//          'assets/dashboard/app_bar.svg',
//          fit: BoxFit.cover,
//        ),
        ),
        backgroundColor: Colors.transparent,
        title: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             Container(
               margin: const EdgeInsets.only(top: 5),
               width: 35,
             height: 35,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/m_icon.jpg'),
               )
             ),)
            ],
          ),
        ),
        actions: [
         Center(
           child:  TextView('RAVSAN VENTURES PVT.LTD',color: Colors.grey,),
         ),
          SizedBox(width: 10,),
          CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/icons/profile.jpg'),
            ),
          ),
          SizedBox(width: 10,),


        ],
      ),
    );
  }
}
