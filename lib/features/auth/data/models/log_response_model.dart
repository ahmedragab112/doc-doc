import 'package:json_annotation/json_annotation.dart';

part 'log_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  LoginResponseModel({this.message, this.data, this.status, this.code});
 factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  Data({this.token, this.userName});


 factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
  
 
}
