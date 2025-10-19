import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../core/failure.dart';
import '../entities/user.dart';

class LoginUser {
  final AuthRepository repository;
  LoginUser(this.repository);

  Future<Either<Failure, User>> call({
    required String email,
    required String password,
  }) async {
    return await repository.loginWithEmail(email: email, password: password);
  }
}