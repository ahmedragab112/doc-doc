import 'package:doctor_appionment/core/api/api_responsse.dart';
import 'package:doctor_appionment/features/auth/data/models/log_response_model.dart';
import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:doctor_appionment/features/auth/data/services/login_webservice.dart';

class LoginRepo {
  LoginWebService loginWebService;
  LoginRepo({required this.loginWebService});

  Future<ApiResponse<LoginResponseModel>> login(LoginModel loginModel) async {
    try {
      var data = await loginWebService.login(loginModel);
      return ApiResponse.data(data);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
