import 'dart:async';

import 'package:couchsurfing_test/modules/home/domain/model/post_model.dart';
import 'package:couchsurfing_test/modules/home/domain/model/user_model.dart';

class PostRepository {
  Future<List<PostModel>> getPosts() async {
    await Future.delayed(const Duration(seconds: 2));
    //TODO: in a more complete system we would use APIClient to perform a get request from the posts
    return const [
      PostModel(
        dateRaw: '2024/07/24',
        postContent:
            'I am done with fortnite I need a new game shooter like to be happy and whole again',
        user: UserModel(lastname: 'Doe', name: 'John'),
      ),
      PostModel(
        dateRaw: '2024/08/15',
        postContent: 'Just reached my highest score in Apex Legends!',
        user: UserModel(lastname: 'Smith', name: 'Alice'),
      ),
      PostModel(
        dateRaw: '2024/09/03',
        postContent: 'Valorant nights are the best!',
        user: UserModel(lastname: 'Johnson', name: 'Bob'),
      ),
      PostModel(
        dateRaw: '2024/10/10',
        postContent: 'I need recommendations for a new RPG game.',
        user: UserModel(lastname: 'Brown', name: 'Charlie'),
      ),
      PostModel(
        dateRaw: '2024/11/21',
        postContent: 'Call of Duty: Warzone is my therapy!',
        user: UserModel(lastname: 'Taylor', name: 'Diana'),
      ),
    ];
  }
}
