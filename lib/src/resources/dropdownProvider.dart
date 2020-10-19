


import 'package:mindsoftess/config/string.dart';
import 'package:mindsoftess/src/model/companylist.dart';
import 'package:mindsoftess/src/model/employestatusmodel.dart';
import 'package:mindsoftess/src/model/employetypemodel.dart';
import 'package:mindsoftess/src/restFunctions/restApi.dart';

class Dropdownprovider {
  Future<Companylist> companylist(
      Map<String, dynamic> params, String path) async {
    var res = await RestAPI().get(
        Apis.companylist);
    print('list-------------------');
    print(res);

    return Companylist.fromMap(res);
  }

  Future<Employetypemodel> employeetype(
      Map<String, dynamic> params, String path) async {
    var res = await RestAPI().get(
        Apis.employeetype);
    print('list-------------------');
    print(res);

    return Employetypemodel.fromMap(res);
  }

  Future<Employestatusmodel> employeestatus(
      Map<String, dynamic> params, String path) async {
    var res = await RestAPI().get(
        Apis.employeestatus);
    print('list-------------------');
    print(res);

    return Employestatusmodel.fromMap(res);
  }




}