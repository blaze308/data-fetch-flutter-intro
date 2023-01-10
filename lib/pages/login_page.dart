// import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:my_second_flutter_app/pages/main.dart';
import 'package:my_second_flutter_app/utils/constants.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Login Page",
        //       style: GoogleFonts.kanit(
        //         color: Colors.white,
        //         fontSize: 28,
        //         fontWeight: FontWeight.w500,
        //         letterSpacing: 0.5,
        //       )),
        //   elevation: 30,
        //   backgroundColor: const Color.fromARGB(255, 66, 154, 79),
        // ),
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/image.jpeg",
          fit: BoxFit.cover,
          color: Colors.black54.withOpacity(0.5),
          colorBlendMode: BlendMode.darken,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              // validator: (s) {},
                              controller: _usernameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  labelText: "Email",
                                  hintText: "enter email",
                                  icon: Icon(Icons.email)),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              // validator: (s) {},
                              controller: _passwordController,
                              // keyboardType: TextInputType.visiblePassword,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: "Password",
                                  hintText: "enter password",
                                  icon: Icon(Icons.password)),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () {
                                Constants.prefs?.setBool("loggedIn", true);
                                formKey.currentState?.validate();
                                // another approach
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => HomePage()));

                                //simpler method
                                Navigator.pushReplacementNamed (
                                    context, HomePage.routeName);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 87, 186, 87),
                                  elevation: 10,
                                  shadowColor:
                                      const Color.fromARGB(255, 109, 113, 107),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  minimumSize: const Size(80, 35)),
                              child: Text("Sign In",
                                  style: GoogleFonts.josefinSans(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 0.5)),
                            ),
                          ]),
                    )),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
