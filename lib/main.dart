import 'package:counter_bloc/home_page.dart';
import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/page_bloc/counter_bloc_page.dart';
import 'package:counter_bloc/page_cuibt/counter_cubit_page.dart';
import 'package:counter_bloc/page_cuibt/cubit/counter_cubit.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/bloc': (context) => BlocProvider(
              create: (context) => CounterBloc(),
              child: CounterBlocPage(),
            ),
        '/cubit': (context) => BlocProvider(
              create: (context) => CounterCubit(),
              child: const CounterCubitPage(),
            ),
        // '/counter_bloc': (context) => const CounterBloc(),
      },
      home: const HomePage(),
    );
  }
}
