class ApiConstant{
static const String baseUrl="https://vcare.integration25.com/api/";
static const String auth = "auth";
static const String register = "register";
static const String login='login';
}
class EndPointes{
  static const String loginAuthEndPoint='auth/login';
  static const String registerAuthEndPoint='${ApiConstant.auth}/${ApiConstant.register}';
}