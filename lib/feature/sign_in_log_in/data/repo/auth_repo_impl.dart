import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_store/core/errors/failure.dart';
import 'package:my_store/feature/sign_in_log_in/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<Failures, User?>> logInWithEmail(
      String email,
      String password,
      ) async {
    try {
      // هنا يجب أن يكون تسجيل دخول وليس إنشاء حساب
      final credential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return right(credential.user);
    } on FirebaseAuthException catch (e) {
      return left(ServerFailure(_handleAuthException(e)));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, User?>> createUserWithEmail(
      String email,
      String password,
      ) async {
    try {
      // هنا إنشاء حساب جديد
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(credential.user);
    } on FirebaseAuthException catch (e) {
      print(_handleAuthException(e));
      return left(ServerFailure(_handleAuthException(e)));
    } catch (e) {

      return left(ServerFailure(e.toString()));
    }
  }

  // دالة مساعدة لتوضيح الأخطاء
  String _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'المستخدم غير موجود';
      case 'wrong-password':
        return 'كلمة المرور خاطئة';
      case 'email-already-in-use':
        return 'البريد الإلكتروني مسجل بالفعل';
      case 'weak-password':
        return 'كلمة المرور ضعيفة جداً';
      case 'invalid-email':
        return 'صيغة البريد الإلكتروني غير صحيحة';
      default:
        return e.toString() ?? 'حدث خطأ في الاتصال بالسيرفر';
    }
  }

  @override
  Future<void> signOut() async => await _auth.signOut();

  @override
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  @override
  Future<Either<Failures, bool>> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return right(true);
    } on FirebaseAuthException catch (e) {
      return left(ServerFailure(e.message ?? 'خطأ في إرسال البريد'));
    }
  }
}