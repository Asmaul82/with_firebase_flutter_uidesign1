import 'dart:html';

import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:with_firebase_flutter_uidesign1/Global_Widgets/custome_button.dart';
import 'package:with_firebase_flutter_uidesign1/Global_Widgets/custome_widgets.dart';
import 'package:with_firebase_flutter_uidesign1/helper_widget/Custome_Textfield.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';
import 'package:with_firebase_flutter_uidesign1/views/loging_screen.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        color: appColors.prymarey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Create an account so you can explore all the existing jobs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    CustomeTextfield(hintText: 'Email'),
                    SizedBox(
                      height: 15,
                    ),
                    CustomeTextfield(
                      hintText: 'Password',
                      secured: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomeTextfield(
                      hintText: 'Confurm Password',
                      secured: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomeButton(buttonTitle: 'Sine up'),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Loging_Screen(),
                            ));
                      },
                      child: Text(
                        'Already Have An Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
