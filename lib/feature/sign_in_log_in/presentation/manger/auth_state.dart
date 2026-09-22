import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {
  final User user;
  AuthSuccess(this.user);
}

// حالة النجاح في إرسال رابط نسيان كلمة المرور
class AuthPasswordResetSuccess extends AuthState {
  final String message;
  AuthPasswordResetSuccess(this.message);
}

// حالة الفشل وظهور خطأ
class AuthFailure extends AuthState {
  final String errorMessage;
  AuthFailure(this.errorMessage);
}

class AuthLoggedOut extends AuthState {}
class AuthLoading extends AuthState{}
