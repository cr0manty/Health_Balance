import 'package:health_balance/src/models/user/user.dart';
import 'package:health_balance/src/models/user/user_data.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _registerAdapters();
  }

  static void _registerAdapters() {
    Hive.registerAdapter<User>(UserAdapter());
    Hive.registerAdapter<UserData>(UserDataAdapter());
    Hive.registerAdapter<Gender>(GenderAdapter());
  }
}
