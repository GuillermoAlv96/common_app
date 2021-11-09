import 'package:flutter/material.dart';
import 'package:login/src/services/auth.dart';

class RegisterPage extends StatefulWidget {
  final String route = 'register';
  final bool email;
  final bool password;

  RegisterPage({
    this.email = true,
    this.password = true,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                  TextFormField(
                      key: Key('email'),
                      keyboardType: TextInputType.text,
                      decoration: _inPutDecoration(
                          labelText: 'Email', icon: Icon(Icons.email_outlined)),
                      style: _textStyle(),
                      onChanged: (val) {
                        setState(() => email = val);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      key: Key('password'),
                      keyboardType: TextInputType.text,
                      decoration: _inPutDecoration(
                          labelText: 'Password', icon: Icon(Icons.password)),
                      style: _textStyle(),
                      onChanged: (val) {
                        setState(() => password = val);
                      }),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      dynamic result = await _auth.registerWithEmailAndPassword(email: email, password: password);
                      setState(() {});
                    },
                    child: Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  _inPutDecoration({Color? fillColor, String? labelText, Widget? icon}) {
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
}
