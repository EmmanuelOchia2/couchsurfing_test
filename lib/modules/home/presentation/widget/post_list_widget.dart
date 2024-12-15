import 'package:couchsurfing_test/modules/home/domain/model/post_model.dart';
import 'package:couchsurfing_test/modules/home/presentation/post_detail_view.dart';
import 'package:couchsurfing_test/modules/home/presentation/widget/post_user_header_widget.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({
    required this.post,
    this.type = PostType.feed,
    super.key,
  });
  final PostModel post;
  final PostType type;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (type == PostType.feed) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailView(post: post),
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: type == PostType.feed
            ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
            : const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.35),
              offset: const Offset(5, 5),
              blurRadius: 8,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostUserHeaderWidget(userFullName: post.user.fullname()),
            const SizedBox(
              height: 12,
            ),
            Text(post.postContent),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(post.dateRaw),
            ),
          ],
        ),
      ),
    );
  }
}

enum PostType { feed, comment }
