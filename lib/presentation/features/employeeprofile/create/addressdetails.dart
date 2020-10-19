import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';


class Addressdetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _addressetails();
  }

}
class _addressetails extends State<Addressdetails>{


  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String firstname,
        middlename;
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
                    Center(child:
                      TextView('Temporary Address',color: AppColors.red,fontWeight: FontWeight.bold,size: 18,),),
                    SizedBox(height: 15,),
                    TextView('Address Line 1',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        minLines:  null,
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
                    TextView('Address Line 2',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        minLines:  null,
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
                    SizedBox(height: 10,),
                    TextView('City',size: 14,fontWeight: FontWeight.bold,),
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
                    TextView('State/Province',size: 14,fontWeight: FontWeight.bold,),
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
                    SizedBox(height: 5,),
                    TextView('Country',size: 14,fontWeight: FontWeight.bold,),
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
                    TextView('Zip/Postal Code',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      width: double.infinity,

                      child: TextFormField(
                        keyboardType: TextInputType.number,
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
                    SizedBox(height: 5,),
                    TextView('Phone Number',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      width: double.infinity,

                      child: TextFormField(
                        keyboardType: TextInputType.number,
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
                    SizedBox(height: 15,),
                    Center(child:
                    TextView('Permanent Address',color: AppColors.red,fontWeight: FontWeight.bold,size: 18,),),
                    SizedBox(height: 15,),
                    TextView('Address Line 1',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 10,),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        minLines:  null,
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
                    TextView('Address Line 2',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: TextFormField(
                        expands: true,
                        maxLines: null,
                        minLines:  null,
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
                    SizedBox(height: 10,),
                    TextView('City',size: 14,fontWeight: FontWeight.bold,),
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
                    TextView('State/Province',size: 14,fontWeight: FontWeight.bold,),
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
                    SizedBox(height: 5,),
                    TextView('Country',size: 14,fontWeight: FontWeight.bold,),
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
                    TextView('Zip/Postal Code',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      width: double.infinity,

                      child: TextFormField(
                        keyboardType: TextInputType.number,
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
                    SizedBox(height: 5,),
                    TextView('Phone Number',size: 14,fontWeight: FontWeight.bold,),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      width: double.infinity,

                      child: TextFormField(
                        keyboardType: TextInputType.number,
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
