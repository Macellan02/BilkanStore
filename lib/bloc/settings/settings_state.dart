class SettingsState {
  final String language;
  final bool darkMode;

  final bool isLoggedIn;
  final Map<String, dynamic> userData;

  SettingsState({
    this.language = "en",
    this.darkMode = false,
    this.isLoggedIn = false,
    this.userData = const {},
  });
}
