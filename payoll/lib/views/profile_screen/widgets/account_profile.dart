import 'package:flutter/material.dart';
import '../../../utils/constant.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profil.jpg'),
      ),
      title: Text(
        'George Lee',
        style: TextStyle(
            fontSize: Constant.fontTitleProfile, fontWeight: FontWeight.w500),
      ),
      subtitle: Text('Lee.George@mail.com',
          style: TextStyle(fontSize: Constant.fontSemiBig)),
    );
  }
}
