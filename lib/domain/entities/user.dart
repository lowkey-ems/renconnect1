import 'package:equatable/equatable.dart';
import 'user_role.dart';

class User extends Equatable {
  final String id;
  final String email;
  final UserRole role;
  final bool emailVerified;
  final DateTime? createdAt;

  const User({
    required this.id,
    required this.email,
    required this.role,
    this.emailVerified = false,
    this.createdAt,
  });

  User copyWith({
    String? id,
    String? email,
    UserRole? role,
    bool? emailVerified,
    DateTime? createdAt,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      role: role ?? this.role,
      emailVerified: emailVerified ?? this.emailVerified,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [id, email, role, emailVerified, createdAt];
}