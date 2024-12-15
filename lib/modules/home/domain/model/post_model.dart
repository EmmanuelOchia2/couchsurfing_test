import 'package:couchsurfing_test/modules/home/domain/model/user_model.dart';

class PostModel {
  const PostModel({
    required this.dateRaw,
    required this.postContent,
    required this.user,
  });
  final String dateRaw;
  final String postContent;
  final UserModel user;
}
