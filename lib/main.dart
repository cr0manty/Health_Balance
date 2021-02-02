import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/screens/app.dart';
import 'package:health_balance/src/blocs/observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  runApp(const HealthBalanceApp());
}
