class TextFieldValidation {
  static String? studentIDValidation(String? studentID) {
    if (studentID == null || studentID.isEmpty) {
      return "Required";
    } else if (studentID.length < 6) {
      return "Enter valid ID";
    } else {
      return null;
    }
  }

  static String? passwordValidation(String? password) {
    if (password == null || password.isEmpty) {
      return "Required";
    } else if (password.length < 8) {
      return "Password must be at least 8 characters";
    } else if (password.length >= 16) {
      return "Your password is too long";
    } else {
      return null;
    }
  }

  static String? schoolIDValidation(String? schoolID) {
    if (schoolID == null || schoolID.isEmpty) {
      return "Required";
    } else if (schoolID.length < 6) {
      return "Enter valid ID";
    } else {
      return null;
    }
  }
}
