import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Enterotp extends StatelessWidget {
  const Enterotp({Key? key}) : super(key: key);

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
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                "assets/images/otp.png",
                height: 350,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    "Enter the 5 digit OTP sent to your Number",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  OtpTextField(
                    textStyle: const TextStyle(color: Colors.white),
                    numberOfFields: 5,
                    borderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {},
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      width: 160,
                      child: const Center(
                        child: Text(
                          "Confirm",
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
                    onTap: () {},
                  ),
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
