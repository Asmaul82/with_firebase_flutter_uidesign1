import 'package:flutter/material.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';

class CustomeButton extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onTap;
  const CustomeButton({super.key, required this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appColors.prymarey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Center(
              child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white, fontSize: 19),
          )),
        ),
      ),
    );
  }
}
