import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _value = 2;
  bool donkey = true;
  @override
  Widget build(BuildContext context) {
    // SigninController signinController = Get.put(SigninController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Already\n have an\n account",
                textScaleFactor: 1.7,
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXV31Q8HdpZ8Gv5MEbyIDJvL4dZ7gNoyOeOA&usqp=CAU"),
              )
            ],
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/dashboard");
                        },
                        child: Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = _value;
                              });
                            }),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Create an account  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: 'Are you new?',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (val) {
                              setState(() {
                                _value = _value;
                              });
                            }),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already. sign-In?',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomFormField(
                    icon: Icons.person,
                    title: 'Email Address',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: TextForm.horizontalScreenPadding,
                        vertical: TextForm.verticalscreenPadding),
                    child: TextFormField(
                      obscureText: donkey,
                      validator: (value) => value!.isEmpty ? "Required" : null,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              donkey = !donkey;
                              setState(() {});
                              print(donkey);
                            },
                            icon: Icon(
                              donkey == false
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            )),
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock,

                          // color: const Color(0xff1a2d40),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/forgetpasswordpage");
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Forget password")),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, "/dashboard");
                            },
                            child: const Text('Sign In'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "By continuing,you agree to Tailor Conditions of Use and Privacy Notice.",
                      textScaleFactor: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class CustomFormField extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const CustomFormField({
    this.title,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: TextForm.horizontalScreenPadding,
              vertical: TextForm.verticalscreenPadding),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "$title",
              prefixIcon: Icon(
                icon,
                // color: const Color(0xff1a2d40),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextForm {
  static double horizontalScreenPadding = 20.0;
  static double verticalscreenPadding = 10.0;
  Color primaryColor = const Color(0xff1a2d40);
}
