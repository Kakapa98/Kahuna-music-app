import 'package:flutter/material.dart';
import 'package:kahuna/screens/signin_screen.dart';
import 'package:kahuna/screens/signup_screen.dart';
import 'package:kahuna/screens/widgets/customized_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/bg.png"),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
                height: 130,
                width: 180,
                child: Image(
                  image: AssetImage("assets/lg.png"),
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 100,
            ),
            CustomizedButton(
              buttonText: "SignIn",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignInScreen()));
              },
            ),
            CustomizedButton(
              buttonText: "SignUp",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignUpScreen()));
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              
              child: Text(
                "Continue as a guest",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
