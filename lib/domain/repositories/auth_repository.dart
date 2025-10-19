import 'package:dartz/dartz.dart';
import '../core/failure.dart';
import '../entities/user.dart';
import '../entities/user_role.dart';

abstract class AuthRepository {
  /// Registers a user (domain layer). Implementation will use Firebase Auth.
  Future<Either<Failure, User>> registerWithEmail({
    required String email,
    required String password,
    required UserRole role,
  });

  /// Logs in and returns domain User.
  Future<Either<Failure, User>> loginWithEmail({
    required String email,
    required String password,
  });

  /// Logs out the current user.
  Future<Either<Failure, void>> logout();

  /// Returns the currently signed in user, if any.
  Future<Either<Failure, User?>> getCurrentUser();

  /// Returns whether a session exists.
  Future<Either<Failure, bool>> isSignedIn();
}