import 'package:login/customerdetails.dart';
import 'package:login/guidence.dart';

class Abc {
  Abc({
    this.customerDetails,
    this.guidance,
  });

  CustomerDetails customerDetails;
  Guidance guidance;

  factory Abc.fromJson(Map<String, dynamic> json) => Abc(
    customerDetails: CustomerDetails.fromJson(json["customerDetails"]),
    guidance: Guidance.fromJson(json["guidance"]),
  );

  Map<String, dynamic> toJson() => {
    "customerDetails": customerDetails.toJson(),
    "guidance": guidance.toJson(),
  };
}