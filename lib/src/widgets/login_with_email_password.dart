import 'package:flutter/material.dart';

class LoginWithEmailAndPassword extends StatefulWidget {
  final bool email;
  final bool password;
  final bool rePassword;
  final bool phone;

  LoginWithEmailAndPassword(
      {this.email = true,
      this.password = true,
      this.rePassword = true,
      this.phone = true});

  @override
  State<LoginWithEmailAndPassword> createState() =>
      _LoginWithEmailAndPasswordState();
}

class _LoginWithEmailAndPasswordState extends State<LoginWithEmailAndPassword> {
  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';
    var rePassword = '';
    var phone = '';

    return Dialog(
      child: Container(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, left: 30, right: 30),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(25)),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTextFormField(variable: email, key: 'email', labelText: 'Email',icon: Icon(Icons.email_outlined)),
                SizedBox(height: 20),
                widget.phone == true
                    ? buildTextFormField(
                        variable: phone, key: 'phone', labelText: 'Phone',icon: Icon(Icons.phone_outlined))
                    : Container(),
                SizedBox(height: 20),
                buildTextFormField(
                    variable: password, key: 'password', labelText: 'Password',icon: Icon(Icons.password)),
                SizedBox(height: 20),
                widget.rePassword == true
                    ? buildTextFormField(
                        variable: rePassword, key: 'rePassword', labelText: 'Confirm Password',icon: Icon(Icons.password))
                    : Container(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: _buttonText(text: 'Close')),
                    ElevatedButton(
                        onPressed: () {}, child: _buttonText(text: 'Login')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildTextFormField(
      {var variable, required String key, required String labelText, Widget? icon }) {
    return TextFormField(
      key: Key(key),
      keyboardType: TextInputType.text,
      decoration: _inPutDecoration(labelText: labelText,icon: icon ),

      style: _textStyle(),
      onChanged: (val) {
        setState(() => variable = val);
      },
    );
  }

  _inPutDecoration({Color? fillColor, String? labelText ,Widget? icon })  {
    return InputDecoration(
        prefixIcon: icon,
        fillColor: fillColor ?? Theme.of(context).cardColor,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          borderSide: BorderSide(
            width: 1.0,
          ),
        ),
        labelText: labelText,
        labelStyle:
            TextStyle(color: Theme.of(context).primaryColor, fontSize: 14.0));
  }

  _textStyle() {
    return TextStyle(fontSize: 14.0, color: Theme.of(context).primaryColor);
  }

  _buttonText({required String text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
    );
  }
}
