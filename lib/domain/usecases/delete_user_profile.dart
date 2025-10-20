import 'package:dartz/dartz.dart';
import 'package:domain_layer_demo/domain/repositories/user_repository.dart';

class DeleteUserProfile {
  final UserProfileRepository repository;

  DeleteUserProfile(this.repository);

  Future<Either<Exception, bool>> call(String userId) async {
    return await repository.deleteUserProfile(userId);
  }
}
