import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../core/failure.dart';

class DeleteProfile {
  final UserRepository repository;
  DeleteProfile(this.repository);

  Future<Either<Failure, void>> call(String userId) async {
    return await repository.deleteProfile(userId);
  }
}