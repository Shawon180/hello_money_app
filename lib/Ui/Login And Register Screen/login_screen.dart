import 'package:flutter/material.dart';
import 'package:hello_money_app/Ui/Login%20And%20Register%20Screen/forget_password_screen.dart';
import 'package:hello_money_app/Ui/Login%20And%20Register%20Screen/register_screen.dart';


import '../../Const/const.dart';
import '../NavBar Screen/nav_bar_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          'Login',
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
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.bottomRight,
                  child:  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()));
                    },
                    child: Text(
                      'Forget Password?',
                      style: kTextStyle.copyWith(color: const Color(0xff3C7EEE), fontWeight: FontWeight.bold),
                    ),
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

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const NavHomeScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Login', style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold)),
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
                      'Don’t have an account?',
                      style: kTextStyle.copyWith(color: kSubTitleColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                      },
                      child: Text(
                        'Register',
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
