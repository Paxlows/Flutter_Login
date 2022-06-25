import 'package:flutter/material.dart';
import 'package:login_page/enterotp.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(13, 17, 23, 1.0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
              );
            },
            child: const Icon(Icons.arrow_back // add custom icons also
                ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/forgotpass.png",
                height: 350,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 25,
                      ),
                      labelText: "Email ID",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "We will send an OTP to this Recovery Mail ID",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  Builder(builder: (context) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 40,
                        width: 160,
                        child: const Center(
                          child: Text(
                            "Send OTP",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Enterotp()),
                        );
                      },
                    );
                  }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
