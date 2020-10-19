import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/bloc/create_bloc.dart';
import 'package:mindsoftess/presentation/widgets/circularProgressBar.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';
import 'package:mindsoftess/src/Repository.dart';
import 'package:mindsoftess/src/model/companylist.dart';
import 'package:mindsoftess/src/model/employetypemodel.dart';


class Employeedetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _employedetails();
  }

}
class _employedetails extends State<Employeedetails>{

  CreateBloc createBloc;
  String dropdowncompany,dropdowntype,dob;
  int _groupValue = -1;
  ValueNotifier<DateTime> _dateTimeNotifier = ValueNotifier<DateTime>(DateTime.now());

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  List<Map> company = [
    {'id': '1', 'name': 'COMPANY NAME'},
    {'id': '1', 'name': 'COMPANY NAME'},
    {'id': '1', 'name': 'COMPANY NAME'},
  ];

  List<Map> employee = [
    {'id': '1', 'name': 'Employee1'},
    {'id': '1', 'name': 'Employee2'},
    {'id': '1', 'name': 'Employee3'},
  ];
  List<Map> Slutation = [
    {'id': '1', 'name': 'MR.'},
    {'id': '1', 'name': 'MRS.'},
    {'id': '1', 'name': 'MISS.'},
  ];
@override
  void initState() {
  createBloc = CreateBloc();
  createBloc.add(Loadropdwons());
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    String firstname,
        middlename;
    return SingleChildScrollView(
      child: Container(
        color: AppColors.white,
        child: BlocBuilder(
          bloc: createBloc,
          builder: (context,state){
            if(state is LoadedDropdown){
              Companylist companylist = state.dropmodels[0];
              Employetypemodel employetypemodel = state.dropmodels[1];

              return Container(
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Form(
                    key: _key,
                    autovalidate: _validate,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 15,),
                        TextView('Company Name',size: 14,fontWeight: FontWeight.bold,),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColors.paleblue,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),
                          ),
                          child:  SelectionBox(
                            height: 40.0,
                            radius:  5.0,
                            borderColor: Colors.grey,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                canvasColor: AppColors.white,
                              ),
                              child: DropdownButtonHideUnderline(
                                child:DropdownButton<String>(
                                  isDense: true,
                                  hint: new TextView("Select"),
                                  value: dropdowncompany,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: ( String data) {
                                    setState(() {
                                      dropdowncompany = data;
                                    });
                                  },
                                  items: companylist.companyList.map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item?.companyId.toString()??"",
                                      child: TextView(item?.companyName??""),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextView('Employee Code',size: 14,fontWeight: FontWeight.bold,),
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
                        SizedBox(height: 15,),
                        TextView('Salutation',size: 14,fontWeight: FontWeight.bold,),
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
                        TextView('First Name',size: 14,fontWeight: FontWeight.bold,),
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
                        TextView('Middle Name',size: 14,fontWeight: FontWeight.bold,),
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
                        TextView('Last Name',size: 14,fontWeight: FontWeight.bold,),
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
                        TextView('Gender',size: 14,fontWeight: FontWeight.bold,),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: double.infinity,
                          child:  Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: RadioListTile(
                                        value: 0,
                                        groupValue: _groupValue,
                                        title: Text("Male"),
                                        onChanged: (newValue) =>
                                            setState(() => _groupValue = newValue),
                                        activeColor: Colors.red,
                                        selected: false,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: RadioListTile(
                                        value: 1,
                                        groupValue: _groupValue,
                                        title: Text("Female"),
                                        onChanged: (newValue) =>
                                            setState(() => _groupValue = newValue),
                                        activeColor: Colors.red,
                                        selected: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextView('Date of Birth',size: 14,fontWeight: FontWeight.bold,),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColors.paleblue,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),
                          ),
                          child: InkWell(
                              onTap: (){
                                showDatePicker(
                                  initialDatePickerMode: DatePickerMode.year,
                                  context: context,
                                  firstDate: DateTime(1900),
                                  initialDate: DateTime.now(),
                                  lastDate: DateTime.now(),
                                ).then((DateTime dateTime) {
                                  _dateTimeNotifier.value = dateTime;
                                  print('${dateTime.year}-${dateTime.month}-${dateTime.day}');
                                  setState(() {
                                    dob = '${dateTime.year}-${dateTime.month}-${dateTime.day}';
                                  });
                                }
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                                child: TextView('${dob??""}'),
                              )
                          ),
                        ),
                        TextView('Employment Status',size: 14,fontWeight: FontWeight.bold,),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColors.paleblue,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),
                          ),
                          child:  SelectionBox(
                            height: 40.0,
                            radius:  5.0,
                            borderColor: Colors.grey,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                canvasColor: AppColors.white,
                              ),
                              child: DropdownButtonHideUnderline(
                                child:DropdownButton<String>(
                                  isDense: true,
                                  hint: new TextView("Select"),
                                  value: dropdowncompany,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: ( String data) {
                                    setState(() {
                                      dropdowncompany = data;
                                    });
                                  },
                                  items: companylist.companyList.map((item) {
                                    return DropdownMenuItem<String>(
                                      value: item?.companyId.toString()??"",
                                      child: TextView(item?.companyName??""),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),







                      ],
                    ),

                  )
              );
            }
            return CircularProgressBar().showCircleProgress();
          },

        ),
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
