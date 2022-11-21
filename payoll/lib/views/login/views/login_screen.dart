import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'loginscreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
                child: Text(
              'Selamat Datang',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 23),
            )),
            Center(
                child: Text('silahkan masuk dengan akun anda',
                    style: GoogleFonts.poppins(fontSize: 15))),
            SizedBox(
              height: 25.0,
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: HexColor('#F7F7F7'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                      hintText: 'mail@mail.com',
                      hintStyle: GoogleFonts.poppins(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: HexColor('#F7F7F7'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                      hintText: '1234********',
                      hintStyle: GoogleFonts.poppins(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('#E9EBEF'))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text('Ingat saya'),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text('Lupa Kata Sandi?'))
                      ],
                    )
                  ],
                ),
              ],
            )),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {},
                child: Text(
                  'Masuk',
                  style: GoogleFonts.poppins(),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/google.png',
                        )),
                    Text(
                      ' GOOGLE',
                      style: GoogleFonts.poppins(color: Colors.black),
                    )
                  ],
                )),
            Column(
              children: [
                Text('Belum punya akun?'),
                TextButton(onPressed: () {}, child: Text('Daftar'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
