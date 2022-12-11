import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/profile_provider.dart';
import '../../../utils/constant.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({super.key});

  @override
  State<AccountProfile> createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
          () {
        final provider = Provider.of<ProfileProvider>(context, listen: false);

        /// Fetch users data
        provider.fetchProfile();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, provider, _) {
        final user = provider.profileModel;
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profil.jpg'),
          ),
          title: Text(
            '${user?.name}',
            style: const TextStyle(
                fontSize: Constant.fontTitleProfile, fontWeight: FontWeight.w500),
          ),
          subtitle: Text('${user?.email}',
              style: const TextStyle(fontSize: Constant.fontSemiBig)),
        );
      }
    );
  }
}
