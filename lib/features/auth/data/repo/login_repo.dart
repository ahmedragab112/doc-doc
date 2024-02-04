import 'package:doctor_appionment/features/auth/data/models/log_response_model.dart';
import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:doctor_appionment/features/auth/data/services/login_webservice.dart';

class LoginRepo {
  LoginWebService loginWebService;
  LoginRepo({required this.loginWebService});

  Future<LoginResponseModel> login(LoginModel loginModel) async {
    return await loginWebService.login(loginModel);
  }
}
