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

  // Future<List<Trip>> getTrips() {
  //   return tripsAPIService.getTrips();
  // }

  // Future<List<Trip>> getPastTrips() {
  //   return tripsAPIService.getPastTrips();
  // }

  // Future<void> add(Trip trip) async {
  //   return tripsAPIService.addTrip(trip);
  // }

  // Future<void> update(Trip updatedTrip) async {
  //   return tripsAPIService.updateTrip(updatedTrip);
  // }

  // Future<void> delete(Trip deletedTrip) async {
  //   return tripsAPIService.deleteTrip(deletedTrip);
  // }

  Future<User> getUser(String userId) async {
    return homeAPIService.getUser(userId);
  }
}