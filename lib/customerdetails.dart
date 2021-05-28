class CustomerDetails {
  CustomerDetails({
    this.name,
    this.accountStatus,
    this.onlineStatus,
    this.plan,
    this.activationDate,
    this.email,
    this.mobile,
    this.balance,
    this.address,
    this.macAddress,
    this.customerId,
    this.customerCode,
    this.regestrationDate,
    this.expiryDate,
    this.volumeQuota,
    this.remainingDays,
    this.usedDays,
    this.primaryAllocatedQuotaMb,
    this.primaryUsedQuotaMb,
    this.primaryUnusedQuotaMb,
    this.sessionStart,
    this.lastUpdatedTime,
    this.sessionDuration,
    this.uploadDataTransfer,
    this.downloadDataTransfer,
    this.totalDataTransfer,
    this.extTransactionId,
    this.transactionId,
    this.returnCode,
    this.returnMessage,
    this.businessSegment,
    this.gstin,
    this.serviceArea,
    this.city,
    this.partnerName,
    this.area,
    this.subArea,
    this.building,
    this.businessEntity,
    this.partnerType,
  });

  String name;
  String accountStatus;
  String onlineStatus;
  String plan;
  String activationDate;
  String email;
  String mobile;
  String balance;
  String address;
  String macAddress;
  String customerId;
  String customerCode;
  String regestrationDate;
  String expiryDate;
  String volumeQuota;
  String remainingDays;
  String usedDays;
  String primaryAllocatedQuotaMb;
  String primaryUsedQuotaMb;
  String primaryUnusedQuotaMb;
  String sessionStart;
  String lastUpdatedTime;
  String sessionDuration;
  String uploadDataTransfer;
  String downloadDataTransfer;
  String totalDataTransfer;
  String extTransactionId;
  String transactionId;
  String returnCode;
  String returnMessage;
  String businessSegment;
  String gstin;
  String serviceArea;
  String city;
  String partnerName;
  String area;
  String subArea;
  String building;
  String businessEntity;
  String partnerType;

  factory CustomerDetails.fromJson(Map<String, dynamic> json) => CustomerDetails(
    name: json["Name"],
    accountStatus: json["AccountStatus"],
    onlineStatus: json["OnlineStatus"],
    plan: json["Plan"],
    activationDate: json["ActivationDate"],
    email: json["Email"],
    mobile: json["Mobile"],
    balance: json["Balance"],
    address: json["Address"],
    macAddress: json["MacAddress"],
    customerId: json["CustomerID"],
    customerCode: json["CustomerCode"],
    regestrationDate: json["RegestrationDate"],
    expiryDate: json["ExpiryDate"],
    volumeQuota: json["VolumeQuota"],
    remainingDays: json["RemainingDays"],
    usedDays: json["UsedDays"],
    primaryAllocatedQuotaMb: json["PrimaryAllocatedQuotaMB"],
    primaryUsedQuotaMb: json["PrimaryUsedQuotaMB"],
    primaryUnusedQuotaMb: json["PrimaryUnusedQuotaMB"],
    sessionStart: json["SessionStart"],
    lastUpdatedTime: json["LastUpdatedTime"],
    sessionDuration: json["SessionDuration"],
    uploadDataTransfer: json["UploadDataTransfer"],
    downloadDataTransfer: json["DownloadDataTransfer"],
    totalDataTransfer: json["TotalDataTransfer"],
    extTransactionId: json["extTransactionId"],
    transactionId: json["transactionId"],
    returnCode: json["returnCode"],
    returnMessage: json["returnMessage"],
    businessSegment: json["BusinessSegment"],
    gstin: json["GSTIN"],
    serviceArea: json["ServiceArea"],
    city: json["City"],
    partnerName: json["PartnerName"],
    area: json["Area"],
    subArea: json["SubArea"],
    building: json["Building"],
    businessEntity: json["BusinessEntity"],
    partnerType: json["PartnerType"],
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "AccountStatus": accountStatus,
    "OnlineStatus": onlineStatus,
    "Plan": plan,
    "ActivationDate": activationDate,
    "Email": email,
    "Mobile": mobile,
    "Balance": balance,
    "Address": address,
    "MacAddress": macAddress,
    "CustomerID": customerId,
    "CustomerCode": customerCode,
    "RegestrationDate": regestrationDate,
    "ExpiryDate": expiryDate,
    "VolumeQuota": volumeQuota,
    "RemainingDays": remainingDays,
    "UsedDays": usedDays,
    "PrimaryAllocatedQuotaMB": primaryAllocatedQuotaMb,
    "PrimaryUsedQuotaMB": primaryUsedQuotaMb,
    "PrimaryUnusedQuotaMB": primaryUnusedQuotaMb,
    "SessionStart": sessionStart,
    "LastUpdatedTime": lastUpdatedTime,
    "SessionDuration": sessionDuration,
    "UploadDataTransfer": uploadDataTransfer,
    "DownloadDataTransfer": downloadDataTransfer,
    "TotalDataTransfer": totalDataTransfer,
    "extTransactionId": extTransactionId,
    "transactionId": transactionId,
    "returnCode": returnCode,
    "returnMessage": returnMessage,
    "BusinessSegment": businessSegment,
    "GSTIN": gstin,
    "ServiceArea": serviceArea,
    "City": city,
    "PartnerName": partnerName,
    "Area": area,
    "SubArea": subArea,
    "Building": building,
    "BusinessEntity": businessEntity,
    "PartnerType": partnerType,
  };
}