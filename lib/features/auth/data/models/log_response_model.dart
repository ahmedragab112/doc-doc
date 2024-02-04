import 'package:freezed_annotation/freezed_annotation.dart';
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
  List<String>? name;
  List<String>? email;
  List<String>? phone;
  List<String>? gender;
  List<String>? password;

  Data({this.name, this.email, this.phone, this.gender, this.password});

factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
