import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  String? message;
  
  int? code;

  ApiErrorModel({this.message, this.code});
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
