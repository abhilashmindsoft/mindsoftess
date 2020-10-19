


import 'package:mindsoftess/presentation/features/employeeprofile/employeelistView.dart';
import 'package:mindsoftess/src/model/companylist.dart';
import 'package:mindsoftess/src/model/loginmodel.dart';
import 'package:mindsoftess/src/resources/dropdownProvider.dart';
import 'package:mindsoftess/src/resources/employeelistProvider.dart';
import 'package:mindsoftess/src/resources/loginapiProvider.dart';

import 'model/employeelist.dart';
import 'model/employestatusmodel.dart';
import 'model/employetypemodel.dart';

class Repository {
  final loginApiProvider = LoginProvider();
  final employeeprovider = Employeeprovider();
  final drop = Dropdownprovider();

  Future<Loginmodel> loginUser({String path, Map<String, dynamic> params}) =>
      loginApiProvider.login(params, path);

  Future<Employeeprofile> employeelists({String path, Map<String, dynamic> params}) =>
      employeeprovider.getemployeelist(params, path);

  Future<Companylist> compaylist({String path, Map<String, dynamic> params}) =>
      drop.companylist(params, path);


  Future<Employetypemodel> emptype({String path, Map<String, dynamic> params}) =>
      drop.employeetype(params, path);

  Future<Employestatusmodel> empstatus({String path, Map<String, dynamic> params}) =>
      drop.employeestatus(params, path);

}