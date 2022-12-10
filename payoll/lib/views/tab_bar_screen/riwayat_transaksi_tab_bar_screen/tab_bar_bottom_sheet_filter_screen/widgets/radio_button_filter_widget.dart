import 'package:flutter/material.dart';
import 'package:getwidget/components/radio/gf_radio.dart';
import '../../../../../utils/constant.dart';

class RadioButtonFilterWidget extends StatefulWidget {
  const RadioButtonFilterWidget({super.key});

  @override
  State<RadioButtonFilterWidget> createState() =>
      _RadioButtonFilterWidgetState();
}

class _RadioButtonFilterWidgetState extends State<RadioButtonFilterWidget> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            GFRadio(
              size: 28.0,
              activeBorderColor: const Color(Constant.mainColor),
              radioColor: const Color(Constant.mainColor),
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(
              width: size.width * 0.015,
            ),
            const Text('Berhasil',
                style: TextStyle(fontSize: Constant.fontSemiBig)),
          ],
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        Row(
          children: [
            GFRadio(
              size: 28.0,
              activeBorderColor: const Color(Constant.mainColor),
              radioColor: const Color(Constant.mainColor),
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(
              width: size.width * 0.015,
            ),
            const Text(
              'Pending',
              style: TextStyle(fontSize: Constant.fontSemiBig),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        Row(
          children: [
            GFRadio(
              size: 28.0,
              activeBorderColor: const Color(Constant.mainColor),
              radioColor: const Color(Constant.mainColor),
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(
              width: size.width * 0.015,
            ),
            const Text(
              'Dibatalkan',
              style: TextStyle(fontSize: Constant.fontSemiBig),
            ),
          ],
        ),
      ],
    );
  }
}
