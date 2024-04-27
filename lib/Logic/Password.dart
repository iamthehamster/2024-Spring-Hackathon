import 'package:crypto/crypto.dart';
class Password{
  void main() {
    String password = 'example123';
    String encoded = encodePassword(password);

    String passwordToCheck = 'example123';
    String encodedCheck = encodePassword(passwordToCheck);

    print(encoded);
    print(encodedCheck);

    print(isPasswordCorrect(encoded, encodedCheck));
  }

  String encodePassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);

    return digest.toString();
  }

  bool isPasswordCorrect(String encoded, String input) {
    return (encoded == input);
  }
}
}