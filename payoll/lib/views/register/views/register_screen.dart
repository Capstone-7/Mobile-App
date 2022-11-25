import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../login/views/login_screen.dart';
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
        child: Form(
            key: formKey,
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                      child: Text(
                    'Daftar',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 23.0),
                  )),
                  Center(
                      child: Text('Silahkan mendaftarkan akun anda disini',
                          style: GoogleFonts.poppins(fontSize: 15.0))),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Text(
                    'Nama Lengkap',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: size.height * 0.018,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: HexColor('#F7F7F7'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                        hintText: 'George lee',
                        hintStyle: GoogleFonts.poppins(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
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
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: size.height * 0.018,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: HexColor('#F7F7F7'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                        hintText: 'mail@mail.com',
                        hintStyle: GoogleFonts.poppins(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
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
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
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
                        fillColor: HexColor('#F7F7F7'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                        hintText: '1234********',
                        hintStyle: GoogleFonts.poppins(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
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
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
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
                                _showHidePassConfrim= !_showHidePassConfrim;
                              },
                            )
                          },
                        ),
                        filled: true,
                        fillColor: HexColor('#F7F7F7'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                        hintText: '1234********',
                        hintStyle: GoogleFonts.poppins(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#E9EBEF'))),
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
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  Center(
                      child: Text(
                    'Dengan mendaftar, saya telah menyetujui',
                    style: GoogleFonts.poppins(fontSize: 15.0),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Ketentuan Layanan',
                                  style: GoogleFonts.poppins(fontSize: 15.0, color: HexColor('#0000A3'))))
                        ],
                      ),
                      Text('dan', style: GoogleFonts.poppins(fontSize: 15.0)),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Kebijakan Kami',
                                  style: GoogleFonts.poppins(fontSize: 15.0, color: HexColor('#0000A3'))))
                        ],
                      ),
                    ],
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
                        color: HexColor('#A9A9A9'),
                      ),
                      Text(
                        'atau',
                        style: GoogleFonts.poppins(
                            fontSize: 15.0, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        height: size.height * 0.001,
                        width: 150.0,
                        color: HexColor('#A9A9A9'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                  RegisterGoogle(
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun?',
                        style: GoogleFonts.poppins(fontSize: 15.0),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: Text('Masuk',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#396EB0'),
                                  fontSize: 15.0,
                                  )))
                    ],
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
