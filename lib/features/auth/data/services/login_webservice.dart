import 'package:dio/dio.dart';
import 'package:doctor_appionment/core/api/end_point.dart';
import 'package:doctor_appionment/features/auth/data/models/log_response_model.dart';
import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_webservice.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class LoginWebService {
  factory LoginWebService(Dio dio, {String baseUrl}) = _LoginWebService;

  @POST(EndPointes.loginAuthEndPoint)
 
  Future<LoginResponseModel> login(
      @Body() LoginModel login);
}
