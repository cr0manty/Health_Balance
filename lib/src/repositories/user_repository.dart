import 'package:health_balance/src/models/user.dart';
import 'package:health_balance/src/models/user_data.dart';
import 'package:hive/hive.dart';

class UserRepository {
  const UserRepository();
  static const _boxName = 'user_repo';

  Future<User> getUser() async {
    final Box box = await Hive.openBox(_boxName);
    final User user = box.get('user');
    await box.close();

    return user;
  }

  Future<bool> createUser(User user) async {
    final Box box = await Hive.openBox(_boxName);
    await box.put('user', user);
    await box.close();

    return user != null;
  }

  Future<User> updateUserData(UserData userData) async {
    final Box box = await Hive.openBox(_boxName);
    final User user = box.get('user');

    final User newUser = user.copyWith(userData: userData);
    await box.put('user', newUser);

    await box.close();
    return newUser;
  }

  Future<void> deleteUser() async {
    final Box box = await Hive.openBox(_boxName);
    await box.delete('user');
    await box.close();
  }
}
