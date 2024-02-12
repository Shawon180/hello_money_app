import 'package:flutter/material.dart';

import '../../Const/const.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          'Register',
          style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  style: kTextStyle.copyWith(color: kWhite),
                  decoration: kInputDecoration.copyWith(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: kSubSubTitleColor,
                    ),
                    hintText: "Name",
                    hintStyle: kTextStyle.copyWith(color: kWhite),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  style: kTextStyle.copyWith(color: kWhite), // Optional
                  decoration: kInputDecoration.copyWith(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: kSubSubTitleColor,
                    ),
                    hintText: "Password",
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Register', style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: kTextStyle.copyWith(color: kSubTitleColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: kTextStyle.copyWith(color: const Color(0xff3C7EEE), fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
