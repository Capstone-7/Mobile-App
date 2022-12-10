import 'package:flutter/material.dart';
import 'package:payoll/views/change_password_screen/for_after_login_register/widgets/app_bar_after_login_register.dart';
import 'package:payoll/views/otp_screen/for_after_login_register/views/otp_after_login_register_screen.dart';
import '../../../../utils/constant.dart';
import '../widgets/change_password_after_login_register_button.dart';

class ChangePasswordAfterLoginRegisterScreen extends StatefulWidget {
  static const String routeName = 'change-password-after-login-after-screen';

  const ChangePasswordAfterLoginRegisterScreen({super.key});

  @override
  State<ChangePasswordAfterLoginRegisterScreen> createState() =>
      _ChangePasswordAfterLoginRegisterScreenState();
}

class _ChangePasswordAfterLoginRegisterScreenState
    extends State<ChangePasswordAfterLoginRegisterScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newPasswordConfrimController =
      TextEditingController();
  bool _showHideOldPass = true;
  bool _showHideNewPass = true;
  bool _showHideNewPassConfrim = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarAfterLoginRegister(context),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Kata sandi Lama',
                        style: TextStyle(
                            fontSize: Constant.fontSemiRegular,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        obscureText: _showHideOldPass,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: _showHideOldPass
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => {
                                setState(
                                  () {
                                    _showHideOldPass = !_showHideOldPass;
                                  },
                                )
                              },
                            ),
                            filled: true,
                            fillColor: const Color(
                                Constant.greyTextFieldLoginRegister),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            hintText: '1234********',
                            hintStyle: const TextStyle(),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            contentPadding: const EdgeInsets.all(12.0),
                            border: const OutlineInputBorder(
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
                      const Text(
                        'Kata sandi Baru',
                        style: TextStyle(
                            fontSize: Constant.fontSemiRegular,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        obscureText: _showHideNewPass,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: _showHideNewPass
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => {
                                setState(
                                  () {
                                    _showHideNewPass = !_showHideNewPass;
                                  },
                                )
                              },
                            ),
                            filled: true,
                            fillColor: const Color(
                                Constant.greyTextFieldLoginRegister),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            hintText: '1234********',
                            hintStyle: const TextStyle(),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            contentPadding: const EdgeInsets.all(12.0),
                            border: const OutlineInputBorder(
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
                      const Text(
                        'Konfirmasi Kata sandi Baru',
                        style: TextStyle(
                            fontSize: Constant.fontSemiRegular,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      TextFormField(
                        obscureText: _showHideNewPassConfrim,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: _showHideNewPassConfrim
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => {
                                setState(
                                  () {
                                    _showHideNewPassConfrim =
                                        !_showHideNewPassConfrim;
                                  },
                                )
                              },
                            ),
                            filled: true,
                            fillColor: const Color(
                                Constant.greyTextFieldLoginRegister),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            hintText: '1234********',
                            hintStyle: const TextStyle(),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(
                                        Constant.greyOutlineBorderTextField))),
                            contentPadding: const EdgeInsets.all(12.0),
                            border: const OutlineInputBorder(
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
                    ],
                  )),
            ),
            ChangePasswordAfterLOginRegisterButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, OtpAfterLoginRegisterScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
