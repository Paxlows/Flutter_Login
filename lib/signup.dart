import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  DateTime? date;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
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
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Image.asset(
                "assets/images/student.png",
                height: 180,
              ),
              Image.asset(
                "assets/images/mainmenu.png",
                height: 180,
              ),
            ]),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Builder(
                builder: (context) => InkWell(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 40,
                    width: 160,
                    child: const Center(
                      child: Text(
                        "Students's Login",
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
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 40,
                  width: 160,
                  child: const Center(
                    child: Text(
                      "Teacher's Login",
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
              )
            ]),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_box_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      labelText: "Full Name",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 25,
                      ),
                      labelText: "Phone Number",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.white),
                      errorStyle: const TextStyle(color: Colors.redAccent),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      icon: const Icon(
                        Icons.event_note,
                        color: Colors.white,
                      ),
                      labelText: 'Date Of Birth',
                      labelStyle: const TextStyle(color: Colors.white),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.white,
                        ),
                        onPressed: (() async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950, 1),
                              lastDate: DateTime.now());
                          if (newDate == null) return;
                          setState(() {
                            date = newDate;
                            _controller.text = date.toString();
                          });
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 25,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.spellcheck,
                        color: Colors.white,
                        size: 25,
                      ),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      width: 160,
                      child: const Center(
                        child: Text(
                          "Sign Up",
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
                      Navigator.pop(
                        context,
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
