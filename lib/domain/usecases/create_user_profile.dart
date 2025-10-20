import 'package:dartz/dartz.dart';
import 'package:domain_layer_demo/domain/repositories/user_repository.dart';
import '../entities/user_profile.dart';

class CreateUserProfile {
  final UserProfileRepository repository;

  CreateUserProfile(this.repository);

  Future<Either<Exception, UserProfile>> call(UserProfile profile) async {
    return await repository.createUserProfile(profile);
  }
}
