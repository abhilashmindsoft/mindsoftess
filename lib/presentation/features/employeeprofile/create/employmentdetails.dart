import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';


class Employementdetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _employedmentetails();
  }

}
class _employedmentetails extends State<Employementdetails>{


  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  List<Map> company = [
    {'id': '1', 'name': 'Work Loactions'},
    {'id': '1', 'name': 'Work Loactions'},
    {'id': '1', 'name': 'Work Loactions'},

  ];

  List<Map> employee = [
    {'id': '1', 'name': 'Departments'},
    {'id': '1', 'name': 'Departments'},
    {'id': '1', 'name': 'Departments'},

  ];
  List<Map> Slutation = [
    {'id': '1', 'name': 'Desigantion'},
    {'id': '1', 'name': 'Desigantion'},
    {'id': '1', 'name': 'Desigantion'},

  ];

  @override
  Widget build(BuildContext context) {

    String firstname,
        middlename;
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
          color: AppColors.white,
          child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Form(
                key: _key,
                autovalidate: _validate,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    TextView('Work Location',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.paleblue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: CustomDropDown(
                        company,
                        initValue: company[0],
                        onChange: (value) {



                        },

                      ),
                    ),
                    SizedBox(height: 15,),
                    TextView('Department',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.paleblue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: CustomDropDown(
                        employee,
                        initValue: employee[0],
                        onChange: (value) {



                        },

                      ),
                    ),
                    SizedBox(height: 15,),
                    TextView('Designation',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.paleblue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: CustomDropDown(
                        Slutation,
                        initValue: Slutation[0],
                        onChange: (value) {



                        },

                      ),
                    ),
                    SizedBox(height: 15,),
                    TextView('Grade',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.paleblue,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),

                            )
                        ),
                        maxLength: 32,
                        validator: validateName,
                        onSaved: (String val) {
                          firstname = val;
                        },
                      ),
                    ),
                    TextView('Work Policy',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      width: double.infinity,

                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.paleblue,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),

                            )
                        ),
                        maxLength: 32,
                        validator: validateName,
                        onSaved: (String val) {
                          firstname = val;
                        },
                      ),
                    ),




                  ],
                ),

              )
          )
      ),
    );
  }

  String validateName(value) {
    if (value.length < 1)
      return 'Cannot be empty';
    else
      return null;
  }

}
