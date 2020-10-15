import 'package:delo2/Model/home_model.dart';
import 'package:delo2/shared/globals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// TODO change to Statefull widget
class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData preffixIconDate;
  final IconData suffixIconDate;
  final bool obscureText;
  final Function onChanged;

  var model;

  TextFieldWidget(this.hintText, this.preffixIconDate, this.suffixIconDate,
      this.obscureText, this.onChanged);

  @protected
  onTapSuffixIcon() {}

  @override
  Widget build(BuildContext context) {
    model = Provider.of<HomeModel>(context);

    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      style: TextStyle(color: Global.mediumBlue, fontSize: 14),
      cursorColor: Global.mediumBlue,
      decoration: InputDecoration(
          labelStyle: TextStyle(color: Global.mediumBlue),
          focusColor: Global.mediumBlue,
          labelText: hintText,
          prefixIcon: Icon(
            preffixIconDate,
            size: 18,
            color: Global.mediumBlue,
          ),
          suffixIcon: GestureDetector(
            onTap: onTapSuffixIcon,
            child: Icon(
              suffixIconDate,
              size: 18,
              color: Global.mediumBlue,
            ),
          ),
          filled: true,
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Global.mediumBlue))),
    );

    throw UnimplementedError();
  }
}
