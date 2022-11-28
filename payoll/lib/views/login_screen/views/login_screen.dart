import 'package:flutter/material.dart';
import 'package:payoll/views/forgot_password_screen/views/forgot_password.dart';
import 'package:payoll/views/login_screen/widgets/login_button_google.dart';
import 'package:payoll/views/login_screen/widgets/login_button.dart';
import 'package:payoll/views/register_screen/views/register_screen.dart';

import '../../../utils/constant.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'loginscreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool checkBox = false;
  bool _showHidePass = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.050,
            ),
            Center(
                child: Text(
              'Selamat Datang',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 23.0),
            )),
            Center(
                child: Text('Silahkan masuk dengan akun anda',
                    style: TextStyle(fontSize: Constant.fontRegular))),
            SizedBox(
              height: size.height * 0.018,
            ),
            Expanded(
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: Constant.fontRegular, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(Constant.greyTextFieldLoginRegister),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(Constant.greyTextField))),
                            hintText: 'mail@mail.com',
                            hintStyle: TextStyle(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(Constant.greyTextField))),
                            contentPadding: EdgeInsets.all(12.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        // validator: (String? value) {
                        //   const String expression = "[a-zA-Z0-9+._%-+]{1,256}"
                        //       "\\@"
                        //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}"
                        //       "("
                        //       "\\."
                        //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}"
                        //       ")+";
                        //   final RegExp regExp = RegExp(expression);
                        //   return !regExp.hasMatch(value!)
                        //       ? "Please, input valid email!"
                        //       : null;
                        // },
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: Constant.fontRegular, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        obscureText: _showHidePass,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: _showHidePass
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: () => {
                                setState(
                                  () {
                                    _showHidePass = !_showHidePass;
                                  },
                                )
                              },
                            ),
                            filled: true,
                            fillColor: Color(Constant.greyTextFieldLoginRegister),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(Constant.greyTextField))),
                            hintText: '1234********',
                            hintStyle: TextStyle(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE9EBEF))),
                            contentPadding: EdgeInsets.all(12.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        // validator: (String? value) {
                        //   if (value!.isEmpty) {
                        //     return 'Please, fill password field!';
                        //   } else {
                        //     return null;
                        //   }
                        // }
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                side: BorderSide(color: Color(0xFFC5C5C5)),
                                value: checkBox,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkBox = value!;
                                  });
                                },
                              ),
                              Text('Ingat saya',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                                  },
                                  child: Text(
                                    'Lupa Kata Sandi?',
                                    style: TextStyle(
                                        color: Color(0xFF396EB0),
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      LoginButton(
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: size.height * 0.001,
                            width: 150.0,
                            color: Color(Constant.lineOr),
                          ),
                          Text(
                            'atau',
                            style: TextStyle(
                                fontSize: Constant.fontRegular, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: size.height * 0.001,
                            width: 150.0,
                            color: Color(Constant.lineOr),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.030,
                      ),
                      LoginGoogle(
                        onPressed: () {},
                      )
                    ],
                  )),
            ),
            Column(
              children: [
                Text(
                  'Belum punya akun?',
                  style: TextStyle(),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RegisterScreen.routeName);
                    },
                    child: Text('Daftar',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(Constant.mainColor))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
