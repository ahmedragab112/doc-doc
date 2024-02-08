import 'package:doctor_appionment/features/auth/data/models/login_model.dart';
import 'package:doctor_appionment/features/auth/data/repo/login_repo.dart';
import 'package:doctor_appionment/features/auth/manager/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthCubit({required this.loginRepo}) : super(const LoginState.initial());

  Future<void> login({required LoginModel loginModel}) async {
    emit(const LoginState.loading());
    var data = await loginRepo.login(loginModel);
    data.when(
      data: (data) {
        emit(LoginState.success(data));
      },
      error: (message) {
        emit(LoginState.error(message: message.apiErrorModel.message ?? ''));
      },
    );
  }
}
