import 'package:flutter/material.dart';
import 'package:couchsurfing_test/modules/home/presentation/bloc/post_bloc/post_bloc.dart';
import 'package:couchsurfing_test/modules/home/presentation/widget/post_list_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Today",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BlocBuilder<PostBloc, PostState>(
            bloc: PostBloc()..add(GetPostEvent()),
            builder: (context, state) {
              if (state is PostInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is PostLoaded) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    final post = state.posts[index];
                    return PostListWidget(
                      post: post,
                    );
                  },
                );
              }
              return const Column(
                children: [
                  Text("We're sorry, something went woring try later"),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
