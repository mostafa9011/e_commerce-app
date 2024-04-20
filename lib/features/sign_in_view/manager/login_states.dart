sealed class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccsessState extends LoginStates {}

class LoginFailureState extends LoginStates {}
