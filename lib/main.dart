import 'package:couchsurfing_test/modules/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:couchsurfing_test/modules/home/presentation/bloc/post_bloc/post_bloc.dart';
import 'package:couchsurfing_test/modules/home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PostBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(),
          )
        ],
        child: const HomeView(),
      ),
    );
  }
}
