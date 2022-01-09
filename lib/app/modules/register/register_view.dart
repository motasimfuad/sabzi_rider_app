import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabzi_rider_app/app/modules/login/login_view.dart';
import 'package:sabzi_rider_app/app/widgets/k_button.dart';
import 'package:sabzi_rider_app/app/widgets/k_dropdown.dart';
import 'package:sabzi_rider_app/app/widgets/k_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 30.0,
            right: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.grey.shade700,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // header
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          KSmallButton(
                            text: 'Sign in',
                            onPressed: () {
                              Get.to(
                                () => const LoginView(),
                              );
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Create your free account!',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 40),
                      const KTextField(
                        labelText: 'First name',
                        isRequired: true,
                      ),
                      const KTextField(
                        labelText: 'Last name',
                        isRequired: true,
                      ),
                      const KTextField(
                        labelText: 'Email address',
                        isRequired: true,
                      ),
                      const KTextField(
                        labelText: 'Phone Number',
                      ),
                      const KTextField(
                        labelText: 'Address',
                      ),
                      const KTextField(
                        labelText: 'Password',
                        isRequired: true,
                        isPassword: true,
                      ),
                      const KTextField(
                        labelText: 'Confirm password',
                        isRequired: true,
                        isPassword: true,
                      ),
                      KDropdown(
                        labelText: 'Select vehicle type',
                        items: const ['Item 1', 'Item 2'],
                      ),
                      Checkbox(
                        value: true,
                        onChanged: (_) {},
                        checkColor: Colors.red,
                        activeColor: Colors.grey.shade200,
                        // shape: OutlinedBorder(
                        //   side: BorderSide(
                        //     width: 1,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                      ),
                      const SizedBox(height: 10),
                      KPrimaryButton(
                        text: 'Sign Up',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
