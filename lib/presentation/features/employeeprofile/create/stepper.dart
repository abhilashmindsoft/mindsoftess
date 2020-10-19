import 'package:flutter/material.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/Presentation/widgets/widgets.dart';
import 'package:mindsoftess/presentation/widgets/stepr.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/addressdetails.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/employeedetails.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/employmentdetails.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/familydetalils.dart';
import 'package:mindsoftess/presentation/features/employeeprofile/create/qualificationdetails.dart';





class StepperView extends StatefulWidget {
  StepperView({Key key}) : super(key: key);

  @override
  _StepperViewState createState() => new _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  int currentStep = 0;
  List<FAStep> mySteps = [
    FAStep(
      // Title of the Step
        title: //Text("Step 1"),
        Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Employee Details"),
            )
          ],
        ),
        // Content, it can be any widget here. Using basic Text for this example,
        content: Employeedetails(),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Employment Details"),
          )
        ]),
        content: Employementdetails(), //Text("World!"),
        // You can change the style of the step icon i.e number, editing, etc.
        state: FAStepstate.complete, //FAStepState.complete,
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Address Details"),
          )
        ]),
        content: Addressdetails(),
        // Text("Hello World!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Family Details"),
          )
        ]),
        content: Familydetails(),
        // Text("Hello World 4!"),
        isActive: true),
    FAStep(
        title: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text("Qualification Details"),
          )
        ]),
        content: Qualifictiondetails(),
        isActive: true),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: w1(context));
  }

  Widget w1(BuildContext context) {
    return Scaffold(
      // Body
      body: Container(
          child: FAStepper(
            // physics: ClampingScrollPhysics(),
            // Using a variable here for handling the currentStep
            currentStep: this.currentStep,
            // List the steps you would like to have
            titleHeight: 120,
            steps: mySteps,
            // Define the type of Stepper style
            // StepperType.horizontal :  Horizontal Style
            // StepperType.vertical   :  Vertical Style
            type: FAStepperType.horizontal,
            titleIconArrange: FAStepperTitleIconArrange.column,
            stepNumberColor: Colors.pinkAccent,
            // Know the step that is tapped
            onStepTapped: (step) {
              // On hitting step itself, change the state and jump to that step
              setState(() {
                // update the variable handling the current step value
                // jump to the tapped step
                currentStep = step;
              });
              // Log function call
              print("onStepTapped : " + step.toString());
            },
            onStepCancel: () {
              // On hitting cancel button, change the state
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e subtracting 1, until its 0
                if (currentStep > 0) {
                  currentStep = currentStep - 1;
                } else {
                  currentStep = 0;
                }
              });
              // Log function call
              print("onStepCancel : " + currentStep.toString());
            },
            // On hitting continue button, change the state
            onStepContinue: () {
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e adding 1, until its the length of the step
                if (currentStep < mySteps.length - 1) {
                  currentStep = currentStep + 1;
                } else {
                  currentStep = 0;
                }
              });
              // Log function call
              print("onStepContinue : " + currentStep.toString());
            },
          )),
    );
  }


//  StepStates _getState(int i) {
//    if (currentStep >= i)
//      return StepStates.complete;
//    else
//      return StepStates.indexed;
//  }

//  Widget _typeStep() => Container(
//    child: Steppers(
//
//      controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
//        return Padding(
//          padding: EdgeInsets.all(8.0),
//          child: CustomButton(
//            height: 40,
//            width: double.infinity,
//            shape: ButtonType.BUTTON_RRECT,
//            buttonType: ButtonType.FLAT,
//            borderRadius: BorderRadius.circular(18),
//            gradient: LinearGradient(colors: <Color>[
//              Color(0xfffb641b),
//              Color(0xfff97234),
//            ]),
//            onPressed: () {
//
//              setState(() {
//                currentStep < spr.length - 1 ? currentStep += 1 : currentStep = 0;
//              });
//
////              if(currentStep==0){
////                Navigator.push(context, MaterialPageRoute(builder: (_)=> OrderDetails()));
////
////              }
//              print(currentStep);
//            },
//            child: TextView(
//              'Next',
//              color: AppColors.white,
//              size: AppSizes.txtButton,
//              fontWeight: FontWeight.bold,),
//          ),
//        );
//      },
//
//      steps: _getSteps(),
//      currentStep: currentStep,
//      type: StepperTypes.horizontal,
//      onStepTapped: (step) {
//        setState(() {
//          currentStep = step;
//          print(step);
//        });
//      },
//      onStepCancel: () {
//        setState(() {
//          currentStep > 0 ? currentStep -= 1 : currentStep = 0;
//        });
//      },
//      onStepContinue: () {
//        setState(() {
//
//          currentStep < spr.length - 1 ? currentStep += 1 : currentStep = 0;
//          if(currentStep==2){
////            Navigator.push(context, MaterialPageRoute(builder: (_)=> Shop()));
//          }
//        });
//      },
//    ),
//  );

}