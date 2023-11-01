import 'package:initapp/models/user.dart';
import 'package:initapp/models/slot.dart';

import '../app/app.locator.dart';
import 'http_service.dart';

class ApiService {
  final _httpService = locator<HttpService>();

  Future<User> fetchService() async {
    final user = await _httpService.getHttp(route: 'worktasks/');
    print('User Data ${user.toString()}');

    return User.fromJson(user as Map<String, dynamic>);
  }

  Future<Slots> getSlots() async {
    final slot = await _httpService.getHttp(route: 'worktasks/');
    print('User Data ${slot.toString()}');

    return Slots.fromJson(slot as Map<String, dynamic>);
  }
}
