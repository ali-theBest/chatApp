
import 'package:chat/screens/chat_screen.dart';
import 'package:chat/screens/sigin_scree.dart';
import 'package:chat/screens/welcoms_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/register_screen.dart';
import 'screens/splash_screen.dart';

void main() async {  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chatting app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const RegistrationScreen(),
      initialRoute:_auth.currentUser !=null ?ChatScreen.screenRoute: MyCustomSplashScreen.screenRoute,
      routes: {
        MyCustomSplashScreen.screenRoute:(context) => const MyCustomSplashScreen(),
        WelcomScreen.screenRoute: (context) => const WelcomScreen(),
        SignInScreen.screenRoute: (context) => const SignInScreen(),
        RegistrationScreen.screenRoute: (context) => const RegistrationScreen(),
        ChatScreen.screenRoute: (context) => const ChatScreen(),
      },
    );
  }
}
