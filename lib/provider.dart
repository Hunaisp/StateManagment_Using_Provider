import 'package:flutter/cupertino.dart';

class A with ChangeNotifier{
String name='Tom';
  void changeValue(){
    name='Arun';
    notifyListeners();
  }
}