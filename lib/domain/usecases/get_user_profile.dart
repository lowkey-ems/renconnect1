import 'package:dartz/dartz.dart';
import 'package:domain_layer_demo/domain/repositories/user_repository.dart';
import '../entities/user_profile.dart';

class GetUserProfile {
  final UserProfileRepository repository;

  GetUserProfile(this.repository);

  Future<Either<Exception, UserProfile>> call(String userId) async {
    return await repository.getUserProfile(userId);
  }
}

