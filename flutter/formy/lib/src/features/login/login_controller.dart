import 'package:formy/src/features/login/login_states.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/keys/shared_preferences_keys.dart';

class LoginController {
  Future<LoginStates> authenticate(String user, String pass) async {
    final prefs = await SharedPreferences.getInstance();

    //chamar , no futuro, um repository ou OUTRA RESPONSABILIDADE!
    if (user == 'luanftg' && pass == '123') {
      prefs.setBool(SharedPreferencesKeys.userLogged, true);
      print('Sucess!');
      return LoginStateSucess();
    } else {
      print('Falhou"');
      return LoginStateError(message: 'Senha inválida!');
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(SharedPreferencesKeys.userLogged);
    print('removido!');
  }
}
