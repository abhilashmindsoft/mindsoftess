// To parse this JSON data, do
//
//     final companylist = companylistFromMap(jsonString);

import 'dart:convert';

Companylist companylistFromMap(String str) => Companylist.fromMap(json.decode(str));

String companylistToMap(Companylist data) => json.encode(data.toMap());

class Companylist {
  Companylist({
    this.status,
    this.companyList,
  });

  String status;
  List<CompanyList> companyList;

  factory Companylist.fromMap(Map<String, dynamic> json) => Companylist(
    status: json["Status"] == null ? null : json["Status"],
    companyList: json["companyList"] == null ? null : List<CompanyList>.from(json["companyList"].map((x) => CompanyList.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "Status": status == null ? null : status,
    "companyList": companyList == null ? null : List<dynamic>.from(companyList.map((x) => x.toMap())),
  };
}

class CompanyList {
  CompanyList({
    this.companyId,
    this.parentId,
    this.isBranch,
    this.companyName,
    this.shortName,
    this.pOBox,
    this.area,
    this.block,
    this.road,
    this.city,
    this.stateId,
    this.countryId,
    this.currencyId,
    this.companyIndustryId,
    this.companyTypeId,
    this.primaryEmail,
    this.secondaryEmail,
    this.telephoneNo,
    this.faxNo,
    this.webSite,
    this.finYrStartDate,
    this.finYrStartDatestr,
    this.workingDaysInMonth,
    this.daysId,
    this.bookStartDate,
    this.bookStartDatestr,
    this.isMonth,
    this.epid,
    this.companyStartDate,
    this.companyStartDatestr,
    this.unearnedPolicyId,
    this.otherInfo,
    this.companyLogo,
    this.companyLogobyte,
    this.tanNo,
    this.officeHeadName,
    this.designationId,
    this.panNo,
    this.fatherName,
    this.cinNo,
    this.gstTin,
    this.rocCode,
    this.registrationNo,
    this.accountNo,
    this.isSaved,
  });

  int companyId;
  int parentId;
  int isBranch;
  String companyName;
  dynamic shortName;
  dynamic pOBox;
  dynamic area;
  dynamic block;
  dynamic road;
  dynamic city;
  dynamic stateId;
  dynamic countryId;
  dynamic currencyId;
  dynamic companyIndustryId;
  dynamic companyTypeId;
  dynamic primaryEmail;
  dynamic secondaryEmail;
  int telephoneNo;
  int faxNo;
  dynamic webSite;
  dynamic finYrStartDate;
  dynamic finYrStartDatestr;
  int workingDaysInMonth;
  dynamic daysId;
  dynamic bookStartDate;
  dynamic bookStartDatestr;
  bool isMonth;
  dynamic epid;
  dynamic companyStartDate;
  dynamic companyStartDatestr;
  int unearnedPolicyId;
  dynamic otherInfo;
  dynamic companyLogo;
  dynamic companyLogobyte;
  dynamic tanNo;
  dynamic officeHeadName;
  int designationId;
  dynamic panNo;
  dynamic fatherName;
  int cinNo;
  int gstTin;
  dynamic rocCode;
  dynamic registrationNo;
  dynamic accountNo;
  bool isSaved;

  factory CompanyList.fromMap(Map<String, dynamic> json) => CompanyList(
    companyId: json["companyId"] == null ? null : json["companyId"],
    parentId: json["parentId"] == null ? null : json["parentId"],
    isBranch: json["isBranch"] == null ? null : json["isBranch"],
    companyName: json["companyName"] == null ? null : json["companyName"],
    shortName: json["shortName"],
    pOBox: json["pOBox"],
    area: json["area"],
    block: json["block"],
    road: json["road"],
    city: json["city"],
    stateId: json["stateId"],
    countryId: json["countryId"],
    currencyId: json["currencyId"],
    companyIndustryId: json["companyIndustryId"],
    companyTypeId: json["companyTypeId"],
    primaryEmail: json["primaryEmail"],
    secondaryEmail: json["secondaryEmail"],
    telephoneNo: json["telephoneNo"] == null ? null : json["telephoneNo"],
    faxNo: json["faxNo"] == null ? null : json["faxNo"],
    webSite: json["webSite"],
    finYrStartDate: json["finYrStartDate"],
    finYrStartDatestr: json["finYrStartDatestr"],
    workingDaysInMonth: json["workingDaysInMonth"] == null ? null : json["workingDaysInMonth"],
    daysId: json["daysID"],
    bookStartDate: json["bookStartDate"],
    bookStartDatestr: json["bookStartDatestr"],
    isMonth: json["isMonth"] == null ? null : json["isMonth"],
    epid: json["EPID"],
    companyStartDate: json["companyStartDate"],
    companyStartDatestr: json["companyStartDatestr"],
    unearnedPolicyId: json["unearnedPolicyId"] == null ? null : json["unearnedPolicyId"],
    otherInfo: json["OtherInfo"],
    companyLogo: json["companyLogo"],
    companyLogobyte: json["companyLogobyte"],
    tanNo: json["tanNo"],
    officeHeadName: json["officeHeadName"],
    designationId: json["designationId"] == null ? null : json["designationId"],
    panNo: json["panNo"],
    fatherName: json["fatherName"],
    cinNo: json["cinNo"] == null ? null : json["cinNo"],
    gstTin: json["gstTIN"] == null ? null : json["gstTIN"],
    rocCode: json["rocCode"],
    registrationNo: json["registrationNo"],
    accountNo: json["accountNo"],
    isSaved: json["isSaved"] == null ? null : json["isSaved"],
  );

  Map<String, dynamic> toMap() => {
    "companyId": companyId == null ? null : companyId,
    "parentId": parentId == null ? null : parentId,
    "isBranch": isBranch == null ? null : isBranch,
    "companyName": companyName == null ? null : companyName,
    "shortName": shortName,
    "pOBox": pOBox,
    "area": area,
    "block": block,
    "road": road,
    "city": city,
    "stateId": stateId,
    "countryId": countryId,
    "currencyId": currencyId,
    "companyIndustryId": companyIndustryId,
    "companyTypeId": companyTypeId,
    "primaryEmail": primaryEmail,
    "secondaryEmail": secondaryEmail,
    "telephoneNo": telephoneNo == null ? null : telephoneNo,
    "faxNo": faxNo == null ? null : faxNo,
    "webSite": webSite,
    "finYrStartDate": finYrStartDate,
    "finYrStartDatestr": finYrStartDatestr,
    "workingDaysInMonth": workingDaysInMonth == null ? null : workingDaysInMonth,
    "daysID": daysId,
    "bookStartDate": bookStartDate,
    "bookStartDatestr": bookStartDatestr,
    "isMonth": isMonth == null ? null : isMonth,
    "EPID": epid,
    "companyStartDate": companyStartDate,
    "companyStartDatestr": companyStartDatestr,
    "unearnedPolicyId": unearnedPolicyId == null ? null : unearnedPolicyId,
    "OtherInfo": otherInfo,
    "companyLogo": companyLogo,
    "companyLogobyte": companyLogobyte,
    "tanNo": tanNo,
    "officeHeadName": officeHeadName,
    "designationId": designationId == null ? null : designationId,
    "panNo": panNo,
    "fatherName": fatherName,
    "cinNo": cinNo == null ? null : cinNo,
    "gstTIN": gstTin == null ? null : gstTin,
    "rocCode": rocCode,
    "registrationNo": registrationNo,
    "accountNo": accountNo,
    "isSaved": isSaved == null ? null : isSaved,
  };
}
