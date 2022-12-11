import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class EmptyTransactionHistory extends StatelessWidget {
  const EmptyTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Text(
      'Tidak ada pembaharuan data',
      style: TextStyle(color: Color(Constant.lineOr)),
    )));
  }
}
