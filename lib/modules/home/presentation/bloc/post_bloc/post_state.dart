part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

final class PostLoaded extends PostState {
  PostLoaded({required this.posts});
  final List<PostModel> posts;
}
