import 'package:couchsurfing_test/modules/home/domain/model/post_model.dart';
import 'package:couchsurfing_test/modules/home/domain/model/user_model.dart';
import 'package:couchsurfing_test/modules/home/presentation/widget/post_list_widget.dart';
import 'package:flutter/material.dart';

class PostDetailView extends StatelessWidget {
  const PostDetailView({required this.post, super.key});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostListWidget(post: post),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Text(
                'Comments',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return PostListWidget(
                  post: _comment,
                  type: PostType.comment,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  final _comment = const PostModel(
    dateRaw: '2024/12/14',
    postContent: 'This is so awesome',
    user: UserModel(
      lastname: 'Johnson',
      name: 'Mark',
    ),
  );
}
