// To parse this JSON data, do
//
//     final employeeprofile = employeeprofileFromMap(jsonString);

import 'dart:convert';

Employeeprofile employeeprofileFromMap(String str) => Employeeprofile.fromMap(json.decode(str));

String employeeprofileToMap(Employeeprofile data) => json.encode(data.toMap());

class Employeeprofile {
  Employeeprofile({
    this.data,
  });

  List<Datum> data;

  factory Employeeprofile.fromMap(Map<String, dynamic> json) => Employeeprofile(
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class Datum {
  Datum({
    this.employeeId,
    this.companyId,
    this.employeeNumber,
    this.salutationId,
    this.firstName,
    this.middleName,
    this.lastName,
    this.employeeFullName,
    this.gender,
    this.dateOfBirthstr,
    this.dateOfBirth,
    this.employmentStatusId,
    this.employmentTypeId,
    this.employmentStatus,
    this.employmentType,
    this.departmentId,
    this.department,
    this.designationId,
    this.designation,
    this.leavePolicyId,
    this.workPolicyId,
    this.workLocationId,
    this.settlementPolicyId,
    this.grade,
    this.reportingTo,
    this.hod,
    this.processingType,
    this.dateOfJoiningstr,
    this.dateOfProbationstr,
    this.dateOfAppraisalstr,
    this.dateOfJoining,
    this.dateOfProbation,
    this.dateOfAppraisal,
    this.officialEmail,
    this.photoPath,
    this.employeePic,
  });

  int employeeId;
  int companyId;
  String employeeNumber;
  int salutationId;
  String firstName;
  String middleName;
  String lastName;
  String employeeFullName;
  int gender;
  DateTime dateOfBirthstr;
  String dateOfBirth;
  int employmentStatusId;
  int employmentTypeId;
  String employmentStatus;
  String employmentType;
  int departmentId;
  String department;
  int designationId;
  String designation;
  int leavePolicyId;
  int workPolicyId;
  int workLocationId;
  int settlementPolicyId;
  int grade;
  int reportingTo;
  int hod;
  int processingType;
  DateTime dateOfJoiningstr;
  DateTime dateOfProbationstr;
  DateTime dateOfAppraisalstr;
  String dateOfJoining;
  String dateOfProbation;
  String dateOfAppraisal;
  String officialEmail;
  String photoPath;
  String employeePic;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    employeeId: json["employeeID"] == null ? null : json["employeeID"],
    companyId: json["companyID"] == null ? null : json["companyID"],
    employeeNumber: json["employeeNumber"] == null ? null : json["employeeNumber"],
    salutationId: json["salutationId"] == null ? null : json["salutationId"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    middleName: json["middleName"] == null ? null : json["middleName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    employeeFullName: json["employeeFullName"] == null ? null : json["employeeFullName"],
    gender: json["gender"] == null ? null : json["gender"],
    dateOfBirthstr: json["dateOfBirthstr"] == null ? null : DateTime.parse(json["dateOfBirthstr"]),
    dateOfBirth: json["dateOfBirth"] == null ? null : json["dateOfBirth"],
    employmentStatusId: json["employmentStatusID"] == null ? null : json["employmentStatusID"],
    employmentTypeId: json["employmentTypeID"] == null ? null : json["employmentTypeID"],
    employmentStatus: json["employmentStatus"] == null ? null : json["employmentStatus"],
    employmentType: json["employmentType"] == null ? null : json["employmentType"],
    departmentId: json["departmentID"] == null ? null : json["departmentID"],
    department: json["department"] == null ? null : json["department"],
    designationId: json["designationID"] == null ? null : json["designationID"],
    designation: json["designation"] == null ? null : json["designation"],
    leavePolicyId: json["leavePolicyID"] == null ? null : json["leavePolicyID"],
    workPolicyId: json["workPolicyID"] == null ? null : json["workPolicyID"],
    workLocationId: json["workLocationID"] == null ? null : json["workLocationID"],
    settlementPolicyId: json["settlementPolicyID"] == null ? null : json["settlementPolicyID"],
    grade: json["grade"] == null ? null : json["grade"],
    reportingTo: json["reportingTo"] == null ? null : json["reportingTo"],
    hod: json["hod"] == null ? null : json["hod"],
    processingType: json["processingType"] == null ? null : json["processingType"],
    dateOfJoiningstr: json["dateOfJoiningstr"] == null ? null : DateTime.parse(json["dateOfJoiningstr"]),
    dateOfProbationstr: json["dateOfProbationstr"] == null ? null : DateTime.parse(json["dateOfProbationstr"]),
    dateOfAppraisalstr: json["dateOfAppraisalstr"] == null ? null : DateTime.parse(json["dateOfAppraisalstr"]),
    dateOfJoining: json["dateOfJoining"] == null ? null : json["dateOfJoining"],
    dateOfProbation: json["dateOfProbation"] == null ? null : json["dateOfProbation"],
    dateOfAppraisal: json["dateOfAppraisal"] == null ? null : json["dateOfAppraisal"],
    officialEmail: json["officialEmail"]== null ? null : json["officialEmail"],
    photoPath: json["photoPath"] == null ? null : json["photoPath"],
    employeePic: json["EmployeePic"] == null ? null : json["EmployeePic"],
  );

  Map<String, dynamic> toMap() => {
    "employeeID": employeeId == null ? null : employeeId,
    "companyID": companyId == null ? null : companyId,
    "employeeNumber": employeeNumber == null ? null : employeeNumber,
    "salutationId": salutationId == null ? null : salutationId,
    "firstName": firstName== null ? null : firstName,
    "middleName": middleName== null ? null : middleName,
    "lastName": lastName== null ? null : lastName,
    "employeeFullName": employeeFullName == null ? null : employeeFullName,
    "gender": gender == null ? null : gender,
    "dateOfBirthstr": dateOfBirthstr == null ? null : dateOfBirthstr.toIso8601String(),
    "dateOfBirth": dateOfBirth == null ? null : dateOfBirth,
    "employmentStatusID": employmentStatusId == null ? null : employmentStatusId,
    "employmentTypeID": employmentTypeId == null ? null : employmentTypeId,
    "employmentStatus": employmentStatus == null ? null : employmentStatus,
    "employmentType": employmentType == null ? null : employmentType,
    "departmentID": departmentId == null ? null : departmentId,
    "department": department == null ? null : department,
    "designationID": designationId == null ? null : designationId,
    "designation": designation == null ? null : designation,
    "leavePolicyID": leavePolicyId == null ? null : leavePolicyId,
    "workPolicyID": workPolicyId == null ? null : workPolicyId,
    "workLocationID": workLocationId == null ? null : workLocationId,
    "settlementPolicyID": settlementPolicyId == null ? null : settlementPolicyId,
    "grade": grade == null ? null : grade,
    "reportingTo": reportingTo == null ? null : reportingTo,
    "hod": hod == null ? null : hod,
    "processingType": processingType == null ? null : processingType,
    "dateOfJoiningstr": dateOfJoiningstr == null ? null : dateOfJoiningstr.toIso8601String(),
    "dateOfProbationstr": dateOfProbationstr == null ? null : dateOfProbationstr.toIso8601String(),
    "dateOfAppraisalstr": dateOfAppraisalstr == null ? null : dateOfAppraisalstr.toIso8601String(),
    "dateOfJoining": dateOfJoining == null ? null : dateOfJoining,
    "dateOfProbation": dateOfProbation == null ? null : dateOfProbation,
    "dateOfAppraisal": dateOfAppraisal == null ? null : dateOfAppraisal,
    "officialEmail": officialEmail == null ? null : officialEmail,
    "photoPath": photoPath == null ? null : photoPath,
    "EmployeePic": employeePic == null ? null : employeePic,
  };
}
