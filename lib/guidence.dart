class Guidance {
  Guidance({
    this.status,
    this.userid,
    this.mobile,
    this.email,
    this.path,
    this.crm,
    this.customerId,
  });

  String status;
  String userid;
  String mobile;
  String email;
  String path;
  String crm;
  String customerId;

  factory Guidance.fromJson(Map<String, dynamic> json) => Guidance(
    status: json["status"],
    userid: json["userid"],
    mobile: json["mobile"],
    email: json["email"],
    path: json["path"],
    crm: json["crm"],
    customerId: json["customer_id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "userid": userid,
    "mobile": mobile,
    "email": email,
    "path": path,
    "crm": crm,
    "customer_id": customerId,
  };
}
