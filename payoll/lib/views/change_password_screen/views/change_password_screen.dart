import 'package:flutter/material.dart';
import 'package:payoll/views/forgot_password_screen/views/forgot_password.dart';
import 'package:payoll/views/login_screen/widgets/login_button_google.dart';
import 'package:payoll/views/login_screen/widgets/login_button.dart';
import 'package:payoll/views/register_screen/views/register_screen.dart';
import 'package:payoll/views/status_success/status_success_forgot_password_screen/views/status_success_forgot_password_screen.dart';

import '../../../utils/constant.dart';
import '../../login_screen/views/login_screen.dart';
import '../widgets/change_password_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String routeName = 'change-password-screen';
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool checkBox = false;
  bool _showHidePass = true;
  bool _showHidePassConfrim = true;
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
              'Ubah Kata Sandi',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 23.0),
            )),
             SizedBox(
              height: size.height * 0.018,
            ),
            Center(
                child: Text('Silahkan masukan email anda untuk melakukan ubah kata sandi',
                    textAlign: TextAlign.center,
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
                        'Kata Sandi',
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
                                    BorderSide(color: Color(Constant.greyTextField))),
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
                      Text(
                        'Konfirmasi Kata Sandi',
                        style: TextStyle(
                            fontSize: Constant.fontRegular, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        obscureText: _showHidePassConfrim,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: _showHidePassConfrim
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: () => {
                                setState(
                                  () {
                                    _showHidePassConfrim =
                                        !_showHidePassConfrim;
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
                                    BorderSide(color: Color(Constant.greyTextField))),
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
                      ChangePasswordButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, StatusSuccessForgotPasswordScreen.routeName);
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                    ],
                  )),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: TextStyle(),
                ),
                TextButton(
                    onPressed: () {
                       Navigator.pushReplacementNamed(
                          context, LoginScreen.routeName);
                    },
                    child: Text('Masuk',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF396EB0))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
