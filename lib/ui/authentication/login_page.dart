import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../driver/pages/home_driver_page.dart';
import '../resto/pages/main_page_resto.dart';
import '../user/pages/main_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          SizedBox(
            height: 250.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Assets.images.logo.image(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28.0)),
                child: ColoredBox(
                  color: AppColors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        const SpaceHeight(8.0),
                        const Text(
                          'Masukkan Kredensial akun untuk melanjutkan  masuk dalam aplikasi',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColors.gray3,
                          ),
                        ),
                        const SpaceHeight(14.0),
                        CustomTextField(
                          controller: emailController,
                          label: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: AppColors.primary,
                          ),
                        ),
                        const SpaceHeight(18.0),
                        CustomTextField(
                          controller: passwordController,
                          label: 'Password',
                          obscureText: true,
                          prefixIcon: const Icon(
                            Icons.key,
                            color: AppColors.primary,
                          ),
                        ),
                        const SpaceHeight(33.0),
                        Button.filled(
                          onPressed: () =>
                              context.pushReplacement(const MainPageCustomer()),
                          label: 'Sign In',
                        ),
                        const SpaceHeight(16.0),
                        Button.filled(
                          onPressed: () =>
                              context.pushReplacement(const MainPageResto()),
                          label: 'Sign In as Resto',
                        ),
                        const SpaceHeight(16.0),
                        Button.filled(
                          onPressed: () =>
                              context.pushReplacement(const HomeDriverPage()),
                          label: 'Sign In as Driver',
                        ),
                        const SpaceHeight(16.0),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Belum memiliki akun? ',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: AppColors.gray3,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Daftar',
                                  style: const TextStyle(
                                    color: AppColors.primary,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () =>
                                        context.push(const RegisterPage()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
