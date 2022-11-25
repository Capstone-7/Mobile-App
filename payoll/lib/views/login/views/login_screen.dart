import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:payoll/views/login/widgets/login_button_google.dart';
import 'package:payoll/views/login/widgets/login_button.dart';
import 'package:payoll/views/register/views/register_screen.dart';

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
              height: size.height * 0.040,
            ),
            Center(
                child: Text(
              'Selamat Datang',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 23),
            )),
            Center(
                child: Text('Silahkan masuk dengan akun anda',
                    style: GoogleFonts.poppins(fontSize: 15))),
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
                                borderSide:
                                    BorderSide(color: HexColor('#E9EBEF'))),
                            hintText: 'mail@mail.com',
                            hintStyle: GoogleFonts.poppins(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor('#E9EBEF'))),
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
                                  borderSide:
                                      BorderSide(color: HexColor('#E9EBEF'))),
                              hintText: '1234********',
                              hintStyle: GoogleFonts.poppins(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor('#E9EBEF'))),
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
                                side: BorderSide(color: HexColor('#C5C5C5')),
                                value: checkBox,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkBox = value!;
                                  });
                                },
                              ),
                              Text('Ingat saya',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Lupa Kata Sandi?',
                                    style: GoogleFonts.poppins(
                                        color: HexColor('#396EB0'),
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
                  style: GoogleFonts.poppins(),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
                    },
                    child: Text('Daftar',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: HexColor('#396EB0'))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
