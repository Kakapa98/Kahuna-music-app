import 'package:flutter/material.dart';
import 'package:kahuna/screens/widgets/customized_button.dart';
import 'package:kahuna/screens/widgets/customized_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        })),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Forgot the password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Worry not it occurs to all of us. We will send the link to reset the password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              CustomizedTextField(
                myController: _emailController,
                hintText: "Enter your Email",
                isPassword: false,
              ),
              CustomizedButton(
                buttonText: "Send Code",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
              padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
              child: Row(
                children: [
                  const Text(
                    "Remember Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: const Text(
                      "LogIn",
                      style: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
