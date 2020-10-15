import 'package:delo2/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';

// TODO change to Statefull widget
class PasswordFieldWidget extends TextFieldWidget {

  PasswordFieldWidget(String hintText, IconData preffixIconDate,
      IconData suffixIconDate, bool obscureText, Function onChanged)
      : super(
            hintText, preffixIconDate, suffixIconDate, obscureText, onChanged);

  @override
  onTapSuffixIcon() {
    model.isVisible = !model.isVisible;
    }
}
