import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/employeelistView.dart';
import 'package:mindsoftess/presentation/widgets/textView.dart';






class Homepageview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homepage();
  }

}
class _homepage extends State<Homepageview>{
  

  List<Iconsets> iconsset = <Iconsets>[
    Iconsets(eimage:  'assets/icons/profile.jpg',emane: 'Employee Profie'),
    Iconsets(eimage:  'assets/icons/documents.jpg',emane: 'Documents'),
    Iconsets(eimage:   'assets/icons/assets.jpg',emane: 'Assets'),
    Iconsets(eimage:   'assets/icons/payslip.jpg',emane: 'Pay Slip'),
    Iconsets(eimage:  'assets/icons/attentance.jpg',emane: 'Attendance'),
    Iconsets(eimage:   'assets/icons/saleryslip.jpg',emane: 'Salary Slip'),
    Iconsets(eimage:   'assets/icons/history.jpg',emane: 'Employement History'),
    Iconsets(eimage:    'assets/icons/rewards.jpg',emane: 'Rewards/Memo'),
    Iconsets(eimage:  'assets/icons/request.jpg',emane: 'Employee Request'),
    Iconsets(eimage:  'assets/icons/trainglist.jpg',emane: 'Training List'),
    Iconsets(eimage:  'assets/icons/appri.jpg',emane: 'Appraisal List'),
  ];








  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  AppColors.green,
                  AppColors.greenlight,
                  AppColors.greenDark
                ]
            )
        ),
        child: Stack(
          children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: 100,),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(5.0),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 2.0,
                children: List<Widget>.generate(
                  iconsset.length,
                      (index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    elevation: 3,
                    child: InkWell(
                      onTap: () {
                        if(iconsset[index].emane=='Employee Profie'){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Emlpoyeeprofilelist()));

                        }
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:  AssetImage(iconsset[index].eimage),
                                )
                            ),
                          ),
                          Center(
                            child: TextView(
                              iconsset[index].emane,
                              size: 15,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.center,

                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  ),
                ),
              )
              
              
              
            ],
          )
           






          ],
        ),

      ),




    );
  }


}

class Iconsets{
final String eimage;
final String emane;

Iconsets({
  this.eimage,
  this.emane
});
}