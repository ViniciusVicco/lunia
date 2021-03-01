import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.bold = false,
      this.hint,
      this.textInputType,
      this.inputFormatters,
      this.validator,
      this.errorText,
      this.sulfixIcon,
      this.hidePassword});

  final bool bold;
  final String hint;
  final Widget sulfixIcon;
  final TextInputType textInputType;
  final List<TextInputFormatter> inputFormatters;
  final FormFieldValidator<String> validator;
  final String errorText;
  final bool hidePassword;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: '',
      validator: validator,
      builder: (state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                obscureText: hidePassword ?? false,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: bold ? FontWeight.bold : FontWeight.w500,
                ),
                decoration: InputDecoration(
                  suffixIcon: sulfixIcon,
                  alignLabelWithHint: true,
                  hintText: hint,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
                keyboardType: textInputType,
                inputFormatters: inputFormatters,
                onChanged: (text) {
                  state.didChange(text);
                },
              ),
              Offstage(
                offstage: !state.hasError,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                      Text(
                        '$errorText',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
