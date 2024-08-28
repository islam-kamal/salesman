import 'package:water/Authentication/domain/entities/login_entity.dart';

abstract class AppEvent {}

class click extends AppEvent{
  click();
}

class AppDrawrEvent extends AppEvent{
  final String drawerType;
  AppDrawrEvent({required this.drawerType});

}

class loginClickEvent extends AppEvent{
  final LoginEntity  loginEntity;
  loginClickEvent({required this.loginEntity});
}

class GetProfileEvent extends AppEvent{}




