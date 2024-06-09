import 'package:bilkan_store/bloc/settings/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(super.initialState);

  changeLanguage(String lang) async {
    final newState = SettingsState(
      language: lang,
      darkMode: state.darkMode,
      isLoggedIn: state.isLoggedIn,
      userData: state.userData,
    );
    emit(newState);

    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setString("language", lang);
  }

  changeThemeMode(bool darkMode) async {
    final newState = SettingsState(
      language: state.language,
      darkMode: darkMode,
      isLoggedIn: state.isLoggedIn,
      userData: state.userData,
    );
    emit(newState);
    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setBool("darkMode", darkMode);
  }

  userLogin(Map<String, dynamic> userData) {
    final newState = SettingsState(
      language: state.language,
      darkMode: state.darkMode,
      isLoggedIn: true,
      userData: userData,
    );
    emit(newState);
  }

  userLogout() {
    userLogin(Map<String, dynamic> userData) {
      final newState = SettingsState(
        language: state.language,
        darkMode: state.darkMode,
        isLoggedIn: false,
        userData: const {},
      );
      emit(newState);
    }
  }
}
