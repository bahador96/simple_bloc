import 'package:flutter/material.dart';
import 'package:flutter_basic_flutter_application/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_basic_flutter_application/bloc/hoem_bloc.dart';
import 'package:flutter_basic_flutter_application/ui/counter_screen.dart';
import 'package:flutter_basic_flutter_application/ui/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc(),
        child: HoemScreeen(),
      ),
      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: CounterScreen(),
      // ),
    );
  }
}
