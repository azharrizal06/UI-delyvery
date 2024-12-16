import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 200),
      () => context.pushReplacement(const LoginPage()),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Center(
          child: Assets.images.logo.image(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100.0,
        child: Align(
          alignment: Alignment.center,
          child: Assets.images.logoCwb.image(width: 96.0),
        ),
      ),
    );
  }
}
