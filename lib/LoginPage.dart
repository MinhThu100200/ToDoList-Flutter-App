import 'package:flutter/material.dart';
import 'Forgotpassword.dart';
import 'package:flutter_svg/svg.dart';
import 'Onboarding.dart';
import 'package:newtotolist/theme/colors.dart';
import "router.dart" as router;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'avenir'),
        home: loginPage(),
        onGenerateRoute: router.generateRoute);
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _email = TextEditingController();
  bool _validateEmail = false;
  final _password = TextEditingController();
  bool _validatePassword = false;
  bool _statePassword = true;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: openOnboarding,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  height: (size.height - 60) * 0.5,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              child: Image.asset(
                                "asset/image/chayoo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ]),
                      Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextField(
                                  cursorColor: black.withOpacity(0.5),
                                  style: TextStyle(fontSize: 15),
                                  cursorHeight: 20,
                                  controller: _email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Nhập email',
                                    labelStyle: TextStyle(color: Colors.black),
                                    //hintText: "Email",
                                    border: InputBorder.none,
                                    errorText: _validateEmail
                                        ? 'Email không đươc để trống'
                                        : null,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextField(
                                  cursorColor: black.withOpacity(0.5),
                                  controller: _password,
                                  style: TextStyle(fontSize: 15),
                                  cursorHeight: 20,
                                  obscureText: _statePassword,
                                  decoration: InputDecoration(
                                    labelText: 'Nhập mật khẩu',
                                    labelStyle: TextStyle(color: Colors.black),

                                    //hintText: "Email",
                                    border: InputBorder.none,
                                    errorText: _validatePassword
                                        ? 'Mật khẩu không đươc để trống'
                                        : null,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _statePassword
                                          ? _statePassword = false
                                          : _statePassword = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: black.withOpacity(0.5),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: openForgotPassword,
                            child: Text(
                              "Quên mật khẩu?",
                              style: TextStyle(
                                  fontSize: 13,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                // login button and social login
                Container(
                    height: (size.height - 60) * 0.5,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _email.text.isEmpty
                                  ? _validateEmail = true
                                  : _validateEmail = false;
                            });
                            setState(() {
                              _password.text.isEmpty
                                  ? _validatePassword = true
                                  : _validatePassword = false;
                            });
                            if (!_password.text.isEmpty &&
                                !_email.text.isEmpty) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/root_app", (route) => false);
                            }
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_forward_sharp,
                                  color: white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Đăng nhập",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Divider(
                                thickness: 0.8,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Hoặc"),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Divider(
                                thickness: 0.8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: black.withOpacity(0.1))),
                              child: Center(
                                child: SvgPicture.asset(
                                  "asset/image/google_icon.svg",
                                  width: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: black.withOpacity(0.1))),
                              child: Center(
                                child: SvgPicture.asset(
                                  "asset/image/facebook_icon.svg",
                                  width: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bạn chưa có tài khoản?",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Đăng ký",
                                style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }

  void openOnboarding() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
