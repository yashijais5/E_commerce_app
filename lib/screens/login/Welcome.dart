import 'package:e_com2/constants/assets_images.dart';
import 'package:e_com2/constants/routes.dart';
import 'package:e_com2/screens/auth_ui/login/login.dart';
import 'package:e_com2/widgets/primary_button/primary_button.dart';
import 'package:e_com2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height:25,
              ),
              Padding(
                padding: const EdgeInsets.only(left:88.0),
                child: const TopTitles(
                    subtitle: "Buy anyItem From Using App ", title: "Welcome"),
              ),
              Center(
                  child: Image.asset(
                AssetsImages.instance.welcomeImage,
                alignment: Alignment.center,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      onPressed: () {
                        
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.facebook,
                        size: 45,
                        color: Colors.blue,
                      )),
                  const SizedBox(width: 12),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      AssetsImages.instance.googleLogo,
                      scale: 24,
                    ),
                  )
                ],
              ),
              SizedBox(height:10),
              PrimaryButton(
                title: "Login",
                onPressed: () {
                  Routes.instance.push( widget: Login(), context: context);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              PrimaryButton(
                title: "Sign Up",
                onPressed: () {},
              ),
            ],
          ),
        ),
    );
  }
}
