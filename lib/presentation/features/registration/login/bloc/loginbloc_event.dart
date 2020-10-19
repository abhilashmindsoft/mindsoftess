part of 'loginbloc_bloc.dart';

abstract class LoginblocEvent extends Equatable {
  const LoginblocEvent([List props = const []]) : super();



}

class Loadlogin extends LoginblocEvent {
  final String customeremail, customerpassword;

  Loadlogin({this.customeremail, this.customerpassword})
      : super([customeremail, customerpassword]);

  @override
  // TODO: implement props
  List<Object> get props => [this.customeremail, this.customerpassword];
}
