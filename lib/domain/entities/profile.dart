import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String id;
  final String userId;
  final String? name;
  final String? phone;
  final String? avatarUrl;
  final String? bio;
  final String? address;
  final Map<String, dynamic>? extras; // role-specific fields (e.g., owner metadata)

  const Profile({
    required this.id,
    required this.userId,
    this.name,
    this.phone,
    this.avatarUrl,
    this.bio,
    this.address,
    this.extras,
  });

  Profile copyWith({
    String? id,
    String? userId,
    String? name,
    String? phone,
    String? avatarUrl,
    String? bio,
    String? address,
    Map<String, dynamic>? extras,
  }) {
    return Profile(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      address: address ?? this.address,
      extras: extras ?? this.extras,
    );
  }

  @override
  List<Object?> get props => [id, userId, name, phone, avatarUrl, bio, address, extras];
}