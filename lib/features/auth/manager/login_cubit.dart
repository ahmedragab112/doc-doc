import 'package:bloc/bloc.dart';
import 'package:doctor_appionment/features/auth/data/models/log_response_model.dart';
import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:doctor_appionment/features/auth/data/repo/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  LoginCubit({required this.loginRepo}) : super(const LoginState.initial());

  login({required String email, required String password}) async {
    emit(const LoginState.loading());
    var data =
        await loginRepo.login(LoginModel(email: email, password: password));
    data.when(
      data: (data) {
        emit(LoginState.success(loginResponseModel: data));
      },
      error: (message) {
        emit(LoginState.fail(message: message));
      },
    );
  }
}
