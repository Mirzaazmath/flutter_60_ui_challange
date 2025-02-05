
import 'package:flutter/cupertino.dart';


class ShowDetailProvider with  ChangeNotifier{

  int _selectedIndex=-1;
  bool _isEnableShow=false;

  get selectedIndex=>_selectedIndex;
  get isEnableShow=>_isEnableShow;

  void showDetailOfIndex(int index,bool value){
    _selectedIndex=index;
    _isEnableShow=value;
    notifyListeners();

  }

}