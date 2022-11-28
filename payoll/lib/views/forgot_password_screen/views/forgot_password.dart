import 'package:flutter/material.dart';
import 'package:payoll/views/forgot_password_screen/widgets/forgot_password_app_bar.dart';
import 'package:payoll/views/otp_screen/views/otp_screen.dart';

import '../../../utils/constant.dart';
import '../../login_screen/views/login_screen.dart';
import '../widgets/forgot_password_send_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = 'forgot-password-screen';
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool checkBox = false;
  bool _showHidePass = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: forgotPasswordAppBar(context),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Silahkan masukan email anda untuk melakukan ubah kata sandi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Constant.fontSemiRegular)),
            SizedBox(
              height: size.height * 0.036,
            ),
            Expanded(
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF7F7F7),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE9EBEF))),
                            hintText: 'mail@mail.com',
                            hintStyle: TextStyle(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE9EBEF))),
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
                        height: size.height * 0.036,
                      ),
                      ForgotPasswordSendButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, OtpScreen.routeName);
                        },
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


