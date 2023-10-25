import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';
import 'package:with_firebase_flutter_uidesign1/views/loging_screen.dart';
import 'package:with_firebase_flutter_uidesign1/views/registar_screen.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/welcome_getstart.png"),
              Column(
                children: [
                  Text(
                    "Discover Your \nDream Job here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appColors.prymarey,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Explore all the existing job roles based on your\ninterest and study major",
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Loging_Screen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: appColors.prymarey,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: appColors.prymarey.withOpacity(.2),
                                blurRadius: 3,
                              )
                            ]),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Register_Screen()));
                      },
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
