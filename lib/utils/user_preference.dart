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
}
