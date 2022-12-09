import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/profil.jpg'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('George Lee',
                      style: TextStyle(
                          fontSize: Constant.fontTitleProfile,
                          fontWeight: FontWeight.w600),),
                  Text('Lee.George@mail.com',
                        style: TextStyle(fontSize: Constant.fontSemiRegular)),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}









// ListTile(
//       leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profil.jpg'),),
//       title: Text(
//         'George Lee',
//         style: TextStyle(
//             fontSize: Constant.fontTitleProfile, fontWeight: FontWeight.w500),
//       ),
//       subtitle: Text('Lee.George@mail.com',
//           style: TextStyle(fontSize: Constant.fontSemiBig)),
//     );