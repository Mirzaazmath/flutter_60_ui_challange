
import 'package:flutter/cupertino.dart';

/// this CounterProvider is used for updating our counter widget
class CounterProvider with  ChangeNotifier{
  /// here we are creating the _count variable and assigning the value =0
  int _count=0;
  /// here we are creating the getter to get our value when ever we call
  get count=>_count;

  /// this is the Increment method
  void increaseCount(){
    /// increasing the value with 1
    _count++;
    /// this  notifyListeners method tell every Lister of this call to update the state with this value
    notifyListeners();

  }
  /// this is the Increment method
  void decreaseCount(){
    /// increasing the value with 1
    _count--;
    /// this  notifyListeners method tell every Lister of this call to update the state with this value
    notifyListeners();

  }

}