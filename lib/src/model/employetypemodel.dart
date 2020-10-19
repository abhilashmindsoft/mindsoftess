// To parse this JSON data, do
//
//     final employetypemodel = employetypemodelFromMap(jsonString);

import 'dart:convert';

Employetypemodel employetypemodelFromMap(String str) => Employetypemodel.fromMap(json.decode(str));

String employetypemodelToMap(Employetypemodel data) => json.encode(data.toMap());

class Employetypemodel {
  Employetypemodel({
    this.status,
    this.employmentTypeList,
  });

  String status;
  List<EmploymentTypeList> employmentTypeList;

  factory Employetypemodel.fromMap(Map<String, dynamic> json) => Employetypemodel(
    status: json["Status"] == null ? null : json["Status"],
    employmentTypeList: json["employmentTypeList"] == null ? null : List<EmploymentTypeList>.from(json["employmentTypeList"].map((x) => EmploymentTypeList.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "Status": status == null ? null : status,
    "employmentTypeList": employmentTypeList == null ? null : List<dynamic>.from(employmentTypeList.map((x) => x.toMap())),
  };
}

class EmploymentTypeList {
  EmploymentTypeList({
    this.employmentTypeId,
    this.employmentType,
  });

  int employmentTypeId;
  String employmentType;

  factory EmploymentTypeList.fromMap(Map<String, dynamic> json) => EmploymentTypeList(
    employmentTypeId: json["EmploymentTypeID"] == null ? null : json["EmploymentTypeID"],
    employmentType: json["EmploymentType"] == null ? null : json["EmploymentType"],
  );

  Map<String, dynamic> toMap() => {
    "EmploymentTypeID": employmentTypeId == null ? null : employmentTypeId,
    "EmploymentType": employmentType == null ? null : employmentType,
  };
}
