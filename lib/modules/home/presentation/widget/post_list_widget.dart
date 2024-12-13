import 'package:flutter/material.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text('Post content'),
          Align(
            alignment: Alignment.centerRight,
            child: Text('24/02/2024'),
          ),
        ],
      ),
    );
  }
}
