import 'package:flutter/material.dart';
import 'package:login/src/widgets/login_with_email_password.dart';
import 'package:login/src/managers/navigation_manager.dart';
import 'package:login/src/services/auth.dart';

class LoginPage extends StatefulWidget {
  final String route = 'login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/login.png"),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            "Iniciar Sesión",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'assets/fonts/Inter-Bold.tff'),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Al usar nuestros servicios estás aceptando nuestros Términos y nuestra Declaración de privacidad",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'assets/fonts/Inter-Bold.tff'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return LoginWithEmailAndPassword(rePassword: false, phone: true);
                    },
                  );
                },
                child: commonLogin(context, 'Login with Email'),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return LoginWithEmailAndPassword(
                          rePassword: false, phone: true);
                    },
                  );
                },
                child: commonLogin(context, 'Login with Phone'),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return LoginWithEmailAndPassword(
                          rePassword: false, phone: true);
                    },
                  );
                },
                child: commonLogin(context, 'Login with ...'),
              ),
              const SizedBox(height: 20),
              const Text('¿Aún no tienes cuenta?'),
              TextButton(
                onPressed: () async {
                  NavigationManager().showRegister(context);
                  // dynamic result = await _auth.signInAnon();
                  // if (result == null) return;
                },
                child: const Text('Crear Cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  commonLogin(BuildContext context, String text) => Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(text, style: Theme.of(context).textTheme.headline1),
        ),
      );
}
