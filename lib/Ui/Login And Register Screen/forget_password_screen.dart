import 'package:flutter/material.dart';

import '../../Const/const.dart';
import 'login_screen.dart';


class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          'Forget Password',
          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'Reset password link will send to your email.\nCheck your inbox',
                style: kTextStyle.copyWith(color: kSubTitleColor),
              ),
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                controller: emailController,
                style: kTextStyle.copyWith(color: kWhite),
                decoration: kInputDecoration.copyWith(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: kSubSubTitleColor,
                  ),
                  hintText: "Email",
                  hintStyle: kTextStyle.copyWith(color: kWhite),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondlyColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Send', style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
