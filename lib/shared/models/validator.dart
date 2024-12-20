class Validator {
  static String? validPassword(String? value) {
    if (value == null || value.isEmpty)
      return "Es muss etwas angegeben werden!";
    if (value.length < 6) return "Mindestens 6 Zeichen";

    bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
    bool hasDigits = value.contains(RegExp(r'[0-9]'));
    bool hasLowercase = value.contains(RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (!hasUppercase) return "mindestens ein Großbuchstabe";
    if (!hasDigits) return "mindestens eine Zahl";
    if (!hasLowercase) return "mindestens ein Kleinbuchstabe";
    if (!hasSpecialCharacters) return "mindestens ein Sonderzeichen";

    return null;
  }

  static String? validUsername(String? value) {
    if (value == null || value.isEmpty)
      return "Es muss etwas angegeben werden!";

    //if (value.contains(other))

    bool hasBlankSpace = value.contains(" ");
    bool hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (value.length < 6) return "Mindestens 6 Zeichen";
    if (hasSpecialCharacters) return "Keine Sonderzeichen erlaubt";
    if (hasBlankSpace) return "Keine Leerzeichen erlaubt";

    return null;
  }

  static String? validMail(String? value) {
    if (value == null || value.isEmpty)
      return "Es muss etwas angegeben werden!";
    bool emailValid = value.contains(RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));

    if (!emailValid) return "Gültige E-Mail eingeben";
    return null;
  }
}
