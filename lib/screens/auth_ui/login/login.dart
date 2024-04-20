import 'package:e_com2/constants/constants.dart';
import 'package:e_com2/constants/routes.dart';
import 'package:e_com2/firebase_helper/firebase_helper_auth.dart';
import 'package:e_com2/screens/home/home.dart';
import 'package:e_com2/screens/sign_up/sign_up.dart';
import 'package:e_com2/widgets/primary_button/primary_button.dart';
import 'package:e_com2/widgets/top_titles/top_titles.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email=TextEditingController();
   TextEditingController password=TextEditingController();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
                subtitle: "Welcome Back to E Commerce App", title: "Login"),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: isShowPassword, //for hiddern a pssword
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.password,
                ),
                suffixIcon: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () async {
              bool isValidated =  loginValidation(email.text, password.text);
              if (isValidated){
                FirebaseAuthHelper.instance.login(email.text, password.text, context);
                if(islogined){
                  Routes.instance.pushAndRemoveUntil(widget: Home(), context: context);
                }
              }
              },
            ),
            const SizedBox(
              height: 26,
            ),
            const Center(child: Text("Don't have an account?")),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  Routes.instance.push(
                    widget: const SignUp(),
                    context: context
                  );
                },
                child: Text(
                  "Create an aacount",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
