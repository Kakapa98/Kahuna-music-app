import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kahuna/screens/signin_screen.dart';
import 'package:kahuna/screens/widgets/customized_button.dart';
import 'package:kahuna/screens/widgets/customized_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover)
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              child: Text("Hello! \nRegister to get started!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            
            CustomizedTextField(
              myController: _usernameController, 
              hintText: "Enter your Username", 
              isPassword: false,
              ),
            CustomizedTextField(
              myController: _emailController, 
              hintText: "Enter your Email", 
              isPassword: false,
              ),
            CustomizedTextField(
              myController: _passwordController, 
              hintText: "Enter your Password", 
              isPassword: true,
              ),
            CustomizedTextField(
              myController: _confirmPasswordController, 
              hintText: "Comfirm your Password", 
              isPassword: true,
              ),
              CustomizedButton(
              buttonText: "SignUp",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => const SignInScreen()));
              },
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.height*0.15,
                    color: Colors.grey,
                  ),
                  const Text("Or SignUp with", ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.height*0.18,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebookF, 
                        color: Colors.white,),
                      onPressed: () {},
                      ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.google, 
                        color: Colors.white,
                        ),
                      onPressed: () {},
                      ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.apple, 
                        color: Colors.white,
                        ),
                      onPressed: () {},
                      ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 100,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
              child: Row(
                children: [
                  const Text("Already have an acount?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (_) => const SignInScreen()));
                    },
                    child: const Text(" SignIn Now",
                      style: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ]),
        ),
      ),
    ); 
  }
}
