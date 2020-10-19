



import 'package:mindsoftess/config/string.dart';
import 'package:mindsoftess/src/model/loginmodel.dart';
import 'package:mindsoftess/src/restFunctions/restApi.dart';

class LoginProvider {
  Future<Loginmodel> login(
      Map<String, dynamic> params, String path) async {
    var res = await RestAPI().post(
        Apis.login,
        params: params);
    print('list-------------------');
    print(res);

    return Loginmodel.fromMap(res);
  }
}