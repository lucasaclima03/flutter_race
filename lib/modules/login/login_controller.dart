import 'package:flutter/widgets.dart';
import 'package:flutter_race/shared/utils/app_state.dart';

class LoginController extends ChangeNotifier {
  var state = AppState.empty();
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  void onChange({String? email, String? password}) {
    _email = email ?? _email;
    _password = password ?? _password;
  }

  bool validate(){
    final form = formKey.currentState!;
    if(form.validate()){
      form.save();
      return true;
    }
    return false;
  }

  void login(){
    if(validate()){
      print("Pode chamar o backend");
    }
  }
}