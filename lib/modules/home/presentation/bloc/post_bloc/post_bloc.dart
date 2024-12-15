import 'package:bloc/bloc.dart';
import 'package:couchsurfing_test/modules/home/data/post_repository.dart';
import 'package:couchsurfing_test/modules/home/domain/model/post_model.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final _postRepository = PostRepository();
  PostBloc() : super(PostInitial()) {
    on<GetPostEvent>((event, emit) async {
      final posts = await _postRepository.getPosts();
      emit(PostLoaded(posts: posts));
    });
  }
}
