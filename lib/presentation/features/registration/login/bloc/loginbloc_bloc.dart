import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mindsoftess/src/Repository.dart';
import 'package:mindsoftess/src/model/loginmodel.dart';

part 'loginbloc_event.dart';
part 'loginbloc_state.dart';

class LoginblocBloc extends Bloc<LoginblocEvent, LoginblocState> {
  @override
  // TODO: implement initialState
  LoginblocState get initialState => LoginblocInitial();


  @override
  Stream<LoginblocState> mapEventToState(
    LoginblocEvent event,
  ) async* {
if(event is Loadlogin){
  yield LoginInProgress();
  try{
    Loginmodel loginmodel = await Repository().loginUser(params: {
      "UserName" : event.customeremail,
      "Password" : event.customerpassword
    });
    print('Loginmodel-----------');
    print(loginmodel);
    yield LoginloadedState(loginmodel);

  }catch(e){
    print(e);
    yield LoginerrorState('error');

  }




}


    // TODO: implement mapEventToState
  }


}
