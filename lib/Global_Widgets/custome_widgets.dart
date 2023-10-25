import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

PreferredSizeWidget customAppBar({
  String? title,
  List<Widget>? action,
  Widget? isleading,
  required BuildContext context,
}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: isleading ??
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
    title: title != null
        ? Text(
            title,
            style: TextStyle(color: Colors.black),
          )
        : null,
    actions: action,
  );
}
