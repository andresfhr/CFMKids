import 'package:flutter/material.dart';

class SignupWid extends StatelessWidget {
  const SignupWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg1920x1080.jpg'),
                fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create a new account",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 75, 74, 74)),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          makeInput(label: "Email"),
                          makeInput(label: "Password", obscureText: true),
                          makeInput(
                              label: "Confirm password", obscureText: true)
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: MaterialButton(
                            key: const Key('signupBtn'),
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Login Button Pressed"),
                                  duration: Duration(milliseconds: 300),
                                ),
                              );
                            },
                            color: Colors.blueGrey,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Text("Sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18)))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Already have an account?"),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            )),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
