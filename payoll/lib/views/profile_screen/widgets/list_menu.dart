import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key, required this.onTapMenu1, required this.onTapMenu2, required this.onTapMenu3});

  final VoidCallback onTapMenu1;
  final VoidCallback onTapMenu2;
  final VoidCallback onTapMenu3;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 7.0,
                spreadRadius: 5,
                offset: Offset(0, 3),
              ),
              ],
          ),
          height: size.height * 0.300,
          width: 365,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.025,
              ),
              ListTile(
                leading: Container(
                    height: size.height * 0.025,
                    width: 25,
                    child: Image.asset('assets/icons/user-edit.png')),
                title: Text('Pengaturan Akun'),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: onTapMenu1,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              ListTile(
                leading: Container(
                    height: size.height * 0.025,
                    width: 25,
                    child: Image.asset('assets/icons/lock.png')),
                title: Text('Ubah Kata sandi'),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: onTapMenu2,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              ListTile(
                leading: Container(
                    height: size.height * 0.025,
                    width: 25,
                    child: Image.asset('assets/icons/star.png')),
                title: Text('Reward Poin'),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: onTapMenu3,
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
            ],
          ),
        );
  }
}