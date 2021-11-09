

abstract class LoginEvent {
  const LoginEvent();
}


class LoginInitialEvent extends LoginEvent{}

class LoginLoadedEvent extends LoginEvent{}

class LoginFailureEvent extends LoginEvent{}