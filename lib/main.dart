// ignore_for_file: public_member_api_docs

import 'package:christmassy/firebase_options.dart';
import 'package:christmassy/google_auth_screen.dart';
import 'package:christmassy/home_screen.dart';
import 'package:christmassy/login/phone_auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  // Only web is supported for now.
  if (!kIsWeb) {
    return;
  }

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders(
    [
      GoogleProvider(
        clientId: 'project-507070865399',
      ),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Christmassy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        GoogleAuthScreen.routeName: (context) => const GoogleAuthScreen(),
        PhoneAuthScreen.routeName: (context) => const PhoneAuthScreen(),
      },
    );
  }
}
