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
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              userFullName.toUpperCase().substring(0, 2),
              style: const TextStyle(color: Colors.white),
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
}
