import 'package:flutter/material.dart';
import 'package:mindsoftess/presentation/widgets/circularProgressBar.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/src/Repository.dart';
import 'package:mindsoftess/src/model/employeelist.dart';

import 'create/empolyeecreatebase.dart';




class Emlpoyeeprofilelist extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _employeelist();
  }

}

class _employeelist extends State<Emlpoyeeprofilelist>{









  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar().getMainAppBar(context,'Employee Profile List'),
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
        child:  Stack(
          children: <Widget>[
            FutureBuilder(
              future: Repository().employeelists(),
              builder: (context,snapshot){
                print(snapshot.data);
                if(snapshot.connectionState==ConnectionState.waiting) return CircularProgressBar().showCircleProgress();
                else if(snapshot.data==null) return Container();
                else{
                  Employeeprofile employee = snapshot.data;
                  return ListView.builder(
                      itemCount: employee.data.length,
                      itemBuilder: (BuildContext context,index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          child:
                          Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius:BorderRadius.circular(30.0),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 1.5),
                                      blurRadius: 1.5,
                                    ),
                                  ]
                              ),
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(25),
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        TextView(employee.data[index]?.employeeFullName??'',size: 20,fontWeight: FontWeight.bold,),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: AppColors.black_common
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: AppColors.black_common
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: TextView('Designation',color: Colors.grey[800],size: 16,),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TextView(employee.data[index]?.designation??'',size: 16,),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: TextView('Grade',color: Colors.grey[800],size: 16,),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TextView(employee.data[index]?.grade.toString()??'',size: 16,),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: TextView('Department',color: Colors.grey[800],size: 16,),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TextView(employee.data[index]?.department??'',size: 16,),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: TextView('Date of Joining',color: Colors.grey[800],size: 16,),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TextView(employee.data[index]?.dateOfJoining??'',size: 16,),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: TextView('Employment',color: Colors.grey[800],size: 16,),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TextView(employee.data[index]?.employmentType??'',size: 16,color: AppColors.red,),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),



                                  ],
                                ),
                              )
                          ),
                        );



                      });
                }

              },

            ),


            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.only(bottom: 30,right: 30),
                child: CustomButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Baseclass()));

                  },
                  height: 60,
                  width: 60.0,
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xff231f20),
                    Color(0xff231f20),
                  ]),
                  shape: ButtonType.BUTTON_RRECT,
                  buttonType: ButtonType.FLAT,
                  borderRadius: BorderRadius.circular(18),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,

                  )
                ),

              ),
            ),
            


          ],
        ),


      ),
    );
  }

}

class Fakelist {
  final String Employeeid;
  final String name;
  final String designation;
  final String grade;
  final String department;
  final String dateofjoin;
  final String inservice;
  Fakelist({this.name,this.dateofjoin,this.department,this.designation,this.Employeeid,this.grade,this.inservice});

}