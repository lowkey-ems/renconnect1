import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../core/failure.dart';

class LogoutUser {
  final AuthRepository repository;
  LogoutUser(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.logout();
  }
}