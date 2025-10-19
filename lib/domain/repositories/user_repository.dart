import 'package:dartz/dartz.dart';
import '../core/failure.dart';
import '../entities/profile.dart';

abstract class UserRepository {
  /// Fetch profile by userId
  Future<Either<Failure, Profile>> getProfile(String userId);

  /// Create or update a profile
  Future<Either<Failure, Profile>> saveProfile(Profile profile);

  /// Delete profile
  Future<Either<Failure, void>> deleteProfile(String userId);
}