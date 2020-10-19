import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mindsoftess/src/Repository.dart';
import 'package:mindsoftess/src/model/companylist.dart';
import 'package:mindsoftess/src/model/employestatusmodel.dart';
import 'package:mindsoftess/src/model/employetypemodel.dart';

part 'create_event.dart';
part 'create_state.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  @override
  // TODO: implement initialState
  CreateState get initialState => CreateInitial();


  @override
  Stream<CreateState> mapEventToState(
    CreateEvent event,
  ) async* {
    if(event is Loadropdwons){
      yield CreateInitial();
      try{
        Companylist companylist = await Repository().compaylist();
        Employetypemodel employetypemodel = await Repository().emptype();
        Employestatusmodel employestatusmodel = await Repository().empstatus();
        yield LoadedDropdown([companylist,employetypemodel,employestatusmodel]);

      }catch(e){
        print(e);

      }




    }
    // TODO: implement mapEventToState
  }

}
