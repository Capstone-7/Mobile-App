import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';

class OtpInputAfterLoginRegister extends StatelessWidget {
  final TextEditingController? controller;
  final bool? autofocus;
  const OtpInputAfterLoginRegister({super.key, this.controller, this.autofocus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: TextField(
        autofocus: autofocus ?? true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(Constant.greyOutlineBorderTextField))),
            filled: true,
            fillColor: Color(Constant.greyTextField),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(Constant.greyOutlineBorderTextField))),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            counterText: '',
            hintStyle: TextStyle(
              color: Colors.black,
            )),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}