import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindsoftess/config/theme.dart';
import 'package:mindsoftess/presentation/features/home/homepage.dart';
import 'package:mindsoftess/presentation/widgets/circularProgressBar.dart';
import 'package:mindsoftess/presentation/widgets/widgets.dart';

import 'bloc/loginbloc_bloc.dart';



class LoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _loginview();
  }

}
class _loginview extends State<LoginView>{
  LoginblocBloc loginBloc;

  @override
  void initState() {
    loginBloc = LoginblocBloc();
    // TODO: implement initState
    super.initState();
  }


  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String username, password;
  bool _isHidePassword = true;

  void _togglePasswordVisibilty() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }


  String validateName(value) {
    if (value.length < 1)
      return 'Cannot be empty';
    else
      return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      loginBloc.add(Loadlogin(
          customeremail: emailController.text,
          customerpassword: passwordController.text));
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }

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
        child: BlocBuilder(
          bloc: loginBloc,
          builder: (context,state){
            print(state);
            if(state is LoginloadedState){
              if(state.loginmodel!=null){
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: TextView(
                        'Success',
                        color: Colors.white,
                      )));
                });
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Homepageview()));
                });

              }
            }
            if(state is LoginerrorState){
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Scaffold.of(context).showSnackBar(SnackBar(
                    content: TextView(
                      'Mismatch',
                      color: Colors.white,
                    )));
              });

            }

            return  Stack(
              children: <Widget>[
                Center(
                  child:   Container(
                    height:400,
                    margin: const EdgeInsets.only(left: 50,right: 50),

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
                    child:ListView(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Align(
                          alignment: Alignment.topCenter,
                          child: TextView('Welcome',size: 25,fontWeight: FontWeight.bold,),
                        ),
                        Align(alignment: Alignment.center,
                          child: Form(
                            key: _key,
                            autovalidate: _validate,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  margin: const EdgeInsets.only(left: 20,right: 20),
                                  child:  TextFormField(
                                      controller: emailController,
                                      decoration: new InputDecoration(
                                        hintText: 'Email',
                                        labelStyle:
                                        TextStyle(color: AppColors.darkGray),
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.darkGray),
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      maxLength: 32,
                                      validator: validateName,
                                      onSaved: (String val) {
                                        username = val;
                                      }),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20,right: 20),
                                  child:  TextFormField(

                                    controller: passwordController,
                                    obscureText: _isHidePassword,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: new InputDecoration(
                                        hintText: 'Password',
                                        labelStyle:
                                        TextStyle(color: AppColors.darkGray),
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.darkGray),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            _togglePasswordVisibilty();
                                          },
                                          child: Icon(
                                            _isHidePassword
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: _isHidePassword
                                                ? Colors.grey
                                                : AppColors.primaryBlue1,
                                          ),
                                        )),
                                    maxLength: 32,
                                    validator: validateName,
                                    onSaved: (String val) {
                                      password = val;
                                    },
                                  ),

                                ),

                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        child: GestureDetector(
                                          onTap: () {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (_) =>
//                                                Forgetpassword()));
                                          },
                                          child: Text(
                                            'Forgot Password ? ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'Calibri'),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            onPressed: (){
                              _sendToServer();
                            },
                            height: 40,
                            width: 200.0,
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff231f20),
                              Color(0xff231f20),
                            ]),
                            shape: ButtonType.BUTTON_RRECT,
                            buttonType: ButtonType.FLAT,
                            borderRadius: BorderRadius.circular(18),
                            child: TextView(
                              'Login',
                              color: AppColors.white,
                              size: AppSizes.txtButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )

                      ],

                    ),
                  ),
                ),
                  Center(
                    child: (state is LoginInProgress)
                        ? CircularProgressBar().showCircleProgress()
                        : Container(),
                  )
              ],
            );
          },


        )






      ),

    );
  }

}