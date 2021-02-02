import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/screens/app.dart';
import 'package:health_balance/src/blocs/observer.dart';
import 'package:health_balance/utils/hive_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIOverlays([]);

  await HiveHelper.init();
  Bloc.observer = SimpleBlocObserver();

  runApp(const HealthBalanceApp());
}
