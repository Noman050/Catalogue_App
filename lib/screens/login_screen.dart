import 'package:flutter/material.dart';
import 'package:catalogue/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String wellcome = "Login TO Continue";
  String well = "Welcome! ";
  String name = "";
  bool changeButton = false;

  bool _authenticate() {
    if (myController1.text == "nomi" && myController2.text == "123") {
      return true;
    } else {
      return false;
    }
  }

  _notAuthencated() {
    setState(() {
      wellcome = "Your User Name or Password is Incorrect Try Re-Entring!";
      name = "";
      well = "";
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "lib/assets/images/loginIMAGE.png",
              fit: BoxFit.cover,
              scale: a.aspectRatio,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$well $name $wellcome",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 300,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: myController1,
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    controller: myController2,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      if (_authenticate()) {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(
                          const Duration(seconds: 1),
                        );
                        // ignore: use_build_context_synchronously
                        Navigator.of(context)
                            .pushReplacementNamed(MyRoutes.homeRoute);
                      } else {
                        _notAuthencated();
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      child: changeButton
                          ? const Icon(Icons.done)
                          : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     shape: const StadiumBorder(),
                  //     minimumSize: const Size(150, 40),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.of(context)
                  //         .pushReplacementNamed(MyRoutes.homeRoute);
                  //   },
                  //   child: const Text(
                  //     "Login",
                  //     style: TextStyle(fontSize: 18),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
