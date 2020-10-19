part of 'loginbloc_bloc.dart';

abstract class LoginblocState extends Equatable {
  const LoginblocState([props]) : super();
}

class LoginblocInitial extends LoginblocState {
  @override
  List<Object> get props => [];
}
class LoginInProgress extends LoginblocState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
class LoginloadedState extends LoginblocState{
  final Loginmodel loginmodel;
  LoginloadedState(this.loginmodel) : super([loginmodel]);

  @override
  // TODO: implement props
  List<Object> get props => [loginmodel];
}
class LoginerrorState extends LoginblocState{
  final String errormessage;
  LoginerrorState(this.errormessage) : super([errormessage]);

  @override
  // TODO: implement props
  List<Object> get props => [this.errormessage];

}