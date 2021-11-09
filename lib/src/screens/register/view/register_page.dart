import 'package:flutter/material.dart';
import 'package:login/src/services/auth.dart';

class RegisterPage extends StatefulWidget {
  final String route = 'register';

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String userName = '';
  String email = '';
  String phone = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Theme.of(context).focusColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 50),
                    //UserName
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        validator: (val) => val != null && val.isNotEmpty
                            ? null
                            : 'Introduce Usuario',
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                        onChanged: (val) => userName = val,
                      ),
                    ),
                    SizedBox(height: 10),
                    //Email
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                        validator: (val) => val != null && val.isNotEmpty
                            ? null
                            : 'Introduce Email',
                        obscureText: true,
                        onChanged: (val) => email = val,
                      ),
                    ),
                    SizedBox(height: 10),
                    //Phone
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                        validator: (val) => val != null && val.length == 9
                            ? null
                            : 'Introduce Número de telefono',
                        obscureText: true,
                        onChanged: (val) {},
                      ),
                    ),
                    SizedBox(height: 10),
                    //Password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          errorText: 'testingerror',
                          fillColor: Colors.brown,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                        validator: (val) => val != null && val.length > 6
                            ? null
                            : 'Introduce Contraseña',
                        obscureText: true,
                        onChanged: (val) => password = val,
                      ),
                    ),
                    SizedBox(height: 10),
                    //Password

                    SizedBox(height: 10),

                    ElevatedButton(
                        onPressed: () async {
                          print(email);
                          print(password);
                          print(userName);
                          dynamic result = await _auth.registerWithEmailAndPassword(email: email, password: password);
                          setState(() {});
                         if(result == null) return;
                        },
                      child: Text('Registrar'),
                    )
                  ],
                ),
              ),
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
}
