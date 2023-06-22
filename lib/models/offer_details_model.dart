import 'dart:convert';

JwtModel offerDetailFromJson(String str) => JwtModel.fromJson(json.decode(str));

String offerDetailToJson(JwtModel data) => json.encode(data.toJson());

class JwtModel {
  JwtModel({
    this.userId,
    this.firstName,
    this.lastName,
    this.userType,
    this.clientId,
    this.clientName,
    this.channelId,
    this.channelOriginId,
    this.channelType,
    this.phonenumber,
    this.phonenumberVerified,
    this.email,
    this.originId,
    this.originName,
  });

  String? userId;
  String? firstName;
  String? lastName;
  String? userType;
  String? clientId;
  String? clientName;
  String? channelId;
  String? channelOriginId;
  String? channelType;
  String? phonenumber;
  bool? phonenumberVerified;
  String? email;
  String? originId;
  String? originName;

  factory JwtModel.fromJson(Map<String, dynamic> json) => JwtModel(
        userId: json["UserId"] ?? "",
        firstName: json["FirstName"] ?? "",
        lastName: json["LastName"] ?? "",
        userType: json["UserType"] ?? "",
        clientId: json["ClientId"] ?? "",
        clientName: json["ClientName"] ?? "",
        channelId: json["ChannelId"] ?? "",
        channelOriginId: json["ChannelOriginId"] ?? "",
        channelType: json["ChannelType"] ?? "",
        phonenumber: json["Phonenumber"] ?? "",
        phonenumberVerified: json["PhonenumberVerified"] ?? true,
        email: json["Email"] ?? "",
        originId: json["OriginId"] ?? "",
        originName: json["OriginName"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "UserId": userId,
        "FirstName": firstName,
        "LastName": lastName,
        "UserType": userType,
        "ClientId": clientId,
        "ClientName": clientName,
        "ChannelId": channelId,
        "ChannelOriginId": channelOriginId,
        "ChannelType": channelType,
        "Phonenumber": phonenumber,
        "PhonenumberVerified": phonenumberVerified,
        "Email": email,
        "OriginId": originId,
        "OriginName": originName,
      };
}
