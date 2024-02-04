import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.g.dart';
@JsonSerializable()
class ApiErrorModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  ApiErrorModel({this.message, this.data, this.status, this.code});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  
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
