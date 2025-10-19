import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../core/failure.dart';
import '../entities/profile.dart';

class GetProfile {
  final UserRepository repository;
  GetProfile(this.repository);

  Future<Either<Failure, Profile>> call(String userId) async {
    return await repository.getProfile(userId);
  }
}