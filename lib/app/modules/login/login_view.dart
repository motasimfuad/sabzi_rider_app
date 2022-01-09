import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabzi_rider_app/app/core/values/colors.dart';
import 'package:sabzi_rider_app/app/modules/register/register_view.dart';
import 'package:sabzi_rider_app/app/widgets/k_button.dart';
import 'package:sabzi_rider_app/app/widgets/k_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  KSmallButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Get.to(
                        () => const RegisterView(),
                      );
                    },
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome back, Rider!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 40),
              const KTextField(
                labelText: 'Email Address',
              ),
              const KTextField(
                labelText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              KPrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}
