
import 'package:chat/screens/register_screen.dart';
import 'package:chat/screens/sigin_scree.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({Key? key}) : super(key: key);
  static String screenRoute = 'welocme_screen';

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Image.asset('images/logo.png'),
                  ),
                  const Text(
                    'MessageMe',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff2e386b),
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 30),
                  MyButton(
                    color: Colors.yellow[900]!,
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.screenRoute);
                    },
                    title: 'Signin',
                  ),
                  MyButton(
                    color: Colors.blue[900]!,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RegistrationScreen.screenRoute);
                    },
                    title: 'Register',
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
