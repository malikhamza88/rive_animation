import 'package:flutter/material.dart';
import 'package:flutter_rive_lag_issue/rive_animation_provider.dart';
import 'package:flutter_rive_lag_issue/rive_test_file.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RiveAnimationProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
