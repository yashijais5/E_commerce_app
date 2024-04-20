import 'package:e_com2/constants/routes.dart';
import 'package:e_com2/screens/home/home.dart';
import 'package:e_com2/widgets/primary_button/primary_button.dart';
import 'package:e_com2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  subtitle: "Welcome Back to E Commerce App", title: "SignUp"),
              const SizedBox(
                height: 24,
              ),
               TextFormField(
                decoration: const InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(
                    Icons.person_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
               TextFormField(
                keyboardType: TextInputType.emailAddress,
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
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  prefixIcon: Icon(
                    Icons.phone_outlined,
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
                title: "Create an aacount",
                onPressed: () {
                  Routes.instance.pushAndRemoveUntil(widget: const Home(), context: context);
                },
              ),
              const SizedBox(
                height: 26,
              ),
              const Center(child: Text("I have already an account?")),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Theme.of(context).primaryColor),
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
