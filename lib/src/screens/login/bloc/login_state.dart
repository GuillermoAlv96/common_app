

abstract class LoginState {
  const LoginState();
}

class LoginInitialState extends LoginState{}

class LoginLoadedState extends LoginState{}

class LoginFailureState extends LoginState{}