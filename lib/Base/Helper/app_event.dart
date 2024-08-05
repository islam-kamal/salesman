abstract class AppEvent {}

class click extends AppEvent{
  click();
}

class AppDrawrEvent extends AppEvent{
  final String drawerType;
  AppDrawrEvent({required this.drawerType});

}






