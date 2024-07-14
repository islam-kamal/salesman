import 'package:water/Base/network/network-mappers.dart';

abstract class AppState {
  get model =>null;
}
class Start extends AppState{
}

class Loading extends AppState{
  Loading();
}

class Done extends AppState{
  Mappable? model;
  Done({this.model});

  @override
  String toString() {
    return model!.toString();
  }

}

class ErrorLoading extends AppState{
  String? message;
  ErrorLoading({this.message});
  @override
  String toString() {
    return message!;
    // TODO: implement toString
  }

}
