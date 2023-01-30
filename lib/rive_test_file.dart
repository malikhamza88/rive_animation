import 'package:flutter/material.dart';
import 'package:flutter_rive_lag_issue/rive_animation_provider.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationProvider = Provider.of<RiveAnimationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Rive Animation Lag'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: RiveAnimation.asset(
          'assets/rive/mascot_character.riv',
          onInit: animationProvider.onLoginScreenInit,
        ),
      ),
    );
  }
}
