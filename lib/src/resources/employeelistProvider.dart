




import 'package:mindsoftess/config/string.dart';
import 'package:mindsoftess/src/model/employeelist.dart';
import 'package:mindsoftess/src/restFunctions/restApi.dart';

class Employeeprovider{
  Future<Employeeprofile> getemployeelist(
      Map<String, dynamic> params, String path) async {
    List<dynamic> list = await RestAPI().get('${Apis.employeelist}');
    print(list);
    return Employeeprofile.fromMap({'data': list});
  }
}