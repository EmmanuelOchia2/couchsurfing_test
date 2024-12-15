import 'package:flutter/material.dart';

class PostUserHeaderWidget extends StatelessWidget {
  const PostUserHeaderWidget({
    super.key,
    required this.userFullName,
  });

  final String userFullName;
  final avatarUrl = 'https://ui-avatars.com/api/?name=';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 36,
          width: 36,
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                getAvatarUrl(),
              ),
            ),
          ),
        ),
        Text(
          userFullName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  String getAvatarUrl() {
    return '$avatarUrl${userFullName.replaceAll(' ', '+')}';
  }
}
