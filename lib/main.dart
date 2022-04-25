import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page/signup.dart';
import 'package:login_page/forgotpass.dart';

void main() => runApp(const Userlogin());

class Userlogin extends StatefulWidget {
  const Userlogin({Key? key}) : super(key: key);

  @override
  State<Userlogin> createState() => _UserloginState();
}

class _UserloginState extends State<Userlogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(13, 17, 23, 1.0),
          body: ListView(
            children: [
              Image.asset(
                "assets/images/userlogin.png",
                height: 350,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Login",
                            style:
                                TextStyle(fontSize: 29, color: Colors.white)),
                      ),
                      const SizedBox(height: 40),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "Phone No",
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white))),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 30)),
                      TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white))),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      Row(
                        children: [
                          const Spacer(),
                          Builder(builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Forgotpass()),
                                );
                              },
                              child: const Text(
                                "Forgot Password?",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 40,
                          width: 160,
                          child: const Center(
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        onTap: () {},
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 30)),
                      Builder(builder: (context) {
                        return RichText(
                          text: TextSpan(
                            text: "Don't have an account?",
                            children: <TextSpan>[
                              TextSpan(
                                text: " Sign Up",
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color.fromARGB(255, 138, 98, 248),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Signup()),
                                    );
                                  },
                              ),
                            ],
                          ),
                        );
                      }),
                      Container(
                        height: 50,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
