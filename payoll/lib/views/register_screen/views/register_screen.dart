import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/status_success_screen/status_success_register_screen/views/status_success_register_screen.dart';

import '../../login_screen/views/login_screen.dart';
import '../widgets/register_button.dart';
import '../widgets/register_button_google.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'registerscreen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.045,
            ),
            Center(
                child: Text(
              'Daftar',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 23.0),
            )),
            Center(
                child: Text('Silahkan mendaftarkan akun anda disini',
                    style: TextStyle(fontSize: Constant.fontRegular))),
            SizedBox(
              height: size.height * 0.025,
            ),
            Expanded(
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Nama Lengkap',
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
                            hintText: 'George lee',
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
                        height: size.height * 0.030,
                      ),
                      RegisterButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, StatusSuccessRegisterScreen.routeName);
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      Center(
                          child: Text(
                        'Dengan mendaftar, saya telah menyetujui',
                        style: TextStyle(fontSize: Constant.fontSmall),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Ketentuan Layanan',
                                      style: TextStyle(
                                          fontSize: Constant.fontSmall,
                                          color: Color(Constant.policyPrivacy))))
                            ],
                          ),
                          Text('dan',
                              style: TextStyle(fontSize: Constant.fontSmall)),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Kebijakan Kami',
                                      style: TextStyle(
                                          fontSize: Constant.fontSmall,
                                          color: Color(Constant.policyPrivacy))))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.002,
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
                        height: size.height * 0.020,
                      ),
                      RegisterGoogle(
                        onPressed: () {},
                      ),
                    ],
                  )),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: TextStyle(fontSize: Constant.fontRegular),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, LoginScreen.routeName);
                    },
                    child: Text('Masuk',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(Constant.mainColor),
                          fontSize: Constant.fontRegular,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
