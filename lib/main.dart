import 'package:bolc_architecture/CalcBloc.dart';
import 'package:bolc_architecture/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => CalcBloc(0),
      child: homepage(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
