import 'package:flutter/material.dart';

class SaveEditAccountButton extends StatelessWidget {
  const SaveEditAccountButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(12.0),
              backgroundColor: Color(0xFF396EB0),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          onPressed: onPressed,
          child: Text(
            'Simpan'.toUpperCase(),
          )),
    );
  }
}
