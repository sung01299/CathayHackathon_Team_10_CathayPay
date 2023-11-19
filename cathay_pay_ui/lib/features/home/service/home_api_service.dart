import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cathay_pay_ui/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeAPIServiceProvider = Provider<HomeAPIService>((ref) {
  final service = HomeAPIService();
  return service;
});

class HomeAPIService {
  HomeAPIService();

  Future<User> getUser(String userId) async {
    try {
      final request = ModelQueries.get(
        User.classType,
        UserModelIdentifier(id: userId),
      );
      final response = await Amplify.API.query(request: request).response;

      final user = response.data!;
      return user;
    } on Exception catch (error) {
      safePrint('getUser failed: $error');
      rethrow;
    }
  }
}