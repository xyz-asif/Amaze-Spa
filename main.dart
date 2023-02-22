

import 'package:amazespa/home.dart';
import 'package:amazespa/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';


void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
   runApp(
  
  MaterialApp(
    
      home: StreamBuilder(
        stream:FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        if(snapshot.hasData){
          return  HomeScreen();
        }
        return const RegisterScreen();
      },),
    ));}



