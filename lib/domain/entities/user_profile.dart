import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? avatarUrl;
  final String role; // e.g., Student, Worker, Family, Owner, Manager, Admin
  final String? bio;
  final String? address;
  final Map<String, dynamic>? roleSpecificFields; // for custom fields like company, school, etc.
  final bool isPrivate; // privacy setting for visibility

  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    this.avatarUrl,
    required this.role,
    this.bio,
    this.address,
    this.roleSpecificFields,
    this.isPrivate = false,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
        avatarUrl,
        role,
        bio,
        address,
        roleSpecificFields,
        isPrivate,
      ];
}
