import 'package:flutter/material.dart';
import 'package:with_firebase_flutter_uidesign1/Global_Widgets/custome_button.dart';
import 'package:with_firebase_flutter_uidesign1/Global_Widgets/custome_widgets.dart';
import 'package:with_firebase_flutter_uidesign1/helper_widget/Custome_Textfield.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';
import 'package:with_firebase_flutter_uidesign1/views/bottom_napbar.dart';
import 'package:with_firebase_flutter_uidesign1/views/registar_screen.dart';

class Loging_Screen extends StatelessWidget {
  const Loging_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Login here",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                      color: appColors.prymarey,
                    ),
                  ),
                  Text(
                    "Welcome back you’ve \nbeen missed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CustomeTextfield(
                    hintText: "Email",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomeTextfield(
                    hintText: "Password",
                    secured: true,
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {}, child: Text("Forgot your password?")),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeButton(
                    buttonTitle: 'Log in',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Bottom_BarScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Register_Screen(),
                          ));
                    },
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
