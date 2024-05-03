import 'dart:io';

import 'package:e_com2/constants/theme.dart';
import 'package:e_com2/provider/app_provider.dart';
import 'package:e_com2/screens/account_screen/account_screen.dart';
import 'package:e_com2/screens/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:e_com2/screens/home/home.dart';
import 'package:e_com2/screens/login/Welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
Platform.isAndroid ?
await Firebase.initializeApp(

 
  options: const FirebaseOptions(apiKey: 'AIzaSyA7MFTtsYBM-4pvMJDb9yz9Oo-th36VpmE', appId: '1:60132291693:android:e699685d03fa843daf3b64', messagingSenderId: '60132291693', projectId: 'ecom-ec7dd')): await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var FirebaseAuthHelper;
    return  ChangeNotifierProvider(
      create:(context) => AppProvider() ,
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e_com 2',
      theme: themeData,
      home:Home()
     ),
      );
  }
}

