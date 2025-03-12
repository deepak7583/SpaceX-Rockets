import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_rockets/core/api/api_service.dart';
import 'package:spacex_rockets/core/api/dio_client.dart';
import 'package:spacex_rockets/core/database/database_helper.dart';
import 'package:spacex_rockets/models/rocket_model.dart';
import 'package:spacex_rockets/repository/rocket_repository.dart';


final dioClient = DioClient();
final apiService = ApiService(dioClient.dio);
final databaseHelper = DatabaseHelper();
final rocketRepository = RocketRepository(apiService: apiService, dbHelper: databaseHelper);

/// Provider for fetching rockets
final rocketsProvider = FutureProvider<List<RocketModel>>((ref) async {
  return await rocketRepository.getRockets();
});

/// Provider for fetching a single rocket
final rocketDetailsProvider = FutureProvider.family<RocketModel, String>((ref, id) async {
  return await rocketRepository.getRocketDetails(id);
});
