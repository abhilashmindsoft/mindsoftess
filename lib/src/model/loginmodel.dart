// To parse this JSON data, do
//
//     final loginmodel = loginmodelFromMap(jsonString);

import 'dart:convert';

Loginmodel loginmodelFromMap(String str) => Loginmodel.fromMap(json.decode(str));

String loginmodelToMap(Loginmodel data) => json.encode(data.toMap());

class Loginmodel {
  Loginmodel({
    this.userId,
    this.employeeId,
    this.roleId,
    this.userName,
    this.token,
    this.role,
    this.password,
    this.isSaved,
  });

  int userId;
  String employeeId;
  int roleId;
  String userName;
  String token;
  String role;
  String password;
  bool isSaved;

  factory Loginmodel.fromMap(Map<String, dynamic> json) => Loginmodel(
    userId: json["UserID"] == null ? null : json["UserID"],
    employeeId: json["EmployeeId"] == null ? null : json["EmployeeId"],
    roleId: json["RoleID"] == null ? null : json["RoleID"],
    userName: json["UserName"] == null ? null : json["UserName"],
    token: json["Token"] == null ? null : json["Token"],
    role: json["Role"] == null ? null : json["Role"],
    password: json["Password"] == null ? null : json["Password"],
    isSaved: json["IsSaved"] == null ? null : json["IsSaved"],
  );

  Map<String, dynamic> toMap() => {
    "UserID": userId == null ? null : userId,
    "EmployeeId": employeeId == null ? null : employeeId,
    "RoleID": roleId == null ? null : roleId,
    "UserName": userName == null ? null : userName,
    "Token": token == null ? null : token,
    "Role": role == null ? null : role,
    "Password": password == null ? null : password,
    "IsSaved": isSaved == null ? null : isSaved,
  };
}
