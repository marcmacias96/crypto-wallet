import 'package:encrypt/encrypt.dart';

String encryptPassword(String input) {
  final key = Key.fromLength(32);
  final iv = IV.fromLength(8);
  final encrypter = Encrypter(Salsa20(key));

  final encrypted = encrypter.encrypt(input, iv: iv);

  return encrypted.base64;
}

String decriptPassword(String input) {
  final key = Key.fromLength(32);
  final iv = IV.fromLength(8);
  final encrypter = Encrypter(Salsa20(key));

  final decrypted = encrypter.decrypt(Encrypted.from64(input), iv: iv);

  return decrypted;
}
