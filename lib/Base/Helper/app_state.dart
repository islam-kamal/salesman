import 'package:water/Authentication/data/models/login_model.dart';
import 'package:water/Profile/data/models/profile_model.dart';

abstract class AppState {
  get model =>null;
}
class Start extends AppState{
}

class Loading extends AppState{
  Loading();
}
class ErrorLoading extends AppState{
  String? message;
  ErrorLoading({this.message});
  @override
  String toString() {
    return message!;
  }

}

class LoginDone extends AppState{
  LoginModel? model;
  LoginDone({this.model});

  @override
  String toString() {
    return model!.toString();
  }

}

class LoginErrorLoading extends AppState{
  String? message;
  LoginErrorLoading({this.message});
  @override
  String toString() {
    return message!;
    // TODO: implement toString
  }

}


class GetProfileDone extends AppState{
  final ProfileModel? profileModel;
  GetProfileDone({this.profileModel});
}

class GetProfileErrorLoading extends AppState{
  final String? message;
  GetProfileErrorLoading({this.message});
}

class AppDrawerDoneState extends AppState{
  final String drawerType ;
  AppDrawerDoneState({required this.drawerType});
}
