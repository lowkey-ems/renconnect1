import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../core/failure.dart';
import '../entities/user.dart';

class GetCurrentUser {
  final AuthRepository repository;
  GetCurrentUser(this.repository);

  Future<Either<Failure, User?>> call() async {
    return await repository.getCurrentUser();
  }
}