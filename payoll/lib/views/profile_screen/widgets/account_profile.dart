import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/profile_provider.dart';
import '../../../utils/constant.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(builder: (context, provider, _) {
      final user = provider.profileModel;
      return Row(
        children: [
          const CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage('assets/images/profil.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user?.name}',
                  style: const TextStyle(
                      fontSize: Constant.fontBig, fontWeight: FontWeight.w600),
                ),
                Text('${user?.email}',
                    style: const TextStyle(fontSize: Constant.fontSemiRegular)),
              ],
            ),
          ),
        ],
      );
    });
  }
}
