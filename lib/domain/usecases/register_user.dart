import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../core/failure.dart';
import '../entities/user.dart';
import '../entities/user_role.dart';

class RegisterUser {
  final AuthRepository repository;
  RegisterUser(this.repository);

  Future<Either<Failure, User>> call({
    required String email,
    required String password,
    required UserRole role,
  }) async {
    return await repository.registerWithEmail(email: email, password: password, role: role);
  }
}