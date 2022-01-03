import 'package:flutter/material.dart';
import 'package:sabzi_rider_app/app/widgets/button.dart';

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sign In'),
                  Button(
                    text: 'Sign Up',
                    btnColor: Colors.orange.shade100,
                    btnHeight: 37,
                    textColor: Colors.orange.shade600,
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
