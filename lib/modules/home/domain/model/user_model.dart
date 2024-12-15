class UserModel {
  const UserModel({
    this.avatarUrl,
    required this.lastname,
    required this.name,
  });
  final String name;
  final String lastname;
  final String? avatarUrl;

  String fullname() => '$name $lastname';
}
