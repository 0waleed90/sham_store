import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failures,User?>> createUserWithEmail(String email, String password);
  Future<Either<Failures,User?>> logInWithEmail(String email, String password);
  Future<void> signOut();
  Stream<User?> get authStateChanges;
  Future<Either<Failures,bool>> sendPasswordResetEmail(String email);
}
