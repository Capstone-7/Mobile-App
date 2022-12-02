import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/change_password_screen/for_after_login_register/views/change_password_after_login_register_screen.dart';
import 'package:payoll/views/edit_account_screen/views/edit_account_screen.dart';
import 'package:payoll/views/profile_screen/widgets/account_profile.dart';
import 'package:payoll/views/profile_screen/widgets/app_bar_profile.dart';
import 'package:payoll/views/profile_screen/widgets/list_info.dart';
import 'package:payoll/views/profile_screen/widgets/list_menu.dart';
import 'package:payoll/views/profile_screen/widgets/profile_logout_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appBarProfile(context),
        body: ListView(padding: const EdgeInsets.all(24.0), children: [
          AccountProfile(),
          SizedBox(
            height: size.height * 0.025,
          ),
          Text(
            'Menu',
            style: TextStyle(
                fontSize: Constant.fontBig, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          ListMenu(
            onTapMenu1: () {
              Navigator.pushNamed(context, EditAccountScreen.routeName);
            },
            onTapMenu2: () {
              Navigator.pushNamed(context, ChangePasswordAfterLoginRegisterScreen.routeName);
            },
            onTapMenu3: () {},
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Text(
            'Info',
            style: TextStyle(
                fontSize: Constant.fontBig, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          ListInfo(
            onTapInfo1: () {},
            onTapInfo2: () {},
            onTapInfo3: () {},
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          ProfileLogoutButton(
            onPressed: () {},
          )
        ]));
  }
}
