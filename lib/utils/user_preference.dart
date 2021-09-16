import 'package:hive/hive.dart';

class UserPreference {
  static void setUserId(String userId) {
    final box = Hive.box('preferences');
    box.put('user_id', userId);
  }

  static String getUserId() {
    final box = Hive.box('preferences');
    return box.get('user_id');
  }

  static void setWalletId(String walletId) {
    final box = Hive.box('preferences');
    box.put('wallet_id', walletId);
  }

  static String getWalletId() {
    final box = Hive.box('preferences');
    return box.get('wallet_id');
  }

  static void setWalletAddress(String address) {
    final box = Hive.box('preferences');
    box.put('address', address);
  }

  static String getWalletAddress() {
    final box = Hive.box('preferences');
    return box.get('address');
  }
}
