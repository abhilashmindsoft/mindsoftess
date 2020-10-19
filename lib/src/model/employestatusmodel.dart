// To parse this JSON data, do
//
//     final employestatusmodel = employestatusmodelFromMap(jsonString);

import 'dart:convert';

Employestatusmodel employestatusmodelFromMap(String str) => Employestatusmodel.fromMap(json.decode(str));

String employestatusmodelToMap(Employestatusmodel data) => json.encode(data.toMap());

class Employestatusmodel {
  Employestatusmodel({
    this.status,
    this.employmentStatusList,
  });

  String status;
  List<EmploymentStatusList> employmentStatusList;

  factory Employestatusmodel.fromMap(Map<String, dynamic> json) => Employestatusmodel(
    status: json["Status"] == null ? null : json["Status"],
    employmentStatusList: json["employmentStatusList"] == null ? null : List<EmploymentStatusList>.from(json["employmentStatusList"].map((x) => EmploymentStatusList.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "Status": status == null ? null : status,
    "employmentStatusList": employmentStatusList == null ? null : List<dynamic>.from(employmentStatusList.map((x) => x.toMap())),
  };
}

class EmploymentStatusList {
  EmploymentStatusList({
    this.employmentStatusId,
    this.employmentStatus,
  });

  int employmentStatusId;
  String employmentStatus;

  factory EmploymentStatusList.fromMap(Map<String, dynamic> json) => EmploymentStatusList(
    employmentStatusId: json["EmploymentStatusID"] == null ? null : json["EmploymentStatusID"],
    employmentStatus: json["EmploymentStatus"] == null ? null : json["EmploymentStatus"],
  );

  Map<String, dynamic> toMap() => {
    "EmploymentStatusID": employmentStatusId == null ? null : employmentStatusId,
    "EmploymentStatus": employmentStatus == null ? null : employmentStatus,
  };
}
