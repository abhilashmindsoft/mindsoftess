part of 'create_bloc.dart';

abstract class CreateState extends Equatable {
  const CreateState([props]) : super();
}

class CreateInitial extends CreateState {
  @override
  List<Object> get props => [];
}

class LoadedDropdown  extends CreateState{
  final List dropmodels;
  LoadedDropdown(this.dropmodels): super([dropmodels]);


  @override
  // TODO: implement props
  List<Object> get props => [dropmodels];




}
