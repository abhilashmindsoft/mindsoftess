import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/stepper.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';


class Baseclass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _baseclass();
  }

}

class _baseclass extends State<Baseclass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar().getMainAppBar(context, 'Employee Details'),
      backgroundColor: Colors.white,
      body: StepperView(),


    );
  }

}