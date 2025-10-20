import 'package:dartz/dartz.dart';
import 'package:domain_layer_demo/domain/repositories/user_repository.dart';
import '../entities/user_profile.dart';

class UpdateUserProfile {
  final UserProfileRepository repository;

  UpdateUserProfile(this.repository);

  Future<Either<Exception, UserProfile>> call(UserProfile profile) async {
    return await repository.updateUserProfile(profile);
  }
}
