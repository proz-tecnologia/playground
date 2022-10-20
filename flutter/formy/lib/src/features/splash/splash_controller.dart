import 'package:formy/src/features/splash/splash_states.dart';
import 'package:formy/src/shared/keys/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController {
  Future<SplashStates> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    final isAuthenticated =
        prefs.getBool(SharedPreferencesKeys.userLogged) ?? false;

    if (isAuthenticated) {
      return SplashStateAuthenticated();
    } else {
      return SplashStateUnAuthenticated();
    }
  }
}
