import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../core/failure.dart';
import '../entities/profile.dart';

class SaveProfile {
  final UserRepository repository;
  SaveProfile(this.repository);

  Future<Either<Failure, Profile>> call(Profile profile) async {
    return await repository.saveProfile(profile);
  }
}