import 'package:dio/dio.dart';
import 'package:doctor_appionment/core/utils/helper/dio_setup.dart';
import 'package:doctor_appionment/features/auth/data/repo/login_repo.dart';
import 'package:doctor_appionment/features/auth/data/services/login_webservice.dart';
import 'package:doctor_appionment/features/auth/manager/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setUpGetIt() {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<LoginWebService>(() => LoginWebService(dio));

  getit.registerLazySingleton<LoginRepo>(
      () => LoginRepo(loginWebService: getit()));
  getit.registerLazySingleton<AuthCubit>(() => AuthCubit(loginRepo: getit()));
}
