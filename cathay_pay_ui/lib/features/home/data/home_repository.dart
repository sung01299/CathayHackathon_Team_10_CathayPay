import 'package:cathay_pay_ui/features/home/service/home_api_service.dart';
import 'package:cathay_pay_ui/models/User.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final homeAPIService = ref.read(homeAPIServiceProvider);
  return HomeRepository(homeAPIService);
});

class HomeRepository {
  HomeRepository(this.homeAPIService);

  final HomeAPIService homeAPIService;

  Future<User> getUser(String userId) async {
    return homeAPIService.getUser(userId);
  }
}