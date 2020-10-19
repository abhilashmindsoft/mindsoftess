import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mindsoftess/config/sharedPrefernce.dart';
import 'package:mindsoftess/config/string.dart';

import 'package:path/path.dart';


import 'app_exceptions.dart';

class RestAPI {
  Future checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup(Apis.baseUrl);

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected to internet');
      }
    } on SocketException catch (_) {
      print('internet not connected');
    }
  }

  Future<T> get<T>(String url, [String t]) async {
    print('Api Get, url $url');
    T responseJson;
    try {
      Response response =
          await http.get(url, headers: {"content-Type": "application/json"});
      print("RESPONSE $t :: ${response.body}");
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api get recieved!');
    return responseJson;
  }

  Future<T> getTok<T>(String url, [String t]) async {
    String token = Shared.token;
    print('Api Get, url $url');
    T responseJson;
    try {
      Response response =
      await http.get(url, headers: {
        'Authorization': 'Bearer $token',
        "content-Type": "application/json"
      });
      print("RESPONSE $t :: ${response.body}");
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api get recieved!');
    return responseJson;
  }

  Future<T> post<T>(String url, {params}) async {
    print('Api Post, url $url  and ${json.encode(params)}');
    T responseJson;
    try {
      final response =
          await http.post(url, body: json.encode(params), headers: {
        "content-Type": "application/json",
      });
      print("POST RESPONSE : ${response.statusCode} ${response.body}");
      responseJson = _returnResponse(response);
//      throw Exception('Testing');
//      print("RESPONSEJSON : $responseJson");
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api post.');
    return responseJson;
  }

  Future<T> postTok<T>(String url, {params}) async {
    String token = Shared.token;
    print('Api Post, url $url  and ${json.encode(params)}');
    T responseJson;
    try {
      final response =
      await http.post(url, body: json.encode(params), headers: {
        'Authorization': 'Bearer $token',
        "content-Type": "application/json",
      });
      print("POST RESPONSE : ${response.statusCode} ${response.body}");
      responseJson = _returnResponse(response);
//      throw Exception('Testing');
//      print("RESPONSEJSON : $responseJson");
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api post.');
    return responseJson;
  }



  Future<T> put<T>(String url, {params}) async {
    String token = Shared.token;
    print('Api Put, url $url');
    T responseJson;
    try {
      final response = await http.put(url, body: json.encode(params), headers: {
        'Authorization': 'Bearer $token',
        "content-Type": "application/json",
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api put.');
//    print(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    String token = Shared.token;
    print('Api delete, url $url');
    var apiResponse;
    try {
      final response = await http.delete(url, headers: {
        'Authorization': 'Bearer $token',
        "content-Type": "application/json",
      });
      apiResponse = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api delete.');
    return apiResponse;
  }

  Future<T> multiPart<T>(String url, {Map<String, dynamic> params}) async {
    print('Api multipart, url $url $params');
    T responseJson;
    print("MultipartFile call--------------");
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    http.MultipartRequest request = new http.MultipartRequest("POST", uri);
//          print(params);
    request.headers.addAll(headers);
    request.fields.addAll(params["fields"]);
    if (params['file'] != null) {
      Map<String, dynamic> _file = params['file'];
      http.MultipartFile multipartFile;
      for (var entry in _file.entries) {
        var stream =
            new http.ByteStream(DelegatingStream.typed(entry.value.openRead()));
        var length = await (entry.value as File).length();
        multipartFile = new http.MultipartFile(entry.key, stream, length,
            filename: basename(entry.value.path));
        print("VALUE : $length ${entry.key}, ${entry.value}");
        request.files.add(multipartFile);
      }
    }
    var streamResponse = await request.send();
    //Response response = jsonDecode(await streamResponse.stream.transform(utf8.decoder).join());

    var onData = await streamResponse.stream.transform(utf8.decoder).first;
    print("dynamicCallApi RESPONSE : $onData");
    responseJson = _returnResponse<Map>(json.decode(onData.toString()));
    return responseJson;
  }
}

dynamic _returnResponse<T>(T response) {
 // print('respose-------------- $T');
  if (response is http.Response) {
    print(response.body);
  //  print('statusCode------------- ${response.statusCode}');
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = json.decode(response.body);
        print("responseJson : $responseJson");
        return responseJson;
      case 404:
      case 400:
        throw BadRequestException(json.decode(response.body));
      case 401:
      case 403:
        throw UnauthorisedException(json.decode(response.body));
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  } else if (response is Map<String, dynamic>) {
    print("MAP :::");
    print(response);
    switch (response["code"]) {
      case 200:
        var responseJson = response["response"];
        print("responseJson : $responseJson");
        return responseJson;
      case 404:
      case 400:
        throw BadRequestException(response["response"]);
      case 401:
      case 403:
        throw UnauthorisedException(response["response"]);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response["code"]}');
    }
  }
}
