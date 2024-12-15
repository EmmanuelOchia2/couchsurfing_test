import 'package:couchsurfing_test/modules/home/domain/model/user_model.dart';
import 'package:couchsurfing_test/modules/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:couchsurfing_test/modules/home/presentation/posts_view.dart';
import 'package:couchsurfing_test/modules/home/presentation/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          body: IndexedStack(
            index: state.index,
            children: [
              const PostView(),
              ProfileView(
                userModel: _userModel,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            onTap: (index) {
              final bloc = context.read<HomeBloc>();
              bloc.add(SetPageEvent(index: index));
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  //TODO: the best way would be to fetch the current user and store it in the
  //runtime to be available in all the app
  final UserModel _userModel =
      const UserModel(lastname: 'Ochia', name: 'Emmanuel');
}
