import 'package:dartz/dartz.dart';
import '../entities/user_profile.dart';

abstract class UserProfileRepository {
  Future<Either<Exception, UserProfile>> getUserProfile(String userId);
  Future<Either<Exception, UserProfile>> createUserProfile(UserProfile profile);
  Future<Either<Exception, UserProfile>> updateUserProfile(UserProfile profile);
  Future<Either<Exception, bool>> deleteUserProfile(String userId);
}
