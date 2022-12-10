import 'package:flutter/material.dart';
import 'package:payoll/views/edit_account_screen/widget/app_bar_edit_account.dart';
import '../../../utils/constant.dart';
import '../widget/save_edit_account_button.dart';

class EditAccountScreen extends StatefulWidget {
  static String routeName = 'edit-account-screen';

  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController namedController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarEditAccount(context),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color(Constant.mainColor),
            height: size.height * 0.200,
            width: size.width * 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                  radius: 50.0,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ubah Foto',
                      style: TextStyle(
                          fontSize: Constant.fontSemiBig, color: Colors.white),
                    ))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Nama Lengkap',
                            style: TextStyle(
                                fontSize: Constant.fontSemiRegular,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: size.height * 0.018,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor:
                                    Color(Constant.greyTextFieldLoginRegister),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(Constant
                                            .greyOutlineBorderTextField))),
                                hintText: 'George Lee',
                                hintStyle: TextStyle(),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(Constant
                                            .greyOutlineBorderTextField))),
                                contentPadding: EdgeInsets.all(12.0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            // validator: (String? value) {
                            //   if (value!.isEmpty) {
                            //     return 'Please, fill password field!';
                            //   } else {
                            //     return null;
                            //   }
                            // }
                          ),
                          SizedBox(
                            height: size.height * 0.018,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                                fontSize: Constant.fontSemiRegular,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: size.height * 0.018,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor:
                                    Color(Constant.greyTextFieldLoginRegister),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(Constant
                                            .greyOutlineBorderTextField))),
                                hintText: 'Lee.George@mail.com',
                                hintStyle: TextStyle(),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(Constant
                                            .greyOutlineBorderTextField))),
                                contentPadding: EdgeInsets.all(12.0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            // validator: (String? value) {
                            //   const String expression = "[a-zA-Z0-9+._%-+]{1,256}"
                            //       "\\@"
                            //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}"
                            //       "("
                            //       "\\."
                            //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}"
                            //       ")+";
                            //   final RegExp regExp = RegExp(expression);
                            //   return !regExp.hasMatch(value!)
                            //       ? "Please, input valid email!"
                            //       : null;
                            // },
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          SaveEditAccountButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [

//             Expanded(
//               child: Form(
//                   key: formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Text(
//                         'Nama Lengkap',
//                         style: TextStyle(
//                             fontSize: Constant.fontSemiRegular, fontWeight: FontWeight.w600),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.018,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Color(Constant.greyTextFieldLoginRegister),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(Constant.greyTextField))),
//                             hintText: 'George Lee',
//                             hintStyle: TextStyle(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(0xFFE9EBEF))),
//                             contentPadding: EdgeInsets.all(12.0),
//                             border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)))),
//                         // validator: (String? value) {
//                         //   if (value!.isEmpty) {
//                         //     return 'Please, fill password field!';
//                         //   } else {
//                         //     return null;
//                         //   }
//                         // }
//                       ),
//                       SizedBox(
//                         height: size.height * 0.018,
//                       ),
//                       Text(
//                         'Email',
//                         style: TextStyle(
//                             fontSize: Constant.fontSemiRegular, fontWeight: FontWeight.w600),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.018,
//                       ),
//                       TextFormField(
//                         controller: emailController,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Color(Constant.greyTextFieldLoginRegister),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(Constant.greyTextField))),
//                             hintText: 'Lee.George@mail.com',
//                             hintStyle: TextStyle(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     BorderSide(color: Color(Constant.greyTextField))),
//                             contentPadding: EdgeInsets.all(12.0),
//                             border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)))),
//                         // validator: (String? value) {
//                         //   const String expression = "[a-zA-Z0-9+._%-+]{1,256}"
//                         //       "\\@"
//                         //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}"
//                         //       "("
//                         //       "\\."
//                         //       "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}"
//                         //       ")+";
//                         //   final RegExp regExp = RegExp(expression);
//                         //   return !regExp.hasMatch(value!)
//                         //       ? "Please, input valid email!"
//                         //       : null;
//                         // },
//                       ),

//                     ],
//                   )),
//             ),
//             SaveEditAccountButton(
//                         onPressed: () {},
//                       ),
//           ],
//         ),
//       ),
