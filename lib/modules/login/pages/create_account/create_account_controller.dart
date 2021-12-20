import 'package:flutter/widgets.dart';
import 'package:flutter_race/shared/utils/app_state.dart';

class CreateAccountController extends ChangeNotifier {
  AppState state = AppState.empty();

  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _name = "";

  void onChange({String? email, String? password, String? name}) {
    _email = email ?? _email;
    _password = password ?? _password;
    _name = name ?? _name;
  }

  bool validate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void update(AppState state) {
    this.state = state;
    notifyListeners();
  }

  Future<void> create() async {
    if (validate()) {
      try {
        update(AppState.loading());
        await Future.delayed(Duration(seconds: 3));
        update(AppState.success<String>("Deu certo"));
      } catch (e) {
        update(AppState.error("Não foi possível criar conta"));
      }
    }
  }
}
