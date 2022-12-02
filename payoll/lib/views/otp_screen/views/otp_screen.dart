import 'package:flutter/material.dart';
import 'package:payoll/views/change_password_screen/for_forgot_password/views/change_password_forgot_password_screen.dart';
import 'package:payoll/views/otp_screen/widgets/otp_input.dart';
import '../../../utils/constant.dart';
import '../../login_screen/views/login_screen.dart';
import '../widgets/otp_app_bar.dart';
import '../widgets/otp_send_button.dart';

class OtpScreen extends StatefulWidget {
  static const String routeName = 'otp-screen';
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: otpAppBar(context),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Kode OTP telah kami kirimkan ke F*********@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Constant.fontSemiRegular)),
            SizedBox(
              height: size.height * 0.036,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(),
                OtpInput(),
                OtpInput(),
                OtpInput(),
                OtpInput(),
                OtpInput(),
              ],
            ),
            SizedBox(
                        height: size.height * 0.020,
                      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tidak mendapat kode?'),
                TextButton(onPressed: (){}, child: Text('Kirim Ulang', style: TextStyle(color: Color(Constant.mainColor)),)),
              ],
            ),
                      OtpVerificationButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, ChangePasswordForgotPasswordScreen.routeName);
                        },
                      ),
          ],
        ),
      ),
    );
  }
}


